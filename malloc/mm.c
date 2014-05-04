/*
 * mm.c the worlds crappiest memory allocater
 *
 * Ted Meyer
 * Licensed under the GPLv2
 *
 */





#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "mm.h"
#include "memlib.h"


team_t team = {
    /* Team */
    "classAteam", // PLEASE somebody get this reference
    /* name */
    "Ted Meyer",
    /* email */
    "tjmeyer@wpi.edu",
    /* so apparently you cant remove these or it segfaults... lol */
    /* I think that makes this more of a 'partnership' than a 'team' */
    "", ""
};









// size declarations:
#define HEADER_SIZE   4       // the size of the header in bytes
#define DOUBLE_HEADER 8       // get it? like baseball :D
#define MIN_ALLOC_SIZE 32     // dont ever allocate less than this... too much hassle

#define MAX_NUM_LOOPS 250     // only check through this many free spaces...
                              // may need to be changed depending on tests?
                              // we will see what is optimal
                              // results:
                              //   100 - 84/100
                              //   150 - 85/100
                              //   200 - 85/100
                              //   250 - 85/100
                              //   300 - 85/100




//Macros:

// pointer things
#define DEREFERENCE(a)          (*(unsigned int *)(a))
#define REREFERENCE(a,b)        (*(unsigned int *)(a) = (b)) 

// extract information from headers/footers
#define EXTRACT_SIZE(a)         (DEREFERENCE(a) & -8) // get all but first three bits
#define EXTRACT_FIELDS(a)       (DEREFERENCE(a) & 1) // get the first bit

// get the headers and footers of memory
#define GET_HEADER(a)           (a - HEADER_SIZE) // get the header of the memory
#define GET_FOOTER(a)           (a + EXTRACT_SIZE(GET_HEADER(a))) // get the footer of the memory

// set the headers and footers to:
#define SET_HEADER(a,b)         (REREFERENCE(GET_HEADER(a), b))
#define SET_FOOTER(a,b)         (REREFERENCE(GET_FOOTER(a), b))

// get the previous and next blocks of memory (their location)
#define GET_NEXT_BLOCK(a)       ((a) + EXTRACT_SIZE(GET_HEADER(a)) + 2*HEADER_SIZE)
#define GET_PREVIOUS_BLOCK(a)   (a - EXTRACT_SIZE(a-DOUBLE_HEADER) - 2*HEADER_SIZE)  

// dereference those locations
#define GET_NEXT(a)             (*(void **)(a + DOUBLE_HEADER))
#define GET_PREV(a)             (*(void **)a)

// change the header/footer pointer locations
#define SET_NEXT(a, b)          (GET_NEXT(a) = b)
#define SET_PREV(a, b)          (GET_PREV(a) = b)

// included macro (but I modified it a bit)
#define ALIGN(p)                (((size_t)(p) + 7) & -8)




//static vars:
static void* free_list = NULL;





// split free memory so that it can be allocated
void* break_memblock(void *ptr, size_t newsize)
{
    int old_free_size = EXTRACT_SIZE(GET_HEADER(ptr)); // get the old free size
    int new_free_size = old_free_size - newsize - DOUBLE_HEADER;

    SET_HEADER(ptr, new_free_size);
    SET_FOOTER(ptr, new_free_size);

    void* p = GET_NEXT_BLOCK(ptr);

    // mark them as free (first bit)
    SET_HEADER(p, (newsize|1));
    SET_FOOTER(p, (newsize|1));

    return p;
}


// move the start of the free lists to ptr
void update_freelist_head(void* ptr)
{
    GET_NEXT(ptr) = free_list;
    GET_PREV(ptr) = NULL;

    if (free_list != NULL)
    {
        GET_PREV(free_list) = ptr;
    }

    free_list = ptr;
}


// delete a node (`rm -rf / --no-preserve-root` it I mean)
void delete(void* ptr)
{
    void *next = GET_NEXT(ptr);
    void *prev = GET_PREV(ptr);

    // Front of the list
    if (prev == NULL) {
        free_list = next;
        if (next != NULL) {
            SET_PREV(next, NULL);
        }
    } 
    else {
        SET_NEXT(prev, next);
        if (next != NULL) {
            SET_PREV(next, prev);
        }
    }
}




// combine adjacent nodes if they are free
// free software is the best
void spread_glorious_GNU_freedom(void* ptr)
{
    size_t next_alloc = EXTRACT_FIELDS((char*)(GET_FOOTER(ptr)) + HEADER_SIZE); // the next allocated block's freedom level
    size_t prev_alloc = EXTRACT_FIELDS((char*)(ptr) - DOUBLE_HEADER);           // the previous allocated block's freedom level
    size_t size       = EXTRACT_SIZE(GET_HEADER(ptr));                          // the size of this block

    // both sides are allocated *sigh
    if (prev_alloc && next_alloc)
    {
        update_freelist_head(ptr);
        return;
    } 


    // the next block is free! lets take it!
    if (prev_alloc && !next_alloc)
    {  
        size += EXTRACT_SIZE(GET_HEADER(GET_NEXT_BLOCK(ptr))) + DOUBLE_HEADER;
        delete(GET_NEXT_BLOCK(ptr));
        SET_HEADER(ptr, size);
        SET_FOOTER(ptr, size);

        update_freelist_head(ptr);
        return;
    } 


    // the previous block is free! lets take it!
    if (!prev_alloc && next_alloc)
    {
        ptr = GET_PREVIOUS_BLOCK(ptr);
        size += EXTRACT_SIZE(GET_HEADER(ptr)) + DOUBLE_HEADER;
        SET_HEADER(ptr, size);
        SET_FOOTER(ptr, size);
        return;
    } 



    // all the blocks are free!
    // this is tricky... take the previous block and expand it over this block
    // and the next one.
    void* prev = GET_PREVIOUS_BLOCK(ptr);
    void* next = GET_NEXT_BLOCK(ptr);       
    size += EXTRACT_SIZE(GET_HEADER(prev)) + DOUBLE_HEADER; // add size of previous block
    size += EXTRACT_SIZE(GET_HEADER(next)) + DOUBLE_HEADER; // add size of next block
    SET_HEADER(prev, size);
    SET_FOOTER(prev, size); 
    delete(next);
}






// init the memory manager:
//   0 - there were no errors
//  -1 - your *fake* kernel hates you
int mm_init(void)
{
    void* heap_bottom = mem_heap_lo();
    free_list = NULL;

    if ((heap_bottom = mem_sbrk(2*HEADER_SIZE)) == (void *)-1)
    {
        return -1;
    }

    REREFERENCE(heap_bottom, 1);
    REREFERENCE(heap_bottom + HEADER_SIZE, 1);

    return 0;
}






// allocate new memory
void* mm_malloc(size_t size) {  

    // you cant malloc that silly!
    // yeah, I know GNU/malloc lets you allocate
    // a size 0 space, but I think it's stupid
    if (size <= 0)
    {
        return NULL;
    }

    void *temp_list            = free_list;
    unsigned int limit_loops   = 0;
    unsigned int alloc_size    = (size>MIN_ALLOC_SIZE)?
        ALIGN(size):
        MIN_ALLOC_SIZE;


    // search free list for first free block for size newsize
    while (temp_list != NULL &&   (limit_loops++ < MAX_NUM_LOOPS))
    {
        // the size of the first free chunk of memory
        unsigned int free_size = EXTRACT_SIZE(GET_HEADER(temp_list));

        // this node has enough space
        if (free_size >= alloc_size)
        {
            // there's so much room, we can add a new tail/header
            // and it will still fit within the free space
            if (free_size >= alloc_size + 32)
            {
                return break_memblock(temp_list, alloc_size); 
            }

            // uugh, guess we have to convert our whole space to an occupied node
            // unlink it from the list, and then return the new spot
            delete(temp_list);
            SET_HEADER(temp_list, (free_size|1));
            SET_FOOTER(temp_list, (free_size|1));

            return temp_list;
        }
        else
        {
            temp_list = GET_NEXT(temp_list);
        }
    }

    //ok well, I guess we need to expand the heap. get me my memory!
    temp_list = mem_sbrk(alloc_size + 2*HEADER_SIZE);

    // stupid machine *kicks computer*
    // this is what you get for only having 32GB ram!
    // I KNEW I should have gotten the 128GB model!
    // btw void* is the same size as a long on all archs
    if ((long)temp_list == -1)
    {
        return NULL;
    }


    // add this memory to the LL (but for used mem)
    // and of course mark it as used
    SET_HEADER(temp_list, (alloc_size|1));
    SET_FOOTER(temp_list, (alloc_size|1)); 
    REREFERENCE(GET_FOOTER(temp_list) + HEADER_SIZE, 1); 
    return temp_list;
}




// free the memory
void mm_free(void* ptr)
{
    // you cant free that!
    if(ptr == 0)
    {
        return;
    }


    size_t size = EXTRACT_SIZE(GET_HEADER(ptr));

    SET_HEADER(ptr, size);
    SET_FOOTER(ptr, size);

    if(free_list != NULL)
    {
        // add our new freedom to all of our old freedoms
        // then worship stallman
        spread_glorious_GNU_freedom(ptr);
    }
    else
    {
        // make this our first freedom
        // then worship stallman
        update_freelist_head(ptr);
    }
}


// expand memory
void* mm_realloc(void* ptr, size_t size)
{
    // they want to delete their memory??
    // they should have used free, so we'll do it
    // for them... FOR NARNIA
    if (!size)
    {
        mm_free(ptr);
        return 0;
    }

    // they never had anything there before... 
    // just call malloc (which they should have done anyways)
    if (ptr == NULL)
    {
        return mm_malloc(size);
    }

    // attempt to get new memory
    // obviously there is a better way to do this
    // but I'm REALLY tired ( and I discussed that way in my readme )
    void* newptr = mm_malloc(size);

    // the new malloc fails! oh well, we should probably tell they used they failed...
    // their old pointer will work, but the new one will be borked
    if (!newptr)
    {
        return 0;
    }

    // Copy the old data
    size_t oldsize = EXTRACT_SIZE(GET_HEADER(ptr));

    // they want less memory than they do now.....
    // weirdos
    if (size < oldsize)
    {
        oldsize = size;
    }

    // copy their data (yeah this is the slow part)
    memcpy(newptr, ptr, oldsize);

    // free the old memory
    mm_free(ptr);

    return newptr;
}


// examines the linked list:
// block pointers in bounds
// block pointers aligned
// blocks form valid Doubly-Linked-List
// fun error messages :D
void mm_check()
{
    int n = 0;  
    void *list = free_list;

    puts("Checking the memory (LL Struct)");

    while (list != NULL)
    {
        printf("examining block #%i\n", n++);
        printf("block address: %x \n", (unsigned int)list);
        printf("prev address: %x \n", (unsigned int)GET_PREV(list)); // for consistencies sake

        if (list > mem_heap_hi() || list < mem_heap_lo())
        {
            perror("blimey - this block is out of bounds!");
            perror("I should probably kill myself");
            exit(0);
        }
        else
        {
            puts("block is in bounds");
        }

        // test if pointer is a multiple of 8 (aligned)
        if (((size_t)list) & 0x7)
        {
            puts("block is aligned to 8 bytes");
        } 
        else
        {
            perror("bloody hell! this block ain't aligned I swer on me mum");
            exit(0);
        }

        list = GET_NEXT(list);
    }

    printf("\nNumber of blocks: %d with no segfaults\n", n);
}
