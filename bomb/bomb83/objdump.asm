
bomb:     file format elf32-i386


Disassembly of section .init:

08048790 <_init>:
 8048790:	53                   	push   %ebx
 8048791:	83 ec 08             	sub    $0x8,%esp
 8048794:	e8 00 00 00 00       	call   8048799 <_init+0x9>
 8048799:	5b                   	pop    %ebx
 804879a:	81 c3 5b 38 00 00    	add    $0x385b,%ebx
 80487a0:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 80487a6:	85 c0                	test   %eax,%eax
 80487a8:	74 05                	je     80487af <_init+0x1f>
 80487aa:	e8 f1 00 00 00       	call   80488a0 <__gmon_start__@plt>
 80487af:	e8 9c 02 00 00       	call   8048a50 <frame_dummy>
 80487b4:	e8 47 1b 00 00       	call   804a300 <__do_global_ctors_aux>
 80487b9:	83 c4 08             	add    $0x8,%esp
 80487bc:	5b                   	pop    %ebx
 80487bd:	c3                   	ret    

Disassembly of section .plt:

080487c0 <read@plt-0x10>:
 80487c0:	ff 35 f8 bf 04 08    	pushl  0x804bff8
 80487c6:	ff 25 fc bf 04 08    	jmp    *0x804bffc
 80487cc:	00 00                	add    %al,(%eax)
	...

080487d0 <read@plt>:
 80487d0:	ff 25 00 c0 04 08    	jmp    *0x804c000
 80487d6:	68 00 00 00 00       	push   $0x0
 80487db:	e9 e0 ff ff ff       	jmp    80487c0 <_init+0x30>

080487e0 <fflush@plt>:
 80487e0:	ff 25 04 c0 04 08    	jmp    *0x804c004
 80487e6:	68 08 00 00 00       	push   $0x8
 80487eb:	e9 d0 ff ff ff       	jmp    80487c0 <_init+0x30>

080487f0 <fgets@plt>:
 80487f0:	ff 25 08 c0 04 08    	jmp    *0x804c008
 80487f6:	68 10 00 00 00       	push   $0x10
 80487fb:	e9 c0 ff ff ff       	jmp    80487c0 <_init+0x30>

08048800 <signal@plt>:
 8048800:	ff 25 0c c0 04 08    	jmp    *0x804c00c
 8048806:	68 18 00 00 00       	push   $0x18
 804880b:	e9 b0 ff ff ff       	jmp    80487c0 <_init+0x30>

08048810 <sleep@plt>:
 8048810:	ff 25 10 c0 04 08    	jmp    *0x804c010
 8048816:	68 20 00 00 00       	push   $0x20
 804881b:	e9 a0 ff ff ff       	jmp    80487c0 <_init+0x30>

08048820 <alarm@plt>:
 8048820:	ff 25 14 c0 04 08    	jmp    *0x804c014
 8048826:	68 28 00 00 00       	push   $0x28
 804882b:	e9 90 ff ff ff       	jmp    80487c0 <_init+0x30>

08048830 <__stack_chk_fail@plt>:
 8048830:	ff 25 18 c0 04 08    	jmp    *0x804c018
 8048836:	68 30 00 00 00       	push   $0x30
 804883b:	e9 80 ff ff ff       	jmp    80487c0 <_init+0x30>

08048840 <strcpy@plt>:
 8048840:	ff 25 1c c0 04 08    	jmp    *0x804c01c
 8048846:	68 38 00 00 00       	push   $0x38
 804884b:	e9 70 ff ff ff       	jmp    80487c0 <_init+0x30>

08048850 <gethostname@plt>:
 8048850:	ff 25 20 c0 04 08    	jmp    *0x804c020
 8048856:	68 40 00 00 00       	push   $0x40
 804885b:	e9 60 ff ff ff       	jmp    80487c0 <_init+0x30>

08048860 <getenv@plt>:
 8048860:	ff 25 24 c0 04 08    	jmp    *0x804c024
 8048866:	68 48 00 00 00       	push   $0x48
 804886b:	e9 50 ff ff ff       	jmp    80487c0 <_init+0x30>

08048870 <puts@plt>:
 8048870:	ff 25 28 c0 04 08    	jmp    *0x804c028
 8048876:	68 50 00 00 00       	push   $0x50
 804887b:	e9 40 ff ff ff       	jmp    80487c0 <_init+0x30>

08048880 <__memmove_chk@plt>:
 8048880:	ff 25 2c c0 04 08    	jmp    *0x804c02c
 8048886:	68 58 00 00 00       	push   $0x58
 804888b:	e9 30 ff ff ff       	jmp    80487c0 <_init+0x30>

08048890 <__memcpy_chk@plt>:
 8048890:	ff 25 30 c0 04 08    	jmp    *0x804c030
 8048896:	68 60 00 00 00       	push   $0x60
 804889b:	e9 20 ff ff ff       	jmp    80487c0 <_init+0x30>

080488a0 <__gmon_start__@plt>:
 80488a0:	ff 25 34 c0 04 08    	jmp    *0x804c034
 80488a6:	68 68 00 00 00       	push   $0x68
 80488ab:	e9 10 ff ff ff       	jmp    80487c0 <_init+0x30>

080488b0 <exit@plt>:
 80488b0:	ff 25 38 c0 04 08    	jmp    *0x804c038
 80488b6:	68 70 00 00 00       	push   $0x70
 80488bb:	e9 00 ff ff ff       	jmp    80487c0 <_init+0x30>

080488c0 <__libc_start_main@plt>:
 80488c0:	ff 25 3c c0 04 08    	jmp    *0x804c03c
 80488c6:	68 78 00 00 00       	push   $0x78
 80488cb:	e9 f0 fe ff ff       	jmp    80487c0 <_init+0x30>

080488d0 <write@plt>:
 80488d0:	ff 25 40 c0 04 08    	jmp    *0x804c040
 80488d6:	68 80 00 00 00       	push   $0x80
 80488db:	e9 e0 fe ff ff       	jmp    80487c0 <_init+0x30>

080488e0 <strcasecmp@plt>:
 80488e0:	ff 25 44 c0 04 08    	jmp    *0x804c044
 80488e6:	68 88 00 00 00       	push   $0x88
 80488eb:	e9 d0 fe ff ff       	jmp    80487c0 <_init+0x30>

080488f0 <__isoc99_sscanf@plt>:
 80488f0:	ff 25 48 c0 04 08    	jmp    *0x804c048
 80488f6:	68 90 00 00 00       	push   $0x90
 80488fb:	e9 c0 fe ff ff       	jmp    80487c0 <_init+0x30>

08048900 <setvbuf@plt>:
 8048900:	ff 25 4c c0 04 08    	jmp    *0x804c04c
 8048906:	68 98 00 00 00       	push   $0x98
 804890b:	e9 b0 fe ff ff       	jmp    80487c0 <_init+0x30>

08048910 <fopen@plt>:
 8048910:	ff 25 50 c0 04 08    	jmp    *0x804c050
 8048916:	68 a0 00 00 00       	push   $0xa0
 804891b:	e9 a0 fe ff ff       	jmp    80487c0 <_init+0x30>

08048920 <__errno_location@plt>:
 8048920:	ff 25 54 c0 04 08    	jmp    *0x804c054
 8048926:	68 a8 00 00 00       	push   $0xa8
 804892b:	e9 90 fe ff ff       	jmp    80487c0 <_init+0x30>

08048930 <__printf_chk@plt>:
 8048930:	ff 25 58 c0 04 08    	jmp    *0x804c058
 8048936:	68 b0 00 00 00       	push   $0xb0
 804893b:	e9 80 fe ff ff       	jmp    80487c0 <_init+0x30>

08048940 <socket@plt>:
 8048940:	ff 25 5c c0 04 08    	jmp    *0x804c05c
 8048946:	68 b8 00 00 00       	push   $0xb8
 804894b:	e9 70 fe ff ff       	jmp    80487c0 <_init+0x30>

08048950 <__fprintf_chk@plt>:
 8048950:	ff 25 60 c0 04 08    	jmp    *0x804c060
 8048956:	68 c0 00 00 00       	push   $0xc0
 804895b:	e9 60 fe ff ff       	jmp    80487c0 <_init+0x30>

08048960 <gethostbyname@plt>:
 8048960:	ff 25 64 c0 04 08    	jmp    *0x804c064
 8048966:	68 c8 00 00 00       	push   $0xc8
 804896b:	e9 50 fe ff ff       	jmp    80487c0 <_init+0x30>

08048970 <strtol@plt>:
 8048970:	ff 25 68 c0 04 08    	jmp    *0x804c068
 8048976:	68 d0 00 00 00       	push   $0xd0
 804897b:	e9 40 fe ff ff       	jmp    80487c0 <_init+0x30>

08048980 <connect@plt>:
 8048980:	ff 25 6c c0 04 08    	jmp    *0x804c06c
 8048986:	68 d8 00 00 00       	push   $0xd8
 804898b:	e9 30 fe ff ff       	jmp    80487c0 <_init+0x30>

08048990 <close@plt>:
 8048990:	ff 25 70 c0 04 08    	jmp    *0x804c070
 8048996:	68 e0 00 00 00       	push   $0xe0
 804899b:	e9 20 fe ff ff       	jmp    80487c0 <_init+0x30>

080489a0 <__ctype_b_loc@plt>:
 80489a0:	ff 25 74 c0 04 08    	jmp    *0x804c074
 80489a6:	68 e8 00 00 00       	push   $0xe8
 80489ab:	e9 10 fe ff ff       	jmp    80487c0 <_init+0x30>

080489b0 <__sprintf_chk@plt>:
 80489b0:	ff 25 78 c0 04 08    	jmp    *0x804c078
 80489b6:	68 f0 00 00 00       	push   $0xf0
 80489bb:	e9 00 fe ff ff       	jmp    80487c0 <_init+0x30>

Disassembly of section .text:

080489c0 <_start>:
 80489c0:	31 ed                	xor    %ebp,%ebp
 80489c2:	5e                   	pop    %esi
 80489c3:	89 e1                	mov    %esp,%ecx
 80489c5:	83 e4 f0             	and    $0xfffffff0,%esp
 80489c8:	50                   	push   %eax
 80489c9:	54                   	push   %esp
 80489ca:	52                   	push   %edx
 80489cb:	68 f0 a2 04 08       	push   $0x804a2f0
 80489d0:	68 80 a2 04 08       	push   $0x804a280
 80489d5:	51                   	push   %ecx
 80489d6:	56                   	push   %esi
 80489d7:	68 74 8a 04 08       	push   $0x8048a74
 80489dc:	e8 df fe ff ff       	call   80488c0 <__libc_start_main@plt>
 80489e1:	f4                   	hlt    
 80489e2:	90                   	nop
 80489e3:	90                   	nop
 80489e4:	90                   	nop
 80489e5:	90                   	nop
 80489e6:	90                   	nop
 80489e7:	90                   	nop
 80489e8:	90                   	nop
 80489e9:	90                   	nop
 80489ea:	90                   	nop
 80489eb:	90                   	nop
 80489ec:	90                   	nop
 80489ed:	90                   	nop
 80489ee:	90                   	nop
 80489ef:	90                   	nop

080489f0 <__do_global_dtors_aux>:
 80489f0:	55                   	push   %ebp
 80489f1:	89 e5                	mov    %esp,%ebp
 80489f3:	53                   	push   %ebx
 80489f4:	83 ec 04             	sub    $0x4,%esp
 80489f7:	80 3d e4 c7 04 08 00 	cmpb   $0x0,0x804c7e4
 80489fe:	75 3f                	jne    8048a3f <__do_global_dtors_aux+0x4f>
 8048a00:	a1 e8 c7 04 08       	mov    0x804c7e8,%eax
 8048a05:	bb 20 bf 04 08       	mov    $0x804bf20,%ebx
 8048a0a:	81 eb 1c bf 04 08    	sub    $0x804bf1c,%ebx
 8048a10:	c1 fb 02             	sar    $0x2,%ebx
 8048a13:	83 eb 01             	sub    $0x1,%ebx
 8048a16:	39 d8                	cmp    %ebx,%eax
 8048a18:	73 1e                	jae    8048a38 <__do_global_dtors_aux+0x48>
 8048a1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048a20:	83 c0 01             	add    $0x1,%eax
 8048a23:	a3 e8 c7 04 08       	mov    %eax,0x804c7e8
 8048a28:	ff 14 85 1c bf 04 08 	call   *0x804bf1c(,%eax,4)
 8048a2f:	a1 e8 c7 04 08       	mov    0x804c7e8,%eax
 8048a34:	39 d8                	cmp    %ebx,%eax
 8048a36:	72 e8                	jb     8048a20 <__do_global_dtors_aux+0x30>
 8048a38:	c6 05 e4 c7 04 08 01 	movb   $0x1,0x804c7e4
 8048a3f:	83 c4 04             	add    $0x4,%esp
 8048a42:	5b                   	pop    %ebx
 8048a43:	5d                   	pop    %ebp
 8048a44:	c3                   	ret    
 8048a45:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048a49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048a50 <frame_dummy>:
 8048a50:	55                   	push   %ebp
 8048a51:	89 e5                	mov    %esp,%ebp
 8048a53:	83 ec 18             	sub    $0x18,%esp
 8048a56:	a1 24 bf 04 08       	mov    0x804bf24,%eax
 8048a5b:	85 c0                	test   %eax,%eax
 8048a5d:	74 12                	je     8048a71 <frame_dummy+0x21>
 8048a5f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048a64:	85 c0                	test   %eax,%eax
 8048a66:	74 09                	je     8048a71 <frame_dummy+0x21>
 8048a68:	c7 04 24 24 bf 04 08 	movl   $0x804bf24,(%esp)
 8048a6f:	ff d0                	call   *%eax
 8048a71:	c9                   	leave  
 8048a72:	c3                   	ret    
 8048a73:	90                   	nop

08048a74 <main>:
 8048a74:	55                   	push   %ebp
 8048a75:	89 e5                	mov    %esp,%ebp
 8048a77:	56                   	push   %esi
 8048a78:	53                   	push   %ebx
 8048a79:	83 e4 f0             	and    $0xfffffff0,%esp
 8048a7c:	83 ec 10             	sub    $0x10,%esp
 8048a7f:	8b 75 08             	mov    0x8(%ebp),%esi
 8048a82:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 8048a85:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 8048a8c:	00 
 8048a8d:	c7 44 24 08 02 00 00 	movl   $0x2,0x8(%esp)
 8048a94:	00 
 8048a95:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8048a9c:	00 
 8048a9d:	a1 e0 c7 04 08       	mov    0x804c7e0,%eax
 8048aa2:	89 04 24             	mov    %eax,(%esp)
 8048aa5:	e8 56 fe ff ff       	call   8048900 <setvbuf@plt>
 8048aaa:	83 fe 01             	cmp    $0x1,%esi
 8048aad:	75 0c                	jne    8048abb <main+0x47>
 8048aaf:	a1 c4 c7 04 08       	mov    0x804c7c4,%eax
 8048ab4:	a3 f0 c7 04 08       	mov    %eax,0x804c7f0
 8048ab9:	eb 74                	jmp    8048b2f <main+0xbb>
 8048abb:	83 fe 02             	cmp    $0x2,%esi
 8048abe:	75 49                	jne    8048b09 <main+0x95>
 8048ac0:	c7 44 24 04 68 a3 04 	movl   $0x804a368,0x4(%esp)
 8048ac7:	08 
 8048ac8:	8b 43 04             	mov    0x4(%ebx),%eax
 8048acb:	89 04 24             	mov    %eax,(%esp)
 8048ace:	e8 3d fe ff ff       	call   8048910 <fopen@plt>
 8048ad3:	a3 f0 c7 04 08       	mov    %eax,0x804c7f0
 8048ad8:	85 c0                	test   %eax,%eax
 8048ada:	75 53                	jne    8048b2f <main+0xbb>
 8048adc:	8b 43 04             	mov    0x4(%ebx),%eax
 8048adf:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048ae3:	8b 03                	mov    (%ebx),%eax
 8048ae5:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048ae9:	c7 44 24 04 6a a3 04 	movl   $0x804a36a,0x4(%esp)
 8048af0:	08 
 8048af1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048af8:	e8 33 fe ff ff       	call   8048930 <__printf_chk@plt>
 8048afd:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048b04:	e8 a7 fd ff ff       	call   80488b0 <exit@plt>
 8048b09:	8b 03                	mov    (%ebx),%eax
 8048b0b:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048b0f:	c7 44 24 04 87 a3 04 	movl   $0x804a387,0x4(%esp)
 8048b16:	08 
 8048b17:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048b1e:	e8 0d fe ff ff       	call   8048930 <__printf_chk@plt>
 8048b23:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048b2a:	e8 81 fd ff ff       	call   80488b0 <exit@plt>
 8048b2f:	e8 e7 05 00 00       	call   804911b <initialize_bomb>
 8048b34:	c7 04 24 ec a3 04 08 	movl   $0x804a3ec,(%esp)
 8048b3b:	e8 30 fd ff ff       	call   8048870 <puts@plt>
 8048b40:	c7 04 24 28 a4 04 08 	movl   $0x804a428,(%esp)
 8048b47:	e8 24 fd ff ff       	call   8048870 <puts@plt>
 8048b4c:	e8 9a 08 00 00       	call   80493eb <read_line>
 8048b51:	89 04 24             	mov    %eax,(%esp)
 8048b54:	e8 a7 00 00 00       	call   8048c00 <phase_1>
 8048b59:	e8 eb 09 00 00       	call   8049549 <phase_defused>
 8048b5e:	c7 04 24 54 a4 04 08 	movl   $0x804a454,(%esp)
 8048b65:	e8 06 fd ff ff       	call   8048870 <puts@plt>
 8048b6a:	e8 7c 08 00 00       	call   80493eb <read_line>
 8048b6f:	89 04 24             	mov    %eax,(%esp)
 8048b72:	e8 ad 00 00 00       	call   8048c24 <phase_2>
 8048b77:	e8 cd 09 00 00       	call   8049549 <phase_defused>
 8048b7c:	c7 04 24 a1 a3 04 08 	movl   $0x804a3a1,(%esp)
 8048b83:	e8 e8 fc ff ff       	call   8048870 <puts@plt>
 8048b88:	e8 5e 08 00 00       	call   80493eb <read_line>
 8048b8d:	89 04 24             	mov    %eax,(%esp)
 8048b90:	e8 d6 00 00 00       	call   8048c6b <phase_3>
 8048b95:	e8 af 09 00 00       	call   8049549 <phase_defused>
 8048b9a:	c7 04 24 bf a3 04 08 	movl   $0x804a3bf,(%esp)
 8048ba1:	e8 ca fc ff ff       	call   8048870 <puts@plt>
 8048ba6:	e8 40 08 00 00       	call   80493eb <read_line>
 8048bab:	89 04 24             	mov    %eax,(%esp)
 8048bae:	e8 e3 01 00 00       	call   8048d96 <phase_4>
 8048bb3:	e8 91 09 00 00       	call   8049549 <phase_defused>
 8048bb8:	c7 04 24 80 a4 04 08 	movl   $0x804a480,(%esp)
 8048bbf:	e8 ac fc ff ff       	call   8048870 <puts@plt>
 8048bc4:	e8 22 08 00 00       	call   80493eb <read_line>
 8048bc9:	89 04 24             	mov    %eax,(%esp)
 8048bcc:	e8 34 02 00 00       	call   8048e05 <phase_5>
 8048bd1:	e8 73 09 00 00       	call   8049549 <phase_defused>
 8048bd6:	c7 04 24 ce a3 04 08 	movl   $0x804a3ce,(%esp)
 8048bdd:	e8 8e fc ff ff       	call   8048870 <puts@plt>
 8048be2:	e8 04 08 00 00       	call   80493eb <read_line>
 8048be7:	89 04 24             	mov    %eax,(%esp)
 8048bea:	e8 5f 02 00 00       	call   8048e4e <phase_6>
 8048bef:	e8 55 09 00 00       	call   8049549 <phase_defused>
 8048bf4:	b8 00 00 00 00       	mov    $0x0,%eax
 8048bf9:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8048bfc:	5b                   	pop    %ebx
 8048bfd:	5e                   	pop    %esi
 8048bfe:	5d                   	pop    %ebp
 8048bff:	c3                   	ret    

08048c00 <phase_1>:
 8048c00:	83 ec 1c             	sub    $0x1c,%esp
 8048c03:	c7 44 24 04 a4 a4 04 	movl   $0x804a4a4,0x4(%esp)
 8048c0a:	08 
 8048c0b:	8b 44 24 20          	mov    0x20(%esp),%eax
 8048c0f:	89 04 24             	mov    %eax,(%esp)
 8048c12:	e8 8d 04 00 00       	call   80490a4 <strings_not_equal>
 8048c17:	85 c0                	test   %eax,%eax
 8048c19:	74 05                	je     8048c20 <phase_1+0x20>
 8048c1b:	e8 8c 07 00 00       	call   80493ac <explode_bomb>
 8048c20:	83 c4 1c             	add    $0x1c,%esp
 8048c23:	c3                   	ret    

08048c24 <phase_2>:
 8048c24:	53                   	push   %ebx
 8048c25:	83 ec 38             	sub    $0x38,%esp
 8048c28:	8d 44 24 18          	lea    0x18(%esp),%eax
 8048c2c:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048c30:	8b 44 24 40          	mov    0x40(%esp),%eax
 8048c34:	89 04 24             	mov    %eax,(%esp)
 8048c37:	e8 bd 08 00 00       	call   80494f9 <read_six_numbers>
 8048c3c:	83 7c 24 18 00       	cmpl   $0x0,0x18(%esp)
 8048c41:	79 05                	jns    8048c48 <phase_2+0x24>
 8048c43:	e8 64 07 00 00       	call   80493ac <explode_bomb>
 8048c48:	bb 01 00 00 00       	mov    $0x1,%ebx
 8048c4d:	89 d8                	mov    %ebx,%eax
 8048c4f:	03 44 9c 14          	add    0x14(%esp,%ebx,4),%eax
 8048c53:	39 44 9c 18          	cmp    %eax,0x18(%esp,%ebx,4)
 8048c57:	74 05                	je     8048c5e <phase_2+0x3a>
 8048c59:	e8 4e 07 00 00       	call   80493ac <explode_bomb>
 8048c5e:	83 c3 01             	add    $0x1,%ebx
 8048c61:	83 fb 06             	cmp    $0x6,%ebx
 8048c64:	75 e7                	jne    8048c4d <phase_2+0x29>
 8048c66:	83 c4 38             	add    $0x38,%esp
 8048c69:	5b                   	pop    %ebx
 8048c6a:	c3                   	ret    

08048c6b <phase_3>:
 8048c6b:	83 ec 2c             	sub    $0x2c,%esp
 8048c6e:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 8048c72:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048c76:	8d 44 24 18          	lea    0x18(%esp),%eax
 8048c7a:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048c7e:	c7 44 24 04 f5 a7 04 	movl   $0x804a7f5,0x4(%esp)
 8048c85:	08 
 8048c86:	8b 44 24 30          	mov    0x30(%esp),%eax
 8048c8a:	89 04 24             	mov    %eax,(%esp)
 8048c8d:	e8 5e fc ff ff       	call   80488f0 <__isoc99_sscanf@plt>
 8048c92:	83 f8 01             	cmp    $0x1,%eax
 8048c95:	7f 05                	jg     8048c9c <phase_3+0x31>
 8048c97:	e8 10 07 00 00       	call   80493ac <explode_bomb>
 8048c9c:	83 7c 24 18 07       	cmpl   $0x7,0x18(%esp)
 8048ca1:	77 66                	ja     8048d09 <phase_3+0x9e>
 8048ca3:	8b 44 24 18          	mov    0x18(%esp),%eax
 8048ca7:	ff 24 85 00 a5 04 08 	jmp    *0x804a500(,%eax,4)
 8048cae:	b8 00 00 00 00       	mov    $0x0,%eax
 8048cb3:	eb 05                	jmp    8048cba <phase_3+0x4f>
 8048cb5:	b8 bb 03 00 00       	mov    $0x3bb,%eax
 8048cba:	2d 86 02 00 00       	sub    $0x286,%eax
 8048cbf:	eb 05                	jmp    8048cc6 <phase_3+0x5b>
 8048cc1:	b8 00 00 00 00       	mov    $0x0,%eax
 8048cc6:	05 c6 01 00 00       	add    $0x1c6,%eax
 8048ccb:	eb 05                	jmp    8048cd2 <phase_3+0x67>
 8048ccd:	b8 00 00 00 00       	mov    $0x0,%eax
 8048cd2:	2d 90 01 00 00       	sub    $0x190,%eax
 8048cd7:	eb 05                	jmp    8048cde <phase_3+0x73>
 8048cd9:	b8 00 00 00 00       	mov    $0x0,%eax
 8048cde:	05 90 01 00 00       	add    $0x190,%eax
 8048ce3:	eb 05                	jmp    8048cea <phase_3+0x7f>
 8048ce5:	b8 00 00 00 00       	mov    $0x0,%eax
 8048cea:	2d 90 01 00 00       	sub    $0x190,%eax
 8048cef:	eb 05                	jmp    8048cf6 <phase_3+0x8b>
 8048cf1:	b8 00 00 00 00       	mov    $0x0,%eax
 8048cf6:	05 90 01 00 00       	add    $0x190,%eax
 8048cfb:	eb 05                	jmp    8048d02 <phase_3+0x97>
 8048cfd:	b8 00 00 00 00       	mov    $0x0,%eax
 8048d02:	2d 90 01 00 00       	sub    $0x190,%eax
 8048d07:	eb 0a                	jmp    8048d13 <phase_3+0xa8>
 8048d09:	e8 9e 06 00 00       	call   80493ac <explode_bomb>
 8048d0e:	b8 00 00 00 00       	mov    $0x0,%eax
 8048d13:	83 7c 24 18 05       	cmpl   $0x5,0x18(%esp)
 8048d18:	7f 06                	jg     8048d20 <phase_3+0xb5>
 8048d1a:	3b 44 24 1c          	cmp    0x1c(%esp),%eax
 8048d1e:	74 05                	je     8048d25 <phase_3+0xba>
 8048d20:	e8 87 06 00 00       	call   80493ac <explode_bomb>
 8048d25:	83 c4 2c             	add    $0x2c,%esp
 8048d28:	c3                   	ret    

08048d29 <func4>:
 8048d29:	83 ec 1c             	sub    $0x1c,%esp
 8048d2c:	89 5c 24 14          	mov    %ebx,0x14(%esp)
 8048d30:	89 74 24 18          	mov    %esi,0x18(%esp)
 8048d34:	8b 54 24 20          	mov    0x20(%esp),%edx
 8048d38:	8b 44 24 24          	mov    0x24(%esp),%eax
 8048d3c:	8b 5c 24 28          	mov    0x28(%esp),%ebx
 8048d40:	89 d9                	mov    %ebx,%ecx
 8048d42:	29 c1                	sub    %eax,%ecx
 8048d44:	89 ce                	mov    %ecx,%esi
 8048d46:	c1 ee 1f             	shr    $0x1f,%esi
 8048d49:	01 f1                	add    %esi,%ecx
 8048d4b:	d1 f9                	sar    %ecx
 8048d4d:	01 c1                	add    %eax,%ecx
 8048d4f:	39 d1                	cmp    %edx,%ecx
 8048d51:	7e 17                	jle    8048d6a <func4+0x41>
 8048d53:	83 e9 01             	sub    $0x1,%ecx
 8048d56:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 8048d5a:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048d5e:	89 14 24             	mov    %edx,(%esp)
 8048d61:	e8 c3 ff ff ff       	call   8048d29 <func4>
 8048d66:	01 c0                	add    %eax,%eax
 8048d68:	eb 20                	jmp    8048d8a <func4+0x61>
 8048d6a:	b8 00 00 00 00       	mov    $0x0,%eax
 8048d6f:	39 d1                	cmp    %edx,%ecx
 8048d71:	7d 17                	jge    8048d8a <func4+0x61>
 8048d73:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 8048d77:	83 c1 01             	add    $0x1,%ecx
 8048d7a:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 8048d7e:	89 14 24             	mov    %edx,(%esp)
 8048d81:	e8 a3 ff ff ff       	call   8048d29 <func4>
 8048d86:	8d 44 00 01          	lea    0x1(%eax,%eax,1),%eax
 8048d8a:	8b 5c 24 14          	mov    0x14(%esp),%ebx
 8048d8e:	8b 74 24 18          	mov    0x18(%esp),%esi
 8048d92:	83 c4 1c             	add    $0x1c,%esp
 8048d95:	c3                   	ret    

08048d96 <phase_4>:
 8048d96:	83 ec 2c             	sub    $0x2c,%esp
 8048d99:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 8048d9d:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048da1:	8d 44 24 18          	lea    0x18(%esp),%eax
 8048da5:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048da9:	c7 44 24 04 f5 a7 04 	movl   $0x804a7f5,0x4(%esp)
 8048db0:	08 
 8048db1:	8b 44 24 30          	mov    0x30(%esp),%eax
 8048db5:	89 04 24             	mov    %eax,(%esp)
 8048db8:	e8 33 fb ff ff       	call   80488f0 <__isoc99_sscanf@plt>
 8048dbd:	83 f8 02             	cmp    $0x2,%eax
 8048dc0:	75 0d                	jne    8048dcf <phase_4+0x39>
 8048dc2:	8b 44 24 18          	mov    0x18(%esp),%eax
 8048dc6:	85 c0                	test   %eax,%eax
 8048dc8:	78 05                	js     8048dcf <phase_4+0x39>
 8048dca:	83 f8 0e             	cmp    $0xe,%eax
 8048dcd:	7e 05                	jle    8048dd4 <phase_4+0x3e>
 8048dcf:	e8 d8 05 00 00       	call   80493ac <explode_bomb>
 8048dd4:	c7 44 24 08 0e 00 00 	movl   $0xe,0x8(%esp)
 8048ddb:	00 
 8048ddc:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8048de3:	00 
 8048de4:	8b 44 24 18          	mov    0x18(%esp),%eax
 8048de8:	89 04 24             	mov    %eax,(%esp)
 8048deb:	e8 39 ff ff ff       	call   8048d29 <func4>
 8048df0:	83 f8 01             	cmp    $0x1,%eax
 8048df3:	75 07                	jne    8048dfc <phase_4+0x66>
 8048df5:	83 7c 24 1c 01       	cmpl   $0x1,0x1c(%esp)
 8048dfa:	74 05                	je     8048e01 <phase_4+0x6b>
 8048dfc:	e8 ab 05 00 00       	call   80493ac <explode_bomb>
 8048e01:	83 c4 2c             	add    $0x2c,%esp
 8048e04:	c3                   	ret    

08048e05 <phase_5>:
 8048e05:	53                   	push   %ebx
 8048e06:	83 ec 18             	sub    $0x18,%esp
 8048e09:	8b 5c 24 20          	mov    0x20(%esp),%ebx
 8048e0d:	89 1c 24             	mov    %ebx,(%esp)
 8048e10:	e8 76 02 00 00       	call   804908b <string_length>
 8048e15:	83 f8 06             	cmp    $0x6,%eax
 8048e18:	74 05                	je     8048e1f <phase_5+0x1a>
 8048e1a:	e8 8d 05 00 00       	call   80493ac <explode_bomb>
 8048e1f:	ba 00 00 00 00       	mov    $0x0,%edx
 8048e24:	b8 00 00 00 00       	mov    $0x0,%eax
 8048e29:	0f be 0c 03          	movsbl (%ebx,%eax,1),%ecx
 8048e2d:	83 e1 0f             	and    $0xf,%ecx
 8048e30:	03 14 8d 20 a5 04 08 	add    0x804a520(,%ecx,4),%edx
 8048e37:	83 c0 01             	add    $0x1,%eax
 8048e3a:	83 f8 06             	cmp    $0x6,%eax
 8048e3d:	75 ea                	jne    8048e29 <phase_5+0x24>
 8048e3f:	83 fa 2a             	cmp    $0x2a,%edx
 8048e42:	74 05                	je     8048e49 <phase_5+0x44>
 8048e44:	e8 63 05 00 00       	call   80493ac <explode_bomb>
 8048e49:	83 c4 18             	add    $0x18,%esp
 8048e4c:	5b                   	pop    %ebx
 8048e4d:	c3                   	ret    

08048e4e <phase_6>:
 8048e4e:	56                   	push   %esi
 8048e4f:	53                   	push   %ebx
 8048e50:	83 ec 44             	sub    $0x44,%esp
 8048e53:	8d 44 24 10          	lea    0x10(%esp),%eax
 8048e57:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048e5b:	8b 44 24 50          	mov    0x50(%esp),%eax
 8048e5f:	89 04 24             	mov    %eax,(%esp)
 8048e62:	e8 92 06 00 00       	call   80494f9 <read_six_numbers>
 8048e67:	be 00 00 00 00       	mov    $0x0,%esi
 8048e6c:	8b 44 b4 10          	mov    0x10(%esp,%esi,4),%eax
 8048e70:	83 e8 01             	sub    $0x1,%eax
 8048e73:	83 f8 05             	cmp    $0x5,%eax
 8048e76:	76 05                	jbe    8048e7d <phase_6+0x2f>
 8048e78:	e8 2f 05 00 00       	call   80493ac <explode_bomb>
 8048e7d:	83 c6 01             	add    $0x1,%esi
 8048e80:	83 fe 06             	cmp    $0x6,%esi
 8048e83:	74 1d                	je     8048ea2 <phase_6+0x54>
 8048e85:	89 f3                	mov    %esi,%ebx
 8048e87:	8b 44 9c 10          	mov    0x10(%esp,%ebx,4),%eax
 8048e8b:	39 44 b4 0c          	cmp    %eax,0xc(%esp,%esi,4)
 8048e8f:	75 05                	jne    8048e96 <phase_6+0x48>
 8048e91:	e8 16 05 00 00       	call   80493ac <explode_bomb>
 8048e96:	83 c3 01             	add    $0x1,%ebx
 8048e99:	83 fb 05             	cmp    $0x5,%ebx
 8048e9c:	7e e9                	jle    8048e87 <phase_6+0x39>
 8048e9e:	66 90                	xchg   %ax,%ax
 8048ea0:	eb ca                	jmp    8048e6c <phase_6+0x1e>
 8048ea2:	8d 44 24 10          	lea    0x10(%esp),%eax
 8048ea6:	8d 5c 24 28          	lea    0x28(%esp),%ebx
 8048eaa:	b9 07 00 00 00       	mov    $0x7,%ecx
 8048eaf:	89 ca                	mov    %ecx,%edx
 8048eb1:	2b 10                	sub    (%eax),%edx
 8048eb3:	89 10                	mov    %edx,(%eax)
 8048eb5:	83 c0 04             	add    $0x4,%eax
 8048eb8:	39 d8                	cmp    %ebx,%eax
 8048eba:	75 f3                	jne    8048eaf <phase_6+0x61>
 8048ebc:	bb 00 00 00 00       	mov    $0x0,%ebx
 8048ec1:	eb 16                	jmp    8048ed9 <phase_6+0x8b>
 8048ec3:	8b 52 08             	mov    0x8(%edx),%edx
 8048ec6:	83 c0 01             	add    $0x1,%eax
 8048ec9:	39 c8                	cmp    %ecx,%eax
 8048ecb:	75 f6                	jne    8048ec3 <phase_6+0x75>
 8048ecd:	89 54 b4 28          	mov    %edx,0x28(%esp,%esi,4)
 8048ed1:	83 c3 01             	add    $0x1,%ebx
 8048ed4:	83 fb 06             	cmp    $0x6,%ebx
 8048ed7:	74 17                	je     8048ef0 <phase_6+0xa2>
 8048ed9:	89 de                	mov    %ebx,%esi
 8048edb:	8b 4c 9c 10          	mov    0x10(%esp,%ebx,4),%ecx
 8048edf:	b8 01 00 00 00       	mov    $0x1,%eax
 8048ee4:	ba 54 c1 04 08       	mov    $0x804c154,%edx
 8048ee9:	83 f9 01             	cmp    $0x1,%ecx
 8048eec:	7f d5                	jg     8048ec3 <phase_6+0x75>
 8048eee:	eb dd                	jmp    8048ecd <phase_6+0x7f>
 8048ef0:	8b 5c 24 28          	mov    0x28(%esp),%ebx
 8048ef4:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8048ef8:	89 43 08             	mov    %eax,0x8(%ebx)
 8048efb:	8b 54 24 30          	mov    0x30(%esp),%edx
 8048eff:	89 50 08             	mov    %edx,0x8(%eax)
 8048f02:	8b 44 24 34          	mov    0x34(%esp),%eax
 8048f06:	89 42 08             	mov    %eax,0x8(%edx)
 8048f09:	8b 54 24 38          	mov    0x38(%esp),%edx
 8048f0d:	89 50 08             	mov    %edx,0x8(%eax)
 8048f10:	8b 44 24 3c          	mov    0x3c(%esp),%eax
 8048f14:	89 42 08             	mov    %eax,0x8(%edx)
 8048f17:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 8048f1e:	be 05 00 00 00       	mov    $0x5,%esi
 8048f23:	8b 43 08             	mov    0x8(%ebx),%eax
 8048f26:	8b 10                	mov    (%eax),%edx
 8048f28:	39 13                	cmp    %edx,(%ebx)
 8048f2a:	7d 05                	jge    8048f31 <phase_6+0xe3>
 8048f2c:	e8 7b 04 00 00       	call   80493ac <explode_bomb>
 8048f31:	8b 5b 08             	mov    0x8(%ebx),%ebx
 8048f34:	83 ee 01             	sub    $0x1,%esi
 8048f37:	75 ea                	jne    8048f23 <phase_6+0xd5>
 8048f39:	83 c4 44             	add    $0x44,%esp
 8048f3c:	5b                   	pop    %ebx
 8048f3d:	5e                   	pop    %esi
 8048f3e:	c3                   	ret    

08048f3f <fun7>:
 8048f3f:	53                   	push   %ebx
 8048f40:	83 ec 18             	sub    $0x18,%esp
 8048f43:	8b 54 24 20          	mov    0x20(%esp),%edx
 8048f47:	8b 4c 24 24          	mov    0x24(%esp),%ecx
 8048f4b:	85 d2                	test   %edx,%edx
 8048f4d:	74 37                	je     8048f86 <fun7+0x47>
 8048f4f:	8b 1a                	mov    (%edx),%ebx
 8048f51:	39 cb                	cmp    %ecx,%ebx
 8048f53:	7e 13                	jle    8048f68 <fun7+0x29>
 8048f55:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 8048f59:	8b 42 04             	mov    0x4(%edx),%eax
 8048f5c:	89 04 24             	mov    %eax,(%esp)
 8048f5f:	e8 db ff ff ff       	call   8048f3f <fun7>
 8048f64:	01 c0                	add    %eax,%eax
 8048f66:	eb 23                	jmp    8048f8b <fun7+0x4c>
 8048f68:	b8 00 00 00 00       	mov    $0x0,%eax
 8048f6d:	39 cb                	cmp    %ecx,%ebx
 8048f6f:	74 1a                	je     8048f8b <fun7+0x4c>
 8048f71:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 8048f75:	8b 42 08             	mov    0x8(%edx),%eax
 8048f78:	89 04 24             	mov    %eax,(%esp)
 8048f7b:	e8 bf ff ff ff       	call   8048f3f <fun7>
 8048f80:	8d 44 00 01          	lea    0x1(%eax,%eax,1),%eax
 8048f84:	eb 05                	jmp    8048f8b <fun7+0x4c>
 8048f86:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8048f8b:	83 c4 18             	add    $0x18,%esp
 8048f8e:	5b                   	pop    %ebx
 8048f8f:	c3                   	ret    

08048f90 <secret_phase>:
 8048f90:	53                   	push   %ebx
 8048f91:	83 ec 18             	sub    $0x18,%esp
 8048f94:	e8 52 04 00 00       	call   80493eb <read_line>
 8048f99:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 8048fa0:	00 
 8048fa1:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8048fa8:	00 
 8048fa9:	89 04 24             	mov    %eax,(%esp)
 8048fac:	e8 bf f9 ff ff       	call   8048970 <strtol@plt>
 8048fb1:	89 c3                	mov    %eax,%ebx
 8048fb3:	8d 40 ff             	lea    -0x1(%eax),%eax
 8048fb6:	3d e8 03 00 00       	cmp    $0x3e8,%eax
 8048fbb:	76 05                	jbe    8048fc2 <secret_phase+0x32>
 8048fbd:	e8 ea 03 00 00       	call   80493ac <explode_bomb>
 8048fc2:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8048fc6:	c7 04 24 a0 c0 04 08 	movl   $0x804c0a0,(%esp)
 8048fcd:	e8 6d ff ff ff       	call   8048f3f <fun7>
 8048fd2:	83 f8 03             	cmp    $0x3,%eax
 8048fd5:	74 05                	je     8048fdc <secret_phase+0x4c>
 8048fd7:	e8 d0 03 00 00       	call   80493ac <explode_bomb>
 8048fdc:	c7 04 24 c8 a4 04 08 	movl   $0x804a4c8,(%esp)
 8048fe3:	e8 88 f8 ff ff       	call   8048870 <puts@plt>
 8048fe8:	e8 5c 05 00 00       	call   8049549 <phase_defused>
 8048fed:	83 c4 18             	add    $0x18,%esp
 8048ff0:	5b                   	pop    %ebx
 8048ff1:	c3                   	ret    
 8048ff2:	90                   	nop
 8048ff3:	90                   	nop
 8048ff4:	90                   	nop
 8048ff5:	90                   	nop
 8048ff6:	90                   	nop
 8048ff7:	90                   	nop
 8048ff8:	90                   	nop
 8048ff9:	90                   	nop
 8048ffa:	90                   	nop
 8048ffb:	90                   	nop
 8048ffc:	90                   	nop
 8048ffd:	90                   	nop
 8048ffe:	90                   	nop
 8048fff:	90                   	nop

08049000 <sig_handler>:
 8049000:	83 ec 1c             	sub    $0x1c,%esp
 8049003:	c7 04 24 60 a5 04 08 	movl   $0x804a560,(%esp)
 804900a:	e8 61 f8 ff ff       	call   8048870 <puts@plt>
 804900f:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
 8049016:	e8 f5 f7 ff ff       	call   8048810 <sleep@plt>
 804901b:	c7 44 24 04 1d a7 04 	movl   $0x804a71d,0x4(%esp)
 8049022:	08 
 8049023:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 804902a:	e8 01 f9 ff ff       	call   8048930 <__printf_chk@plt>
 804902f:	a1 e0 c7 04 08       	mov    0x804c7e0,%eax
 8049034:	89 04 24             	mov    %eax,(%esp)
 8049037:	e8 a4 f7 ff ff       	call   80487e0 <fflush@plt>
 804903c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049043:	e8 c8 f7 ff ff       	call   8048810 <sleep@plt>
 8049048:	c7 04 24 25 a7 04 08 	movl   $0x804a725,(%esp)
 804904f:	e8 1c f8 ff ff       	call   8048870 <puts@plt>
 8049054:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
 804905b:	e8 50 f8 ff ff       	call   80488b0 <exit@plt>

08049060 <invalid_phase>:
 8049060:	83 ec 1c             	sub    $0x1c,%esp
 8049063:	8b 44 24 20          	mov    0x20(%esp),%eax
 8049067:	89 44 24 08          	mov    %eax,0x8(%esp)
 804906b:	c7 44 24 04 2d a7 04 	movl   $0x804a72d,0x4(%esp)
 8049072:	08 
 8049073:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 804907a:	e8 b1 f8 ff ff       	call   8048930 <__printf_chk@plt>
 804907f:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049086:	e8 25 f8 ff ff       	call   80488b0 <exit@plt>

0804908b <string_length>:
 804908b:	8b 54 24 04          	mov    0x4(%esp),%edx
 804908f:	b8 00 00 00 00       	mov    $0x0,%eax
 8049094:	80 3a 00             	cmpb   $0x0,(%edx)
 8049097:	74 09                	je     80490a2 <string_length+0x17>
 8049099:	83 c0 01             	add    $0x1,%eax
 804909c:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 80490a0:	75 f7                	jne    8049099 <string_length+0xe>
 80490a2:	f3 c3                	repz ret 

080490a4 <strings_not_equal>:
 80490a4:	83 ec 10             	sub    $0x10,%esp
 80490a7:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 80490ab:	89 74 24 08          	mov    %esi,0x8(%esp)
 80490af:	89 7c 24 0c          	mov    %edi,0xc(%esp)
 80490b3:	8b 5c 24 14          	mov    0x14(%esp),%ebx
 80490b7:	8b 74 24 18          	mov    0x18(%esp),%esi
 80490bb:	89 1c 24             	mov    %ebx,(%esp)
 80490be:	e8 c8 ff ff ff       	call   804908b <string_length>
 80490c3:	89 c7                	mov    %eax,%edi
 80490c5:	89 34 24             	mov    %esi,(%esp)
 80490c8:	e8 be ff ff ff       	call   804908b <string_length>
 80490cd:	ba 01 00 00 00       	mov    $0x1,%edx
 80490d2:	39 c7                	cmp    %eax,%edi
 80490d4:	75 33                	jne    8049109 <strings_not_equal+0x65>
 80490d6:	0f b6 03             	movzbl (%ebx),%eax
 80490d9:	b2 00                	mov    $0x0,%dl
 80490db:	84 c0                	test   %al,%al
 80490dd:	74 2a                	je     8049109 <strings_not_equal+0x65>
 80490df:	b2 01                	mov    $0x1,%dl
 80490e1:	3a 06                	cmp    (%esi),%al
 80490e3:	75 24                	jne    8049109 <strings_not_equal+0x65>
 80490e5:	b8 00 00 00 00       	mov    $0x0,%eax
 80490ea:	eb 08                	jmp    80490f4 <strings_not_equal+0x50>
 80490ec:	83 c0 01             	add    $0x1,%eax
 80490ef:	3a 14 06             	cmp    (%esi,%eax,1),%dl
 80490f2:	75 10                	jne    8049104 <strings_not_equal+0x60>
 80490f4:	0f b6 54 03 01       	movzbl 0x1(%ebx,%eax,1),%edx
 80490f9:	84 d2                	test   %dl,%dl
 80490fb:	75 ef                	jne    80490ec <strings_not_equal+0x48>
 80490fd:	ba 00 00 00 00       	mov    $0x0,%edx
 8049102:	eb 05                	jmp    8049109 <strings_not_equal+0x65>
 8049104:	ba 01 00 00 00       	mov    $0x1,%edx
 8049109:	89 d0                	mov    %edx,%eax
 804910b:	8b 5c 24 04          	mov    0x4(%esp),%ebx
 804910f:	8b 74 24 08          	mov    0x8(%esp),%esi
 8049113:	8b 7c 24 0c          	mov    0xc(%esp),%edi
 8049117:	83 c4 10             	add    $0x10,%esp
 804911a:	c3                   	ret    

0804911b <initialize_bomb>:
 804911b:	56                   	push   %esi
 804911c:	53                   	push   %ebx
 804911d:	81 ec 64 20 00 00    	sub    $0x2064,%esp
 8049123:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8049129:	89 84 24 5c 20 00 00 	mov    %eax,0x205c(%esp)
 8049130:	31 c0                	xor    %eax,%eax
 8049132:	c7 44 24 04 00 90 04 	movl   $0x8049000,0x4(%esp)
 8049139:	08 
 804913a:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 8049141:	e8 ba f6 ff ff       	call   8048800 <signal@plt>
 8049146:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
 804914d:	00 
 804914e:	8d 84 24 1c 20 00 00 	lea    0x201c(%esp),%eax
 8049155:	89 04 24             	mov    %eax,(%esp)
 8049158:	e8 f3 f6 ff ff       	call   8048850 <gethostname@plt>
 804915d:	85 c0                	test   %eax,%eax
 804915f:	75 17                	jne    8049178 <initialize_bomb+0x5d>
 8049161:	a1 c0 c5 04 08       	mov    0x804c5c0,%eax
 8049166:	bb 00 00 00 00       	mov    $0x0,%ebx
 804916b:	8d b4 24 1c 20 00 00 	lea    0x201c(%esp),%esi
 8049172:	85 c0                	test   %eax,%eax
 8049174:	75 1a                	jne    8049190 <initialize_bomb+0x75>
 8049176:	eb 70                	jmp    80491e8 <initialize_bomb+0xcd>
 8049178:	c7 04 24 98 a5 04 08 	movl   $0x804a598,(%esp)
 804917f:	e8 ec f6 ff ff       	call   8048870 <puts@plt>
 8049184:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 804918b:	e8 20 f7 ff ff       	call   80488b0 <exit@plt>
 8049190:	89 74 24 04          	mov    %esi,0x4(%esp)
 8049194:	89 04 24             	mov    %eax,(%esp)
 8049197:	e8 44 f7 ff ff       	call   80488e0 <strcasecmp@plt>
 804919c:	85 c0                	test   %eax,%eax
 804919e:	74 10                	je     80491b0 <initialize_bomb+0x95>
 80491a0:	83 c3 01             	add    $0x1,%ebx
 80491a3:	8b 04 9d c0 c5 04 08 	mov    0x804c5c0(,%ebx,4),%eax
 80491aa:	85 c0                	test   %eax,%eax
 80491ac:	75 e2                	jne    8049190 <initialize_bomb+0x75>
 80491ae:	eb 38                	jmp    80491e8 <initialize_bomb+0xcd>
 80491b0:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 80491b4:	89 04 24             	mov    %eax,(%esp)
 80491b7:	e8 25 0e 00 00       	call   8049fe1 <init_driver>
 80491bc:	85 c0                	test   %eax,%eax
 80491be:	79 40                	jns    8049200 <initialize_bomb+0xe5>
 80491c0:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 80491c4:	89 44 24 08          	mov    %eax,0x8(%esp)
 80491c8:	c7 44 24 04 3e a7 04 	movl   $0x804a73e,0x4(%esp)
 80491cf:	08 
 80491d0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80491d7:	e8 54 f7 ff ff       	call   8048930 <__printf_chk@plt>
 80491dc:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 80491e3:	e8 c8 f6 ff ff       	call   80488b0 <exit@plt>
 80491e8:	c7 04 24 d0 a5 04 08 	movl   $0x804a5d0,(%esp)
 80491ef:	e8 7c f6 ff ff       	call   8048870 <puts@plt>
 80491f4:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 80491fb:	e8 b0 f6 ff ff       	call   80488b0 <exit@plt>
 8049200:	8b 84 24 5c 20 00 00 	mov    0x205c(%esp),%eax
 8049207:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 804920e:	74 05                	je     8049215 <initialize_bomb+0xfa>
 8049210:	e8 1b f6 ff ff       	call   8048830 <__stack_chk_fail@plt>
 8049215:	81 c4 64 20 00 00    	add    $0x2064,%esp
 804921b:	5b                   	pop    %ebx
 804921c:	5e                   	pop    %esi
 804921d:	c3                   	ret    

0804921e <initialize_bomb_solve>:
 804921e:	f3 c3                	repz ret 

08049220 <blank_line>:
 8049220:	56                   	push   %esi
 8049221:	53                   	push   %ebx
 8049222:	83 ec 04             	sub    $0x4,%esp
 8049225:	8b 74 24 10          	mov    0x10(%esp),%esi
 8049229:	eb 14                	jmp    804923f <blank_line+0x1f>
 804922b:	e8 70 f7 ff ff       	call   80489a0 <__ctype_b_loc@plt>
 8049230:	83 c6 01             	add    $0x1,%esi
 8049233:	0f be db             	movsbl %bl,%ebx
 8049236:	8b 00                	mov    (%eax),%eax
 8049238:	f6 44 58 01 20       	testb  $0x20,0x1(%eax,%ebx,2)
 804923d:	74 0e                	je     804924d <blank_line+0x2d>
 804923f:	0f b6 1e             	movzbl (%esi),%ebx
 8049242:	84 db                	test   %bl,%bl
 8049244:	75 e5                	jne    804922b <blank_line+0xb>
 8049246:	b8 01 00 00 00       	mov    $0x1,%eax
 804924b:	eb 05                	jmp    8049252 <blank_line+0x32>
 804924d:	b8 00 00 00 00       	mov    $0x0,%eax
 8049252:	83 c4 04             	add    $0x4,%esp
 8049255:	5b                   	pop    %ebx
 8049256:	5e                   	pop    %esi
 8049257:	c3                   	ret    

08049258 <skip>:
 8049258:	53                   	push   %ebx
 8049259:	83 ec 18             	sub    $0x18,%esp
 804925c:	a1 f0 c7 04 08       	mov    0x804c7f0,%eax
 8049261:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049265:	c7 44 24 04 50 00 00 	movl   $0x50,0x4(%esp)
 804926c:	00 
 804926d:	a1 ec c7 04 08       	mov    0x804c7ec,%eax
 8049272:	8d 04 80             	lea    (%eax,%eax,4),%eax
 8049275:	c1 e0 04             	shl    $0x4,%eax
 8049278:	05 00 c8 04 08       	add    $0x804c800,%eax
 804927d:	89 04 24             	mov    %eax,(%esp)
 8049280:	e8 6b f5 ff ff       	call   80487f0 <fgets@plt>
 8049285:	89 c3                	mov    %eax,%ebx
 8049287:	85 c0                	test   %eax,%eax
 8049289:	74 0c                	je     8049297 <skip+0x3f>
 804928b:	89 04 24             	mov    %eax,(%esp)
 804928e:	e8 8d ff ff ff       	call   8049220 <blank_line>
 8049293:	85 c0                	test   %eax,%eax
 8049295:	75 c5                	jne    804925c <skip+0x4>
 8049297:	89 d8                	mov    %ebx,%eax
 8049299:	83 c4 18             	add    $0x18,%esp
 804929c:	5b                   	pop    %ebx
 804929d:	c3                   	ret    

0804929e <send_msg>:
 804929e:	57                   	push   %edi
 804929f:	53                   	push   %ebx
 80492a0:	81 ec 34 40 00 00    	sub    $0x4034,%esp
 80492a6:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 80492ac:	89 84 24 2c 40 00 00 	mov    %eax,0x402c(%esp)
 80492b3:	31 c0                	xor    %eax,%eax
 80492b5:	8b 15 ec c7 04 08    	mov    0x804c7ec,%edx
 80492bb:	8d 5c 92 fb          	lea    -0x5(%edx,%edx,4),%ebx
 80492bf:	c1 e3 04             	shl    $0x4,%ebx
 80492c2:	81 c3 00 c8 04 08    	add    $0x804c800,%ebx
 80492c8:	89 df                	mov    %ebx,%edi
 80492ca:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 80492cf:	f2 ae                	repnz scas %es:(%edi),%al
 80492d1:	f7 d1                	not    %ecx
 80492d3:	83 c1 63             	add    $0x63,%ecx
 80492d6:	81 f9 00 20 00 00    	cmp    $0x2000,%ecx
 80492dc:	76 20                	jbe    80492fe <send_msg+0x60>
 80492de:	c7 44 24 04 08 a6 04 	movl   $0x804a608,0x4(%esp)
 80492e5:	08 
 80492e6:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80492ed:	e8 3e f6 ff ff       	call   8048930 <__printf_chk@plt>
 80492f2:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 80492f9:	e8 b2 f5 ff ff       	call   80488b0 <exit@plt>
 80492fe:	83 bc 24 40 40 00 00 	cmpl   $0x0,0x4040(%esp)
 8049305:	00 
 8049306:	b8 58 a7 04 08       	mov    $0x804a758,%eax
 804930b:	b9 60 a7 04 08       	mov    $0x804a760,%ecx
 8049310:	0f 44 c1             	cmove  %ecx,%eax
 8049313:	89 5c 24 1c          	mov    %ebx,0x1c(%esp)
 8049317:	89 54 24 18          	mov    %edx,0x18(%esp)
 804931b:	89 44 24 14          	mov    %eax,0x14(%esp)
 804931f:	a1 a0 c5 04 08       	mov    0x804c5a0,%eax
 8049324:	89 44 24 10          	mov    %eax,0x10(%esp)
 8049328:	c7 44 24 0c 69 a7 04 	movl   $0x804a769,0xc(%esp)
 804932f:	08 
 8049330:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
 8049337:	00 
 8049338:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 804933f:	00 
 8049340:	8d 5c 24 2c          	lea    0x2c(%esp),%ebx
 8049344:	89 1c 24             	mov    %ebx,(%esp)
 8049347:	e8 64 f6 ff ff       	call   80489b0 <__sprintf_chk@plt>
 804934c:	8d 84 24 2c 20 00 00 	lea    0x202c(%esp),%eax
 8049353:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049357:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 804935e:	00 
 804935f:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8049363:	c7 04 24 a0 c1 04 08 	movl   $0x804c1a0,(%esp)
 804936a:	e8 80 0e 00 00       	call   804a1ef <driver_post>
 804936f:	85 c0                	test   %eax,%eax
 8049371:	79 1b                	jns    804938e <send_msg+0xf0>
 8049373:	8d 84 24 2c 20 00 00 	lea    0x202c(%esp),%eax
 804937a:	89 04 24             	mov    %eax,(%esp)
 804937d:	e8 ee f4 ff ff       	call   8048870 <puts@plt>
 8049382:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8049389:	e8 22 f5 ff ff       	call   80488b0 <exit@plt>
 804938e:	8b 84 24 2c 40 00 00 	mov    0x402c(%esp),%eax
 8049395:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 804939c:	74 05                	je     80493a3 <send_msg+0x105>
 804939e:	e8 8d f4 ff ff       	call   8048830 <__stack_chk_fail@plt>
 80493a3:	81 c4 34 40 00 00    	add    $0x4034,%esp
 80493a9:	5b                   	pop    %ebx
 80493aa:	5f                   	pop    %edi
 80493ab:	c3                   	ret    

080493ac <explode_bomb>:
 80493ac:	83 ec 1c             	sub    $0x1c,%esp
 80493af:	c7 04 24 75 a7 04 08 	movl   $0x804a775,(%esp)
 80493b6:	e8 b5 f4 ff ff       	call   8048870 <puts@plt>
 80493bb:	c7 04 24 7e a7 04 08 	movl   $0x804a77e,(%esp)
 80493c2:	e8 a9 f4 ff ff       	call   8048870 <puts@plt>
 80493c7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 80493ce:	e8 cb fe ff ff       	call   804929e <send_msg>
 80493d3:	c7 04 24 2c a6 04 08 	movl   $0x804a62c,(%esp)
 80493da:	e8 91 f4 ff ff       	call   8048870 <puts@plt>
 80493df:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 80493e6:	e8 c5 f4 ff ff       	call   80488b0 <exit@plt>

080493eb <read_line>:
 80493eb:	83 ec 2c             	sub    $0x2c,%esp
 80493ee:	89 5c 24 20          	mov    %ebx,0x20(%esp)
 80493f2:	89 74 24 24          	mov    %esi,0x24(%esp)
 80493f6:	89 7c 24 28          	mov    %edi,0x28(%esp)
 80493fa:	e8 59 fe ff ff       	call   8049258 <skip>
 80493ff:	85 c0                	test   %eax,%eax
 8049401:	75 6c                	jne    804946f <read_line+0x84>
 8049403:	a1 c4 c7 04 08       	mov    0x804c7c4,%eax
 8049408:	39 05 f0 c7 04 08    	cmp    %eax,0x804c7f0
 804940e:	75 18                	jne    8049428 <read_line+0x3d>
 8049410:	c7 04 24 95 a7 04 08 	movl   $0x804a795,(%esp)
 8049417:	e8 54 f4 ff ff       	call   8048870 <puts@plt>
 804941c:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049423:	e8 88 f4 ff ff       	call   80488b0 <exit@plt>
 8049428:	c7 04 24 b3 a7 04 08 	movl   $0x804a7b3,(%esp)
 804942f:	e8 2c f4 ff ff       	call   8048860 <getenv@plt>
 8049434:	85 c0                	test   %eax,%eax
 8049436:	74 0c                	je     8049444 <read_line+0x59>
 8049438:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 804943f:	e8 6c f4 ff ff       	call   80488b0 <exit@plt>
 8049444:	a1 c4 c7 04 08       	mov    0x804c7c4,%eax
 8049449:	a3 f0 c7 04 08       	mov    %eax,0x804c7f0
 804944e:	e8 05 fe ff ff       	call   8049258 <skip>
 8049453:	85 c0                	test   %eax,%eax
 8049455:	75 18                	jne    804946f <read_line+0x84>
 8049457:	c7 04 24 95 a7 04 08 	movl   $0x804a795,(%esp)
 804945e:	e8 0d f4 ff ff       	call   8048870 <puts@plt>
 8049463:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 804946a:	e8 41 f4 ff ff       	call   80488b0 <exit@plt>
 804946f:	8b 15 ec c7 04 08    	mov    0x804c7ec,%edx
 8049475:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 8049478:	c1 e3 04             	shl    $0x4,%ebx
 804947b:	81 c3 00 c8 04 08    	add    $0x804c800,%ebx
 8049481:	89 df                	mov    %ebx,%edi
 8049483:	b8 00 00 00 00       	mov    $0x0,%eax
 8049488:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 804948d:	f2 ae                	repnz scas %es:(%edi),%al
 804948f:	f7 d1                	not    %ecx
 8049491:	83 e9 01             	sub    $0x1,%ecx
 8049494:	83 f9 4e             	cmp    $0x4e,%ecx
 8049497:	7e 37                	jle    80494d0 <read_line+0xe5>
 8049499:	c7 04 24 be a7 04 08 	movl   $0x804a7be,(%esp)
 80494a0:	e8 cb f3 ff ff       	call   8048870 <puts@plt>
 80494a5:	a1 ec c7 04 08       	mov    0x804c7ec,%eax
 80494aa:	8d 50 01             	lea    0x1(%eax),%edx
 80494ad:	89 15 ec c7 04 08    	mov    %edx,0x804c7ec
 80494b3:	6b c0 50             	imul   $0x50,%eax,%eax
 80494b6:	05 00 c8 04 08       	add    $0x804c800,%eax
 80494bb:	ba d9 a7 04 08       	mov    $0x804a7d9,%edx
 80494c0:	b9 04 00 00 00       	mov    $0x4,%ecx
 80494c5:	89 c7                	mov    %eax,%edi
 80494c7:	89 d6                	mov    %edx,%esi
 80494c9:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 80494cb:	e8 dc fe ff ff       	call   80493ac <explode_bomb>
 80494d0:	8d 04 92             	lea    (%edx,%edx,4),%eax
 80494d3:	c1 e0 04             	shl    $0x4,%eax
 80494d6:	c6 84 01 ff c7 04 08 	movb   $0x0,0x804c7ff(%ecx,%eax,1)
 80494dd:	00 
 80494de:	83 c2 01             	add    $0x1,%edx
 80494e1:	89 15 ec c7 04 08    	mov    %edx,0x804c7ec
 80494e7:	89 d8                	mov    %ebx,%eax
 80494e9:	8b 5c 24 20          	mov    0x20(%esp),%ebx
 80494ed:	8b 74 24 24          	mov    0x24(%esp),%esi
 80494f1:	8b 7c 24 28          	mov    0x28(%esp),%edi
 80494f5:	83 c4 2c             	add    $0x2c,%esp
 80494f8:	c3                   	ret    

080494f9 <read_six_numbers>:
 80494f9:	83 ec 2c             	sub    $0x2c,%esp
 80494fc:	8b 44 24 34          	mov    0x34(%esp),%eax
 8049500:	8d 50 14             	lea    0x14(%eax),%edx
 8049503:	89 54 24 1c          	mov    %edx,0x1c(%esp)
 8049507:	8d 50 10             	lea    0x10(%eax),%edx
 804950a:	89 54 24 18          	mov    %edx,0x18(%esp)
 804950e:	8d 50 0c             	lea    0xc(%eax),%edx
 8049511:	89 54 24 14          	mov    %edx,0x14(%esp)
 8049515:	8d 50 08             	lea    0x8(%eax),%edx
 8049518:	89 54 24 10          	mov    %edx,0x10(%esp)
 804951c:	8d 50 04             	lea    0x4(%eax),%edx
 804951f:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8049523:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049527:	c7 44 24 04 e9 a7 04 	movl   $0x804a7e9,0x4(%esp)
 804952e:	08 
 804952f:	8b 44 24 30          	mov    0x30(%esp),%eax
 8049533:	89 04 24             	mov    %eax,(%esp)
 8049536:	e8 b5 f3 ff ff       	call   80488f0 <__isoc99_sscanf@plt>
 804953b:	83 f8 05             	cmp    $0x5,%eax
 804953e:	7f 05                	jg     8049545 <read_six_numbers+0x4c>
 8049540:	e8 67 fe ff ff       	call   80493ac <explode_bomb>
 8049545:	83 c4 2c             	add    $0x2c,%esp
 8049548:	c3                   	ret    

08049549 <phase_defused>:
 8049549:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
 804954f:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8049555:	89 44 24 7c          	mov    %eax,0x7c(%esp)
 8049559:	31 c0                	xor    %eax,%eax
 804955b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049562:	e8 37 fd ff ff       	call   804929e <send_msg>
 8049567:	83 3d ec c7 04 08 06 	cmpl   $0x6,0x804c7ec
 804956e:	75 7e                	jne    80495ee <phase_defused+0xa5>
 8049570:	8d 44 24 2c          	lea    0x2c(%esp),%eax
 8049574:	89 44 24 10          	mov    %eax,0x10(%esp)
 8049578:	8d 44 24 28          	lea    0x28(%esp),%eax
 804957c:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049580:	8d 44 24 24          	lea    0x24(%esp),%eax
 8049584:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049588:	c7 44 24 04 fb a7 04 	movl   $0x804a7fb,0x4(%esp)
 804958f:	08 
 8049590:	c7 04 24 f0 c8 04 08 	movl   $0x804c8f0,(%esp)
 8049597:	e8 54 f3 ff ff       	call   80488f0 <__isoc99_sscanf@plt>
 804959c:	83 f8 03             	cmp    $0x3,%eax
 804959f:	75 35                	jne    80495d6 <phase_defused+0x8d>
 80495a1:	c7 44 24 04 04 a8 04 	movl   $0x804a804,0x4(%esp)
 80495a8:	08 
 80495a9:	8d 44 24 2c          	lea    0x2c(%esp),%eax
 80495ad:	89 04 24             	mov    %eax,(%esp)
 80495b0:	e8 ef fa ff ff       	call   80490a4 <strings_not_equal>
 80495b5:	85 c0                	test   %eax,%eax
 80495b7:	75 1d                	jne    80495d6 <phase_defused+0x8d>
 80495b9:	c7 04 24 50 a6 04 08 	movl   $0x804a650,(%esp)
 80495c0:	e8 ab f2 ff ff       	call   8048870 <puts@plt>
 80495c5:	c7 04 24 78 a6 04 08 	movl   $0x804a678,(%esp)
 80495cc:	e8 9f f2 ff ff       	call   8048870 <puts@plt>
 80495d1:	e8 ba f9 ff ff       	call   8048f90 <secret_phase>
 80495d6:	c7 04 24 b0 a6 04 08 	movl   $0x804a6b0,(%esp)
 80495dd:	e8 8e f2 ff ff       	call   8048870 <puts@plt>
 80495e2:	c7 04 24 dc a6 04 08 	movl   $0x804a6dc,(%esp)
 80495e9:	e8 82 f2 ff ff       	call   8048870 <puts@plt>
 80495ee:	8b 44 24 7c          	mov    0x7c(%esp),%eax
 80495f2:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 80495f9:	74 05                	je     8049600 <phase_defused+0xb7>
 80495fb:	e8 30 f2 ff ff       	call   8048830 <__stack_chk_fail@plt>
 8049600:	81 c4 8c 00 00 00    	add    $0x8c,%esp
 8049606:	c3                   	ret    
 8049607:	90                   	nop
 8049608:	90                   	nop
 8049609:	90                   	nop
 804960a:	90                   	nop
 804960b:	90                   	nop
 804960c:	90                   	nop
 804960d:	90                   	nop
 804960e:	90                   	nop
 804960f:	90                   	nop

08049610 <rio_readlineb>:
 8049610:	55                   	push   %ebp
 8049611:	57                   	push   %edi
 8049612:	56                   	push   %esi
 8049613:	53                   	push   %ebx
 8049614:	83 ec 3c             	sub    $0x3c,%esp
 8049617:	89 c3                	mov    %eax,%ebx
 8049619:	83 f9 01             	cmp    $0x1,%ecx
 804961c:	0f 86 bb 00 00 00    	jbe    80496dd <rio_readlineb+0xcd>
 8049622:	89 4c 24 1c          	mov    %ecx,0x1c(%esp)
 8049626:	89 54 24 18          	mov    %edx,0x18(%esp)
 804962a:	bd 01 00 00 00       	mov    $0x1,%ebp
 804962f:	8d 78 0c             	lea    0xc(%eax),%edi
 8049632:	eb 3c                	jmp    8049670 <rio_readlineb+0x60>
 8049634:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
 804963b:	00 
 804963c:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8049640:	8b 03                	mov    (%ebx),%eax
 8049642:	89 04 24             	mov    %eax,(%esp)
 8049645:	e8 86 f1 ff ff       	call   80487d0 <read@plt>
 804964a:	89 43 04             	mov    %eax,0x4(%ebx)
 804964d:	85 c0                	test   %eax,%eax
 804964f:	79 14                	jns    8049665 <rio_readlineb+0x55>
 8049651:	e8 ca f2 ff ff       	call   8048920 <__errno_location@plt>
 8049656:	83 38 04             	cmpl   $0x4,(%eax)
 8049659:	74 15                	je     8049670 <rio_readlineb+0x60>
 804965b:	90                   	nop
 804965c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049660:	e9 a0 00 00 00       	jmp    8049705 <rio_readlineb+0xf5>
 8049665:	85 c0                	test   %eax,%eax
 8049667:	0f 84 9f 00 00 00    	je     804970c <rio_readlineb+0xfc>
 804966d:	89 7b 08             	mov    %edi,0x8(%ebx)
 8049670:	8b 73 04             	mov    0x4(%ebx),%esi
 8049673:	85 f6                	test   %esi,%esi
 8049675:	7e bd                	jle    8049634 <rio_readlineb+0x24>
 8049677:	85 f6                	test   %esi,%esi
 8049679:	0f 85 96 00 00 00    	jne    8049715 <rio_readlineb+0x105>
 804967f:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
 8049686:	00 
 8049687:	89 74 24 08          	mov    %esi,0x8(%esp)
 804968b:	8b 43 08             	mov    0x8(%ebx),%eax
 804968e:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049692:	8d 44 24 2f          	lea    0x2f(%esp),%eax
 8049696:	89 04 24             	mov    %eax,(%esp)
 8049699:	e8 f2 f1 ff ff       	call   8048890 <__memcpy_chk@plt>
 804969e:	01 73 08             	add    %esi,0x8(%ebx)
 80496a1:	29 73 04             	sub    %esi,0x4(%ebx)
 80496a4:	83 fe 01             	cmp    $0x1,%esi
 80496a7:	75 18                	jne    80496c1 <rio_readlineb+0xb1>
 80496a9:	0f b6 44 24 2f       	movzbl 0x2f(%esp),%eax
 80496ae:	8b 54 24 18          	mov    0x18(%esp),%edx
 80496b2:	88 02                	mov    %al,(%edx)
 80496b4:	83 c2 01             	add    $0x1,%edx
 80496b7:	89 54 24 18          	mov    %edx,0x18(%esp)
 80496bb:	3c 0a                	cmp    $0xa,%al
 80496bd:	75 13                	jne    80496d2 <rio_readlineb+0xc2>
 80496bf:	eb 25                	jmp    80496e6 <rio_readlineb+0xd6>
 80496c1:	89 e8                	mov    %ebp,%eax
 80496c3:	85 f6                	test   %esi,%esi
 80496c5:	75 28                	jne    80496ef <rio_readlineb+0xdf>
 80496c7:	83 f8 01             	cmp    $0x1,%eax
 80496ca:	75 1a                	jne    80496e6 <rio_readlineb+0xd6>
 80496cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80496d0:	eb 24                	jmp    80496f6 <rio_readlineb+0xe6>
 80496d2:	83 c5 01             	add    $0x1,%ebp
 80496d5:	3b 6c 24 1c          	cmp    0x1c(%esp),%ebp
 80496d9:	75 95                	jne    8049670 <rio_readlineb+0x60>
 80496db:	eb 09                	jmp    80496e6 <rio_readlineb+0xd6>
 80496dd:	89 54 24 18          	mov    %edx,0x18(%esp)
 80496e1:	bd 01 00 00 00       	mov    $0x1,%ebp
 80496e6:	8b 44 24 18          	mov    0x18(%esp),%eax
 80496ea:	c6 00 00             	movb   $0x0,(%eax)
 80496ed:	eb 0c                	jmp    80496fb <rio_readlineb+0xeb>
 80496ef:	bd ff ff ff ff       	mov    $0xffffffff,%ebp
 80496f4:	eb 05                	jmp    80496fb <rio_readlineb+0xeb>
 80496f6:	bd 00 00 00 00       	mov    $0x0,%ebp
 80496fb:	89 e8                	mov    %ebp,%eax
 80496fd:	83 c4 3c             	add    $0x3c,%esp
 8049700:	5b                   	pop    %ebx
 8049701:	5e                   	pop    %esi
 8049702:	5f                   	pop    %edi
 8049703:	5d                   	pop    %ebp
 8049704:	c3                   	ret    
 8049705:	be ff ff ff ff       	mov    $0xffffffff,%esi
 804970a:	eb 05                	jmp    8049711 <rio_readlineb+0x101>
 804970c:	be 00 00 00 00       	mov    $0x0,%esi
 8049711:	89 e8                	mov    %ebp,%eax
 8049713:	eb ae                	jmp    80496c3 <rio_readlineb+0xb3>
 8049715:	8b 43 08             	mov    0x8(%ebx),%eax
 8049718:	0f b6 00             	movzbl (%eax),%eax
 804971b:	88 44 24 2f          	mov    %al,0x2f(%esp)
 804971f:	83 43 08 01          	addl   $0x1,0x8(%ebx)
 8049723:	83 6b 04 01          	subl   $0x1,0x4(%ebx)
 8049727:	eb 80                	jmp    80496a9 <rio_readlineb+0x99>

08049729 <sigalrm_handler>:
 8049729:	83 ec 1c             	sub    $0x1c,%esp
 804972c:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 8049733:	00 
 8049734:	c7 44 24 08 14 a8 04 	movl   $0x804a814,0x8(%esp)
 804973b:	08 
 804973c:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049743:	00 
 8049744:	a1 c0 c7 04 08       	mov    0x804c7c0,%eax
 8049749:	89 04 24             	mov    %eax,(%esp)
 804974c:	e8 ff f1 ff ff       	call   8048950 <__fprintf_chk@plt>
 8049751:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049758:	e8 53 f1 ff ff       	call   80488b0 <exit@plt>

0804975d <submitr>:
 804975d:	55                   	push   %ebp
 804975e:	57                   	push   %edi
 804975f:	56                   	push   %esi
 8049760:	53                   	push   %ebx
 8049761:	81 ec 7c a0 00 00    	sub    $0xa07c,%esp
 8049767:	8b 9c 24 90 a0 00 00 	mov    0xa090(%esp),%ebx
 804976e:	8b 84 24 98 a0 00 00 	mov    0xa098(%esp),%eax
 8049775:	89 44 24 30          	mov    %eax,0x30(%esp)
 8049779:	8b 94 24 9c a0 00 00 	mov    0xa09c(%esp),%edx
 8049780:	89 54 24 34          	mov    %edx,0x34(%esp)
 8049784:	8b 8c 24 a0 a0 00 00 	mov    0xa0a0(%esp),%ecx
 804978b:	89 4c 24 38          	mov    %ecx,0x38(%esp)
 804978f:	8b ac 24 a4 a0 00 00 	mov    0xa0a4(%esp),%ebp
 8049796:	8b 84 24 a8 a0 00 00 	mov    0xa0a8(%esp),%eax
 804979d:	89 44 24 28          	mov    %eax,0x28(%esp)
 80497a1:	65 8b 15 14 00 00 00 	mov    %gs:0x14,%edx
 80497a8:	89 94 24 6c a0 00 00 	mov    %edx,0xa06c(%esp)
 80497af:	31 d2                	xor    %edx,%edx
 80497b1:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%esp)
 80497b8:	00 
 80497b9:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 80497c0:	00 
 80497c1:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 80497c8:	00 
 80497c9:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 80497d0:	e8 6b f1 ff ff       	call   8048940 <socket@plt>
 80497d5:	89 44 24 2c          	mov    %eax,0x2c(%esp)
 80497d9:	85 c0                	test   %eax,%eax
 80497db:	79 52                	jns    804982f <submitr+0xd2>
 80497dd:	8b 4c 24 28          	mov    0x28(%esp),%ecx
 80497e1:	c7 01 45 72 72 6f    	movl   $0x6f727245,(%ecx)
 80497e7:	c7 41 04 72 3a 20 43 	movl   $0x43203a72,0x4(%ecx)
 80497ee:	c7 41 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%ecx)
 80497f5:	c7 41 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%ecx)
 80497fc:	c7 41 10 61 62 6c 65 	movl   $0x656c6261,0x10(%ecx)
 8049803:	c7 41 14 20 74 6f 20 	movl   $0x206f7420,0x14(%ecx)
 804980a:	c7 41 18 63 72 65 61 	movl   $0x61657263,0x18(%ecx)
 8049811:	c7 41 1c 74 65 20 73 	movl   $0x73206574,0x1c(%ecx)
 8049818:	c7 41 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%ecx)
 804981f:	66 c7 41 24 74 00    	movw   $0x74,0x24(%ecx)
 8049825:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804982a:	e9 e8 06 00 00       	jmp    8049f17 <submitr+0x7ba>
 804982f:	89 1c 24             	mov    %ebx,(%esp)
 8049832:	e8 29 f1 ff ff       	call   8048960 <gethostbyname@plt>
 8049837:	85 c0                	test   %eax,%eax
 8049839:	75 70                	jne    80498ab <submitr+0x14e>
 804983b:	8b 44 24 28          	mov    0x28(%esp),%eax
 804983f:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049845:	c7 40 04 72 3a 20 44 	movl   $0x44203a72,0x4(%eax)
 804984c:	c7 40 08 4e 53 20 69 	movl   $0x6920534e,0x8(%eax)
 8049853:	c7 40 0c 73 20 75 6e 	movl   $0x6e752073,0xc(%eax)
 804985a:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049861:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049868:	c7 40 18 72 65 73 6f 	movl   $0x6f736572,0x18(%eax)
 804986f:	c7 40 1c 6c 76 65 20 	movl   $0x2065766c,0x1c(%eax)
 8049876:	c7 40 20 73 65 72 76 	movl   $0x76726573,0x20(%eax)
 804987d:	c7 40 24 65 72 20 61 	movl   $0x61207265,0x24(%eax)
 8049884:	c7 40 28 64 64 72 65 	movl   $0x65726464,0x28(%eax)
 804988b:	66 c7 40 2c 73 73    	movw   $0x7373,0x2c(%eax)
 8049891:	c6 40 2e 00          	movb   $0x0,0x2e(%eax)
 8049895:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8049899:	89 04 24             	mov    %eax,(%esp)
 804989c:	e8 ef f0 ff ff       	call   8048990 <close@plt>
 80498a1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80498a6:	e9 6c 06 00 00       	jmp    8049f17 <submitr+0x7ba>
 80498ab:	8d 9c 24 54 a0 00 00 	lea    0xa054(%esp),%ebx
 80498b2:	c7 84 24 54 a0 00 00 	movl   $0x0,0xa054(%esp)
 80498b9:	00 00 00 00 
 80498bd:	c7 84 24 58 a0 00 00 	movl   $0x0,0xa058(%esp)
 80498c4:	00 00 00 00 
 80498c8:	c7 84 24 5c a0 00 00 	movl   $0x0,0xa05c(%esp)
 80498cf:	00 00 00 00 
 80498d3:	c7 84 24 60 a0 00 00 	movl   $0x0,0xa060(%esp)
 80498da:	00 00 00 00 
 80498de:	66 c7 84 24 54 a0 00 	movw   $0x2,0xa054(%esp)
 80498e5:	00 02 00 
 80498e8:	c7 44 24 0c 0c 00 00 	movl   $0xc,0xc(%esp)
 80498ef:	00 
 80498f0:	8b 50 0c             	mov    0xc(%eax),%edx
 80498f3:	89 54 24 08          	mov    %edx,0x8(%esp)
 80498f7:	8b 40 10             	mov    0x10(%eax),%eax
 80498fa:	8b 00                	mov    (%eax),%eax
 80498fc:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049900:	8d 84 24 58 a0 00 00 	lea    0xa058(%esp),%eax
 8049907:	89 04 24             	mov    %eax,(%esp)
 804990a:	e8 71 ef ff ff       	call   8048880 <__memmove_chk@plt>
 804990f:	0f b7 84 24 94 a0 00 	movzwl 0xa094(%esp),%eax
 8049916:	00 
 8049917:	66 c1 c8 08          	ror    $0x8,%ax
 804991b:	66 89 84 24 56 a0 00 	mov    %ax,0xa056(%esp)
 8049922:	00 
 8049923:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 804992a:	00 
 804992b:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804992f:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8049933:	89 04 24             	mov    %eax,(%esp)
 8049936:	e8 45 f0 ff ff       	call   8048980 <connect@plt>
 804993b:	85 c0                	test   %eax,%eax
 804993d:	79 62                	jns    80499a1 <submitr+0x244>
 804993f:	8b 54 24 28          	mov    0x28(%esp),%edx
 8049943:	c7 02 45 72 72 6f    	movl   $0x6f727245,(%edx)
 8049949:	c7 42 04 72 3a 20 55 	movl   $0x55203a72,0x4(%edx)
 8049950:	c7 42 08 6e 61 62 6c 	movl   $0x6c62616e,0x8(%edx)
 8049957:	c7 42 0c 65 20 74 6f 	movl   $0x6f742065,0xc(%edx)
 804995e:	c7 42 10 20 63 6f 6e 	movl   $0x6e6f6320,0x10(%edx)
 8049965:	c7 42 14 6e 65 63 74 	movl   $0x7463656e,0x14(%edx)
 804996c:	c7 42 18 20 74 6f 20 	movl   $0x206f7420,0x18(%edx)
 8049973:	c7 42 1c 74 68 65 20 	movl   $0x20656874,0x1c(%edx)
 804997a:	c7 42 20 73 65 72 76 	movl   $0x76726573,0x20(%edx)
 8049981:	66 c7 42 24 65 72    	movw   $0x7265,0x24(%edx)
 8049987:	c6 42 26 00          	movb   $0x0,0x26(%edx)
 804998b:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 804998f:	89 04 24             	mov    %eax,(%esp)
 8049992:	e8 f9 ef ff ff       	call   8048990 <close@plt>
 8049997:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804999c:	e9 76 05 00 00       	jmp    8049f17 <submitr+0x7ba>
 80499a1:	ba ff ff ff ff       	mov    $0xffffffff,%edx
 80499a6:	89 ef                	mov    %ebp,%edi
 80499a8:	b8 00 00 00 00       	mov    $0x0,%eax
 80499ad:	89 d1                	mov    %edx,%ecx
 80499af:	f2 ae                	repnz scas %es:(%edi),%al
 80499b1:	89 cb                	mov    %ecx,%ebx
 80499b3:	f7 d3                	not    %ebx
 80499b5:	8b 7c 24 30          	mov    0x30(%esp),%edi
 80499b9:	89 d1                	mov    %edx,%ecx
 80499bb:	f2 ae                	repnz scas %es:(%edi),%al
 80499bd:	89 4c 24 3c          	mov    %ecx,0x3c(%esp)
 80499c1:	8b 7c 24 34          	mov    0x34(%esp),%edi
 80499c5:	89 d1                	mov    %edx,%ecx
 80499c7:	f2 ae                	repnz scas %es:(%edi),%al
 80499c9:	89 ce                	mov    %ecx,%esi
 80499cb:	f7 d6                	not    %esi
 80499cd:	8b 7c 24 38          	mov    0x38(%esp),%edi
 80499d1:	89 d1                	mov    %edx,%ecx
 80499d3:	f2 ae                	repnz scas %es:(%edi),%al
 80499d5:	2b 74 24 3c          	sub    0x3c(%esp),%esi
 80499d9:	29 ce                	sub    %ecx,%esi
 80499db:	8d 44 5b fd          	lea    -0x3(%ebx,%ebx,2),%eax
 80499df:	8d 44 06 7b          	lea    0x7b(%esi,%eax,1),%eax
 80499e3:	3d 00 20 00 00       	cmp    $0x2000,%eax
 80499e8:	76 7b                	jbe    8049a65 <submitr+0x308>
 80499ea:	8b 44 24 28          	mov    0x28(%esp),%eax
 80499ee:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 80499f4:	c7 40 04 72 3a 20 52 	movl   $0x52203a72,0x4(%eax)
 80499fb:	c7 40 08 65 73 75 6c 	movl   $0x6c757365,0x8(%eax)
 8049a02:	c7 40 0c 74 20 73 74 	movl   $0x74732074,0xc(%eax)
 8049a09:	c7 40 10 72 69 6e 67 	movl   $0x676e6972,0x10(%eax)
 8049a10:	c7 40 14 20 74 6f 6f 	movl   $0x6f6f7420,0x14(%eax)
 8049a17:	c7 40 18 20 6c 61 72 	movl   $0x72616c20,0x18(%eax)
 8049a1e:	c7 40 1c 67 65 2e 20 	movl   $0x202e6567,0x1c(%eax)
 8049a25:	c7 40 20 49 6e 63 72 	movl   $0x72636e49,0x20(%eax)
 8049a2c:	c7 40 24 65 61 73 65 	movl   $0x65736165,0x24(%eax)
 8049a33:	c7 40 28 20 53 55 42 	movl   $0x42555320,0x28(%eax)
 8049a3a:	c7 40 2c 4d 49 54 52 	movl   $0x5254494d,0x2c(%eax)
 8049a41:	c7 40 30 5f 4d 41 58 	movl   $0x58414d5f,0x30(%eax)
 8049a48:	c7 40 34 42 55 46 00 	movl   $0x465542,0x34(%eax)
 8049a4f:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8049a53:	89 04 24             	mov    %eax,(%esp)
 8049a56:	e8 35 ef ff ff       	call   8048990 <close@plt>
 8049a5b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049a60:	e9 b2 04 00 00       	jmp    8049f17 <submitr+0x7ba>
 8049a65:	8d 94 24 54 40 00 00 	lea    0x4054(%esp),%edx
 8049a6c:	b9 00 08 00 00       	mov    $0x800,%ecx
 8049a71:	b8 00 00 00 00       	mov    $0x0,%eax
 8049a76:	89 d7                	mov    %edx,%edi
 8049a78:	f3 ab                	rep stos %eax,%es:(%edi)
 8049a7a:	89 ef                	mov    %ebp,%edi
 8049a7c:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049a81:	f2 ae                	repnz scas %es:(%edi),%al
 8049a83:	f7 d1                	not    %ecx
 8049a85:	89 ce                	mov    %ecx,%esi
 8049a87:	83 ee 01             	sub    $0x1,%esi
 8049a8a:	0f 84 99 04 00 00    	je     8049f29 <submitr+0x7cc>
 8049a90:	89 d3                	mov    %edx,%ebx
 8049a92:	0f b6 45 00          	movzbl 0x0(%ebp),%eax
 8049a96:	3c 2a                	cmp    $0x2a,%al
 8049a98:	74 24                	je     8049abe <submitr+0x361>
 8049a9a:	3c 2d                	cmp    $0x2d,%al
 8049a9c:	74 20                	je     8049abe <submitr+0x361>
 8049a9e:	3c 2e                	cmp    $0x2e,%al
 8049aa0:	74 1c                	je     8049abe <submitr+0x361>
 8049aa2:	3c 5f                	cmp    $0x5f,%al
 8049aa4:	74 18                	je     8049abe <submitr+0x361>
 8049aa6:	8d 50 d0             	lea    -0x30(%eax),%edx
 8049aa9:	80 fa 09             	cmp    $0x9,%dl
 8049aac:	76 10                	jbe    8049abe <submitr+0x361>
 8049aae:	8d 50 bf             	lea    -0x41(%eax),%edx
 8049ab1:	80 fa 19             	cmp    $0x19,%dl
 8049ab4:	76 08                	jbe    8049abe <submitr+0x361>
 8049ab6:	8d 50 9f             	lea    -0x61(%eax),%edx
 8049ab9:	80 fa 19             	cmp    $0x19,%dl
 8049abc:	77 07                	ja     8049ac5 <submitr+0x368>
 8049abe:	88 03                	mov    %al,(%ebx)
 8049ac0:	83 c3 01             	add    $0x1,%ebx
 8049ac3:	eb 69                	jmp    8049b2e <submitr+0x3d1>
 8049ac5:	3c 20                	cmp    $0x20,%al
 8049ac7:	75 08                	jne    8049ad1 <submitr+0x374>
 8049ac9:	c6 03 2b             	movb   $0x2b,(%ebx)
 8049acc:	83 c3 01             	add    $0x1,%ebx
 8049acf:	eb 5d                	jmp    8049b2e <submitr+0x3d1>
 8049ad1:	8d 50 e0             	lea    -0x20(%eax),%edx
 8049ad4:	80 fa 5f             	cmp    $0x5f,%dl
 8049ad7:	76 04                	jbe    8049add <submitr+0x380>
 8049ad9:	3c 09                	cmp    $0x9,%al
 8049adb:	75 62                	jne    8049b3f <submitr+0x3e2>
 8049add:	0f b6 c0             	movzbl %al,%eax
 8049ae0:	89 44 24 10          	mov    %eax,0x10(%esp)
 8049ae4:	c7 44 24 0c 20 a9 04 	movl   $0x804a920,0xc(%esp)
 8049aeb:	08 
 8049aec:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
 8049af3:	00 
 8049af4:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049afb:	00 
 8049afc:	8d 94 24 64 a0 00 00 	lea    0xa064(%esp),%edx
 8049b03:	89 14 24             	mov    %edx,(%esp)
 8049b06:	e8 a5 ee ff ff       	call   80489b0 <__sprintf_chk@plt>
 8049b0b:	0f b6 84 24 64 a0 00 	movzbl 0xa064(%esp),%eax
 8049b12:	00 
 8049b13:	88 03                	mov    %al,(%ebx)
 8049b15:	0f b6 84 24 65 a0 00 	movzbl 0xa065(%esp),%eax
 8049b1c:	00 
 8049b1d:	88 43 01             	mov    %al,0x1(%ebx)
 8049b20:	0f b6 84 24 66 a0 00 	movzbl 0xa066(%esp),%eax
 8049b27:	00 
 8049b28:	88 43 02             	mov    %al,0x2(%ebx)
 8049b2b:	83 c3 03             	add    $0x3,%ebx
 8049b2e:	83 c5 01             	add    $0x1,%ebp
 8049b31:	83 ee 01             	sub    $0x1,%esi
 8049b34:	0f 85 58 ff ff ff    	jne    8049a92 <submitr+0x335>
 8049b3a:	e9 ea 03 00 00       	jmp    8049f29 <submitr+0x7cc>
 8049b3f:	8b 7c 24 28          	mov    0x28(%esp),%edi
 8049b43:	be 38 a8 04 08       	mov    $0x804a838,%esi
 8049b48:	b8 43 00 00 00       	mov    $0x43,%eax
 8049b4d:	f7 c7 01 00 00 00    	test   $0x1,%edi
 8049b53:	74 1a                	je     8049b6f <submitr+0x412>
 8049b55:	0f b6 05 38 a8 04 08 	movzbl 0x804a838,%eax
 8049b5c:	88 07                	mov    %al,(%edi)
 8049b5e:	8b 7c 24 28          	mov    0x28(%esp),%edi
 8049b62:	83 c7 01             	add    $0x1,%edi
 8049b65:	be 39 a8 04 08       	mov    $0x804a839,%esi
 8049b6a:	b8 42 00 00 00       	mov    $0x42,%eax
 8049b6f:	f7 c7 02 00 00 00    	test   $0x2,%edi
 8049b75:	74 0f                	je     8049b86 <submitr+0x429>
 8049b77:	0f b7 16             	movzwl (%esi),%edx
 8049b7a:	66 89 17             	mov    %dx,(%edi)
 8049b7d:	83 c7 02             	add    $0x2,%edi
 8049b80:	83 c6 02             	add    $0x2,%esi
 8049b83:	83 e8 02             	sub    $0x2,%eax
 8049b86:	89 c1                	mov    %eax,%ecx
 8049b88:	c1 e9 02             	shr    $0x2,%ecx
 8049b8b:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 8049b8d:	ba 00 00 00 00       	mov    $0x0,%edx
 8049b92:	a8 02                	test   $0x2,%al
 8049b94:	74 0b                	je     8049ba1 <submitr+0x444>
 8049b96:	0f b7 16             	movzwl (%esi),%edx
 8049b99:	66 89 17             	mov    %dx,(%edi)
 8049b9c:	ba 02 00 00 00       	mov    $0x2,%edx
 8049ba1:	a8 01                	test   $0x1,%al
 8049ba3:	74 07                	je     8049bac <submitr+0x44f>
 8049ba5:	0f b6 04 16          	movzbl (%esi,%edx,1),%eax
 8049ba9:	88 04 17             	mov    %al,(%edi,%edx,1)
 8049bac:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8049bb0:	89 04 24             	mov    %eax,(%esp)
 8049bb3:	e8 d8 ed ff ff       	call   8048990 <close@plt>
 8049bb8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049bbd:	e9 55 03 00 00       	jmp    8049f17 <submitr+0x7ba>
 8049bc2:	89 fd                	mov    %edi,%ebp
 8049bc4:	8b 7c 24 2c          	mov    0x2c(%esp),%edi
 8049bc8:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 8049bcc:	89 74 24 04          	mov    %esi,0x4(%esp)
 8049bd0:	89 3c 24             	mov    %edi,(%esp)
 8049bd3:	e8 f8 ec ff ff       	call   80488d0 <write@plt>
 8049bd8:	85 c0                	test   %eax,%eax
 8049bda:	7f 0f                	jg     8049beb <submitr+0x48e>
 8049bdc:	e8 3f ed ff ff       	call   8048920 <__errno_location@plt>
 8049be1:	83 38 04             	cmpl   $0x4,(%eax)
 8049be4:	75 0f                	jne    8049bf5 <submitr+0x498>
 8049be6:	b8 00 00 00 00       	mov    $0x0,%eax
 8049beb:	01 c6                	add    %eax,%esi
 8049bed:	29 c3                	sub    %eax,%ebx
 8049bef:	75 d7                	jne    8049bc8 <submitr+0x46b>
 8049bf1:	85 ed                	test   %ebp,%ebp
 8049bf3:	79 66                	jns    8049c5b <submitr+0x4fe>
 8049bf5:	8b 54 24 28          	mov    0x28(%esp),%edx
 8049bf9:	c7 02 45 72 72 6f    	movl   $0x6f727245,(%edx)
 8049bff:	c7 42 04 72 3a 20 43 	movl   $0x43203a72,0x4(%edx)
 8049c06:	c7 42 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%edx)
 8049c0d:	c7 42 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%edx)
 8049c14:	c7 42 10 61 62 6c 65 	movl   $0x656c6261,0x10(%edx)
 8049c1b:	c7 42 14 20 74 6f 20 	movl   $0x206f7420,0x14(%edx)
 8049c22:	c7 42 18 77 72 69 74 	movl   $0x74697277,0x18(%edx)
 8049c29:	c7 42 1c 65 20 74 6f 	movl   $0x6f742065,0x1c(%edx)
 8049c30:	c7 42 20 20 74 68 65 	movl   $0x65687420,0x20(%edx)
 8049c37:	c7 42 24 20 73 65 72 	movl   $0x72657320,0x24(%edx)
 8049c3e:	c7 42 28 76 65 72 00 	movl   $0x726576,0x28(%edx)
 8049c45:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8049c49:	89 04 24             	mov    %eax,(%esp)
 8049c4c:	e8 3f ed ff ff       	call   8048990 <close@plt>
 8049c51:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049c56:	e9 bc 02 00 00       	jmp    8049f17 <submitr+0x7ba>
 8049c5b:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8049c5f:	89 44 24 48          	mov    %eax,0x48(%esp)
 8049c63:	c7 44 24 4c 00 00 00 	movl   $0x0,0x4c(%esp)
 8049c6a:	00 
 8049c6b:	8d 44 24 54          	lea    0x54(%esp),%eax
 8049c6f:	89 44 24 50          	mov    %eax,0x50(%esp)
 8049c73:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049c78:	8d 94 24 54 20 00 00 	lea    0x2054(%esp),%edx
 8049c7f:	8d 44 24 48          	lea    0x48(%esp),%eax
 8049c83:	e8 88 f9 ff ff       	call   8049610 <rio_readlineb>
 8049c88:	85 c0                	test   %eax,%eax
 8049c8a:	7f 7a                	jg     8049d06 <submitr+0x5a9>
 8049c8c:	8b 54 24 28          	mov    0x28(%esp),%edx
 8049c90:	c7 02 45 72 72 6f    	movl   $0x6f727245,(%edx)
 8049c96:	c7 42 04 72 3a 20 43 	movl   $0x43203a72,0x4(%edx)
 8049c9d:	c7 42 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%edx)
 8049ca4:	c7 42 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%edx)
 8049cab:	c7 42 10 61 62 6c 65 	movl   $0x656c6261,0x10(%edx)
 8049cb2:	c7 42 14 20 74 6f 20 	movl   $0x206f7420,0x14(%edx)
 8049cb9:	c7 42 18 72 65 61 64 	movl   $0x64616572,0x18(%edx)
 8049cc0:	c7 42 1c 20 66 69 72 	movl   $0x72696620,0x1c(%edx)
 8049cc7:	c7 42 20 73 74 20 68 	movl   $0x68207473,0x20(%edx)
 8049cce:	c7 42 24 65 61 64 65 	movl   $0x65646165,0x24(%edx)
 8049cd5:	c7 42 28 72 20 66 72 	movl   $0x72662072,0x28(%edx)
 8049cdc:	c7 42 2c 6f 6d 20 73 	movl   $0x73206d6f,0x2c(%edx)
 8049ce3:	c7 42 30 65 72 76 65 	movl   $0x65767265,0x30(%edx)
 8049cea:	66 c7 42 34 72 00    	movw   $0x72,0x34(%edx)
 8049cf0:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8049cf4:	89 04 24             	mov    %eax,(%esp)
 8049cf7:	e8 94 ec ff ff       	call   8048990 <close@plt>
 8049cfc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049d01:	e9 11 02 00 00       	jmp    8049f17 <submitr+0x7ba>
 8049d06:	8d 84 24 54 80 00 00 	lea    0x8054(%esp),%eax
 8049d0d:	89 44 24 10          	mov    %eax,0x10(%esp)
 8049d11:	8d 44 24 44          	lea    0x44(%esp),%eax
 8049d15:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049d19:	8d 84 24 54 60 00 00 	lea    0x6054(%esp),%eax
 8049d20:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049d24:	c7 44 24 04 27 a9 04 	movl   $0x804a927,0x4(%esp)
 8049d2b:	08 
 8049d2c:	8d 84 24 54 20 00 00 	lea    0x2054(%esp),%eax
 8049d33:	89 04 24             	mov    %eax,(%esp)
 8049d36:	e8 b5 eb ff ff       	call   80488f0 <__isoc99_sscanf@plt>
 8049d3b:	8b 44 24 44          	mov    0x44(%esp),%eax
 8049d3f:	3d c8 00 00 00       	cmp    $0xc8,%eax
 8049d44:	0f 84 d3 00 00 00    	je     8049e1d <submitr+0x6c0>
 8049d4a:	8d 94 24 54 80 00 00 	lea    0x8054(%esp),%edx
 8049d51:	89 54 24 14          	mov    %edx,0x14(%esp)
 8049d55:	89 44 24 10          	mov    %eax,0x10(%esp)
 8049d59:	c7 44 24 0c 7c a8 04 	movl   $0x804a87c,0xc(%esp)
 8049d60:	08 
 8049d61:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
 8049d68:	ff 
 8049d69:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049d70:	00 
 8049d71:	8b 54 24 28          	mov    0x28(%esp),%edx
 8049d75:	89 14 24             	mov    %edx,(%esp)
 8049d78:	e8 33 ec ff ff       	call   80489b0 <__sprintf_chk@plt>
 8049d7d:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8049d81:	89 04 24             	mov    %eax,(%esp)
 8049d84:	e8 07 ec ff ff       	call   8048990 <close@plt>
 8049d89:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049d8e:	e9 84 01 00 00       	jmp    8049f17 <submitr+0x7ba>
 8049d93:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049d98:	8d 94 24 54 20 00 00 	lea    0x2054(%esp),%edx
 8049d9f:	8d 44 24 48          	lea    0x48(%esp),%eax
 8049da3:	e8 68 f8 ff ff       	call   8049610 <rio_readlineb>
 8049da8:	85 c0                	test   %eax,%eax
 8049daa:	7f 71                	jg     8049e1d <submitr+0x6c0>
 8049dac:	8b 54 24 28          	mov    0x28(%esp),%edx
 8049db0:	c7 02 45 72 72 6f    	movl   $0x6f727245,(%edx)
 8049db6:	c7 42 04 72 3a 20 43 	movl   $0x43203a72,0x4(%edx)
 8049dbd:	c7 42 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%edx)
 8049dc4:	c7 42 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%edx)
 8049dcb:	c7 42 10 61 62 6c 65 	movl   $0x656c6261,0x10(%edx)
 8049dd2:	c7 42 14 20 74 6f 20 	movl   $0x206f7420,0x14(%edx)
 8049dd9:	c7 42 18 72 65 61 64 	movl   $0x64616572,0x18(%edx)
 8049de0:	c7 42 1c 20 68 65 61 	movl   $0x61656820,0x1c(%edx)
 8049de7:	c7 42 20 64 65 72 73 	movl   $0x73726564,0x20(%edx)
 8049dee:	c7 42 24 20 66 72 6f 	movl   $0x6f726620,0x24(%edx)
 8049df5:	c7 42 28 6d 20 73 65 	movl   $0x6573206d,0x28(%edx)
 8049dfc:	c7 42 2c 72 76 65 72 	movl   $0x72657672,0x2c(%edx)
 8049e03:	c6 42 30 00          	movb   $0x0,0x30(%edx)
 8049e07:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8049e0b:	89 04 24             	mov    %eax,(%esp)
 8049e0e:	e8 7d eb ff ff       	call   8048990 <close@plt>
 8049e13:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049e18:	e9 fa 00 00 00       	jmp    8049f17 <submitr+0x7ba>
 8049e1d:	80 bc 24 54 20 00 00 	cmpb   $0xd,0x2054(%esp)
 8049e24:	0d 
 8049e25:	0f 85 68 ff ff ff    	jne    8049d93 <submitr+0x636>
 8049e2b:	80 bc 24 55 20 00 00 	cmpb   $0xa,0x2055(%esp)
 8049e32:	0a 
 8049e33:	0f 85 5a ff ff ff    	jne    8049d93 <submitr+0x636>
 8049e39:	80 bc 24 56 20 00 00 	cmpb   $0x0,0x2056(%esp)
 8049e40:	00 
 8049e41:	0f 85 4c ff ff ff    	jne    8049d93 <submitr+0x636>
 8049e47:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049e4c:	8d 94 24 54 20 00 00 	lea    0x2054(%esp),%edx
 8049e53:	8d 44 24 48          	lea    0x48(%esp),%eax
 8049e57:	e8 b4 f7 ff ff       	call   8049610 <rio_readlineb>
 8049e5c:	85 c0                	test   %eax,%eax
 8049e5e:	7f 78                	jg     8049ed8 <submitr+0x77b>
 8049e60:	8b 54 24 28          	mov    0x28(%esp),%edx
 8049e64:	c7 02 45 72 72 6f    	movl   $0x6f727245,(%edx)
 8049e6a:	c7 42 04 72 3a 20 43 	movl   $0x43203a72,0x4(%edx)
 8049e71:	c7 42 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%edx)
 8049e78:	c7 42 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%edx)
 8049e7f:	c7 42 10 61 62 6c 65 	movl   $0x656c6261,0x10(%edx)
 8049e86:	c7 42 14 20 74 6f 20 	movl   $0x206f7420,0x14(%edx)
 8049e8d:	c7 42 18 72 65 61 64 	movl   $0x64616572,0x18(%edx)
 8049e94:	c7 42 1c 20 73 74 61 	movl   $0x61747320,0x1c(%edx)
 8049e9b:	c7 42 20 74 75 73 20 	movl   $0x20737574,0x20(%edx)
 8049ea2:	c7 42 24 6d 65 73 73 	movl   $0x7373656d,0x24(%edx)
 8049ea9:	c7 42 28 61 67 65 20 	movl   $0x20656761,0x28(%edx)
 8049eb0:	c7 42 2c 66 72 6f 6d 	movl   $0x6d6f7266,0x2c(%edx)
 8049eb7:	c7 42 30 20 73 65 72 	movl   $0x72657320,0x30(%edx)
 8049ebe:	c7 42 34 76 65 72 00 	movl   $0x726576,0x34(%edx)
 8049ec5:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8049ec9:	89 04 24             	mov    %eax,(%esp)
 8049ecc:	e8 bf ea ff ff       	call   8048990 <close@plt>
 8049ed1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049ed6:	eb 3f                	jmp    8049f17 <submitr+0x7ba>
 8049ed8:	8d 84 24 54 20 00 00 	lea    0x2054(%esp),%eax
 8049edf:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049ee3:	8b 54 24 28          	mov    0x28(%esp),%edx
 8049ee7:	89 14 24             	mov    %edx,(%esp)
 8049eea:	e8 51 e9 ff ff       	call   8048840 <strcpy@plt>
 8049eef:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8049ef3:	89 04 24             	mov    %eax,(%esp)
 8049ef6:	e8 95 ea ff ff       	call   8048990 <close@plt>
 8049efb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049f00:	8b 54 24 28          	mov    0x28(%esp),%edx
 8049f04:	80 3a 4f             	cmpb   $0x4f,(%edx)
 8049f07:	75 0e                	jne    8049f17 <submitr+0x7ba>
 8049f09:	80 7a 01 4b          	cmpb   $0x4b,0x1(%edx)
 8049f0d:	75 08                	jne    8049f17 <submitr+0x7ba>
 8049f0f:	80 7a 02 01          	cmpb   $0x1,0x2(%edx)
 8049f13:	19 c0                	sbb    %eax,%eax
 8049f15:	f7 d0                	not    %eax
 8049f17:	8b 8c 24 6c a0 00 00 	mov    0xa06c(%esp),%ecx
 8049f1e:	65 33 0d 14 00 00 00 	xor    %gs:0x14,%ecx
 8049f25:	74 78                	je     8049f9f <submitr+0x842>
 8049f27:	eb 71                	jmp    8049f9a <submitr+0x83d>
 8049f29:	8d 84 24 54 40 00 00 	lea    0x4054(%esp),%eax
 8049f30:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 8049f34:	8b 44 24 38          	mov    0x38(%esp),%eax
 8049f38:	89 44 24 18          	mov    %eax,0x18(%esp)
 8049f3c:	8b 54 24 34          	mov    0x34(%esp),%edx
 8049f40:	89 54 24 14          	mov    %edx,0x14(%esp)
 8049f44:	8b 4c 24 30          	mov    0x30(%esp),%ecx
 8049f48:	89 4c 24 10          	mov    %ecx,0x10(%esp)
 8049f4c:	c7 44 24 0c ac a8 04 	movl   $0x804a8ac,0xc(%esp)
 8049f53:	08 
 8049f54:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
 8049f5b:	00 
 8049f5c:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049f63:	00 
 8049f64:	8d bc 24 54 20 00 00 	lea    0x2054(%esp),%edi
 8049f6b:	89 3c 24             	mov    %edi,(%esp)
 8049f6e:	e8 3d ea ff ff       	call   80489b0 <__sprintf_chk@plt>
 8049f73:	b8 00 00 00 00       	mov    $0x0,%eax
 8049f78:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049f7d:	f2 ae                	repnz scas %es:(%edi),%al
 8049f7f:	f7 d1                	not    %ecx
 8049f81:	8d 79 ff             	lea    -0x1(%ecx),%edi
 8049f84:	89 fb                	mov    %edi,%ebx
 8049f86:	8d b4 24 54 20 00 00 	lea    0x2054(%esp),%esi
 8049f8d:	85 ff                	test   %edi,%edi
 8049f8f:	0f 85 2d fc ff ff    	jne    8049bc2 <submitr+0x465>
 8049f95:	e9 c1 fc ff ff       	jmp    8049c5b <submitr+0x4fe>
 8049f9a:	e8 91 e8 ff ff       	call   8048830 <__stack_chk_fail@plt>
 8049f9f:	81 c4 7c a0 00 00    	add    $0xa07c,%esp
 8049fa5:	5b                   	pop    %ebx
 8049fa6:	5e                   	pop    %esi
 8049fa7:	5f                   	pop    %edi
 8049fa8:	5d                   	pop    %ebp
 8049fa9:	c3                   	ret    

08049faa <init_timeout>:
 8049faa:	53                   	push   %ebx
 8049fab:	83 ec 18             	sub    $0x18,%esp
 8049fae:	8b 5c 24 20          	mov    0x20(%esp),%ebx
 8049fb2:	85 db                	test   %ebx,%ebx
 8049fb4:	74 26                	je     8049fdc <init_timeout+0x32>
 8049fb6:	c7 44 24 04 29 97 04 	movl   $0x8049729,0x4(%esp)
 8049fbd:	08 
 8049fbe:	c7 04 24 0e 00 00 00 	movl   $0xe,(%esp)
 8049fc5:	e8 36 e8 ff ff       	call   8048800 <signal@plt>
 8049fca:	85 db                	test   %ebx,%ebx
 8049fcc:	b8 00 00 00 00       	mov    $0x0,%eax
 8049fd1:	0f 48 d8             	cmovs  %eax,%ebx
 8049fd4:	89 1c 24             	mov    %ebx,(%esp)
 8049fd7:	e8 44 e8 ff ff       	call   8048820 <alarm@plt>
 8049fdc:	83 c4 18             	add    $0x18,%esp
 8049fdf:	5b                   	pop    %ebx
 8049fe0:	c3                   	ret    

08049fe1 <init_driver>:
 8049fe1:	57                   	push   %edi
 8049fe2:	56                   	push   %esi
 8049fe3:	53                   	push   %ebx
 8049fe4:	83 ec 40             	sub    $0x40,%esp
 8049fe7:	8b 74 24 50          	mov    0x50(%esp),%esi
 8049feb:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8049ff1:	89 44 24 3c          	mov    %eax,0x3c(%esp)
 8049ff5:	31 c0                	xor    %eax,%eax
 8049ff7:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049ffe:	00 
 8049fff:	c7 04 24 0d 00 00 00 	movl   $0xd,(%esp)
 804a006:	e8 f5 e7 ff ff       	call   8048800 <signal@plt>
 804a00b:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 804a012:	00 
 804a013:	c7 04 24 1d 00 00 00 	movl   $0x1d,(%esp)
 804a01a:	e8 e1 e7 ff ff       	call   8048800 <signal@plt>
 804a01f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 804a026:	00 
 804a027:	c7 04 24 1d 00 00 00 	movl   $0x1d,(%esp)
 804a02e:	e8 cd e7 ff ff       	call   8048800 <signal@plt>
 804a033:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 804a03a:	00 
 804a03b:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 804a042:	00 
 804a043:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 804a04a:	e8 f1 e8 ff ff       	call   8048940 <socket@plt>
 804a04f:	89 c3                	mov    %eax,%ebx
 804a051:	85 c0                	test   %eax,%eax
 804a053:	79 4e                	jns    804a0a3 <init_driver+0xc2>
 804a055:	c7 06 45 72 72 6f    	movl   $0x6f727245,(%esi)
 804a05b:	c7 46 04 72 3a 20 43 	movl   $0x43203a72,0x4(%esi)
 804a062:	c7 46 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%esi)
 804a069:	c7 46 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%esi)
 804a070:	c7 46 10 61 62 6c 65 	movl   $0x656c6261,0x10(%esi)
 804a077:	c7 46 14 20 74 6f 20 	movl   $0x206f7420,0x14(%esi)
 804a07e:	c7 46 18 63 72 65 61 	movl   $0x61657263,0x18(%esi)
 804a085:	c7 46 1c 74 65 20 73 	movl   $0x73206574,0x1c(%esi)
 804a08c:	c7 46 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%esi)
 804a093:	66 c7 46 24 74 00    	movw   $0x74,0x24(%esi)
 804a099:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a09e:	e9 33 01 00 00       	jmp    804a1d6 <init_driver+0x1f5>
 804a0a3:	c7 04 24 38 a9 04 08 	movl   $0x804a938,(%esp)
 804a0aa:	e8 b1 e8 ff ff       	call   8048960 <gethostbyname@plt>
 804a0af:	85 c0                	test   %eax,%eax
 804a0b1:	75 68                	jne    804a11b <init_driver+0x13a>
 804a0b3:	c7 06 45 72 72 6f    	movl   $0x6f727245,(%esi)
 804a0b9:	c7 46 04 72 3a 20 44 	movl   $0x44203a72,0x4(%esi)
 804a0c0:	c7 46 08 4e 53 20 69 	movl   $0x6920534e,0x8(%esi)
 804a0c7:	c7 46 0c 73 20 75 6e 	movl   $0x6e752073,0xc(%esi)
 804a0ce:	c7 46 10 61 62 6c 65 	movl   $0x656c6261,0x10(%esi)
 804a0d5:	c7 46 14 20 74 6f 20 	movl   $0x206f7420,0x14(%esi)
 804a0dc:	c7 46 18 72 65 73 6f 	movl   $0x6f736572,0x18(%esi)
 804a0e3:	c7 46 1c 6c 76 65 20 	movl   $0x2065766c,0x1c(%esi)
 804a0ea:	c7 46 20 73 65 72 76 	movl   $0x76726573,0x20(%esi)
 804a0f1:	c7 46 24 65 72 20 61 	movl   $0x61207265,0x24(%esi)
 804a0f8:	c7 46 28 64 64 72 65 	movl   $0x65726464,0x28(%esi)
 804a0ff:	66 c7 46 2c 73 73    	movw   $0x7373,0x2c(%esi)
 804a105:	c6 46 2e 00          	movb   $0x0,0x2e(%esi)
 804a109:	89 1c 24             	mov    %ebx,(%esp)
 804a10c:	e8 7f e8 ff ff       	call   8048990 <close@plt>
 804a111:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a116:	e9 bb 00 00 00       	jmp    804a1d6 <init_driver+0x1f5>
 804a11b:	8d 7c 24 2c          	lea    0x2c(%esp),%edi
 804a11f:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%esp)
 804a126:	00 
 804a127:	c7 44 24 30 00 00 00 	movl   $0x0,0x30(%esp)
 804a12e:	00 
 804a12f:	c7 44 24 34 00 00 00 	movl   $0x0,0x34(%esp)
 804a136:	00 
 804a137:	c7 44 24 38 00 00 00 	movl   $0x0,0x38(%esp)
 804a13e:	00 
 804a13f:	66 c7 44 24 2c 02 00 	movw   $0x2,0x2c(%esp)
 804a146:	c7 44 24 0c 0c 00 00 	movl   $0xc,0xc(%esp)
 804a14d:	00 
 804a14e:	8b 50 0c             	mov    0xc(%eax),%edx
 804a151:	89 54 24 08          	mov    %edx,0x8(%esp)
 804a155:	8b 40 10             	mov    0x10(%eax),%eax
 804a158:	8b 00                	mov    (%eax),%eax
 804a15a:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a15e:	8d 44 24 30          	lea    0x30(%esp),%eax
 804a162:	89 04 24             	mov    %eax,(%esp)
 804a165:	e8 16 e7 ff ff       	call   8048880 <__memmove_chk@plt>
 804a16a:	66 c7 44 24 2e 3b 6e 	movw   $0x6e3b,0x2e(%esp)
 804a171:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 804a178:	00 
 804a179:	89 7c 24 04          	mov    %edi,0x4(%esp)
 804a17d:	89 1c 24             	mov    %ebx,(%esp)
 804a180:	e8 fb e7 ff ff       	call   8048980 <connect@plt>
 804a185:	85 c0                	test   %eax,%eax
 804a187:	79 37                	jns    804a1c0 <init_driver+0x1df>
 804a189:	c7 44 24 10 38 a9 04 	movl   $0x804a938,0x10(%esp)
 804a190:	08 
 804a191:	c7 44 24 0c f8 a8 04 	movl   $0x804a8f8,0xc(%esp)
 804a198:	08 
 804a199:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
 804a1a0:	ff 
 804a1a1:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 804a1a8:	00 
 804a1a9:	89 34 24             	mov    %esi,(%esp)
 804a1ac:	e8 ff e7 ff ff       	call   80489b0 <__sprintf_chk@plt>
 804a1b1:	89 1c 24             	mov    %ebx,(%esp)
 804a1b4:	e8 d7 e7 ff ff       	call   8048990 <close@plt>
 804a1b9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a1be:	eb 16                	jmp    804a1d6 <init_driver+0x1f5>
 804a1c0:	89 1c 24             	mov    %ebx,(%esp)
 804a1c3:	e8 c8 e7 ff ff       	call   8048990 <close@plt>
 804a1c8:	66 c7 06 4f 4b       	movw   $0x4b4f,(%esi)
 804a1cd:	c6 46 02 00          	movb   $0x0,0x2(%esi)
 804a1d1:	b8 00 00 00 00       	mov    $0x0,%eax
 804a1d6:	8b 54 24 3c          	mov    0x3c(%esp),%edx
 804a1da:	65 33 15 14 00 00 00 	xor    %gs:0x14,%edx
 804a1e1:	74 05                	je     804a1e8 <init_driver+0x207>
 804a1e3:	e8 48 e6 ff ff       	call   8048830 <__stack_chk_fail@plt>
 804a1e8:	83 c4 40             	add    $0x40,%esp
 804a1eb:	5b                   	pop    %ebx
 804a1ec:	5e                   	pop    %esi
 804a1ed:	5f                   	pop    %edi
 804a1ee:	c3                   	ret    

0804a1ef <driver_post>:
 804a1ef:	53                   	push   %ebx
 804a1f0:	83 ec 28             	sub    $0x28,%esp
 804a1f3:	8b 44 24 30          	mov    0x30(%esp),%eax
 804a1f7:	8b 54 24 34          	mov    0x34(%esp),%edx
 804a1fb:	8b 5c 24 3c          	mov    0x3c(%esp),%ebx
 804a1ff:	83 7c 24 38 00       	cmpl   $0x0,0x38(%esp)
 804a204:	74 28                	je     804a22e <driver_post+0x3f>
 804a206:	89 54 24 08          	mov    %edx,0x8(%esp)
 804a20a:	c7 44 24 04 4a a9 04 	movl   $0x804a94a,0x4(%esp)
 804a211:	08 
 804a212:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 804a219:	e8 12 e7 ff ff       	call   8048930 <__printf_chk@plt>
 804a21e:	66 c7 03 4f 4b       	movw   $0x4b4f,(%ebx)
 804a223:	c6 43 02 00          	movb   $0x0,0x2(%ebx)
 804a227:	b8 00 00 00 00       	mov    $0x0,%eax
 804a22c:	eb 49                	jmp    804a277 <driver_post+0x88>
 804a22e:	85 c0                	test   %eax,%eax
 804a230:	74 37                	je     804a269 <driver_post+0x7a>
 804a232:	80 38 00             	cmpb   $0x0,(%eax)
 804a235:	74 32                	je     804a269 <driver_post+0x7a>
 804a237:	89 5c 24 18          	mov    %ebx,0x18(%esp)
 804a23b:	89 54 24 14          	mov    %edx,0x14(%esp)
 804a23f:	c7 44 24 10 61 a9 04 	movl   $0x804a961,0x10(%esp)
 804a246:	08 
 804a247:	89 44 24 0c          	mov    %eax,0xc(%esp)
 804a24b:	c7 44 24 08 6c a9 04 	movl   $0x804a96c,0x8(%esp)
 804a252:	08 
 804a253:	c7 44 24 04 6e 3b 00 	movl   $0x3b6e,0x4(%esp)
 804a25a:	00 
 804a25b:	c7 04 24 38 a9 04 08 	movl   $0x804a938,(%esp)
 804a262:	e8 f6 f4 ff ff       	call   804975d <submitr>
 804a267:	eb 0e                	jmp    804a277 <driver_post+0x88>
 804a269:	66 c7 03 4f 4b       	movw   $0x4b4f,(%ebx)
 804a26e:	c6 43 02 00          	movb   $0x0,0x2(%ebx)
 804a272:	b8 00 00 00 00       	mov    $0x0,%eax
 804a277:	83 c4 28             	add    $0x28,%esp
 804a27a:	5b                   	pop    %ebx
 804a27b:	c3                   	ret    
 804a27c:	90                   	nop
 804a27d:	90                   	nop
 804a27e:	90                   	nop
 804a27f:	90                   	nop

0804a280 <__libc_csu_init>:
 804a280:	55                   	push   %ebp
 804a281:	57                   	push   %edi
 804a282:	56                   	push   %esi
 804a283:	53                   	push   %ebx
 804a284:	e8 69 00 00 00       	call   804a2f2 <__i686.get_pc_thunk.bx>
 804a289:	81 c3 6b 1d 00 00    	add    $0x1d6b,%ebx
 804a28f:	83 ec 1c             	sub    $0x1c,%esp
 804a292:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 804a296:	8d bb 20 ff ff ff    	lea    -0xe0(%ebx),%edi
 804a29c:	e8 ef e4 ff ff       	call   8048790 <_init>
 804a2a1:	8d 83 20 ff ff ff    	lea    -0xe0(%ebx),%eax
 804a2a7:	29 c7                	sub    %eax,%edi
 804a2a9:	c1 ff 02             	sar    $0x2,%edi
 804a2ac:	85 ff                	test   %edi,%edi
 804a2ae:	74 29                	je     804a2d9 <__libc_csu_init+0x59>
 804a2b0:	31 f6                	xor    %esi,%esi
 804a2b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804a2b8:	8b 44 24 38          	mov    0x38(%esp),%eax
 804a2bc:	89 2c 24             	mov    %ebp,(%esp)
 804a2bf:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a2c3:	8b 44 24 34          	mov    0x34(%esp),%eax
 804a2c7:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a2cb:	ff 94 b3 20 ff ff ff 	call   *-0xe0(%ebx,%esi,4)
 804a2d2:	83 c6 01             	add    $0x1,%esi
 804a2d5:	39 fe                	cmp    %edi,%esi
 804a2d7:	75 df                	jne    804a2b8 <__libc_csu_init+0x38>
 804a2d9:	83 c4 1c             	add    $0x1c,%esp
 804a2dc:	5b                   	pop    %ebx
 804a2dd:	5e                   	pop    %esi
 804a2de:	5f                   	pop    %edi
 804a2df:	5d                   	pop    %ebp
 804a2e0:	c3                   	ret    
 804a2e1:	eb 0d                	jmp    804a2f0 <__libc_csu_fini>
 804a2e3:	90                   	nop
 804a2e4:	90                   	nop
 804a2e5:	90                   	nop
 804a2e6:	90                   	nop
 804a2e7:	90                   	nop
 804a2e8:	90                   	nop
 804a2e9:	90                   	nop
 804a2ea:	90                   	nop
 804a2eb:	90                   	nop
 804a2ec:	90                   	nop
 804a2ed:	90                   	nop
 804a2ee:	90                   	nop
 804a2ef:	90                   	nop

0804a2f0 <__libc_csu_fini>:
 804a2f0:	f3 c3                	repz ret 

0804a2f2 <__i686.get_pc_thunk.bx>:
 804a2f2:	8b 1c 24             	mov    (%esp),%ebx
 804a2f5:	c3                   	ret    
 804a2f6:	90                   	nop
 804a2f7:	90                   	nop
 804a2f8:	90                   	nop
 804a2f9:	90                   	nop
 804a2fa:	90                   	nop
 804a2fb:	90                   	nop
 804a2fc:	90                   	nop
 804a2fd:	90                   	nop
 804a2fe:	90                   	nop
 804a2ff:	90                   	nop

0804a300 <__do_global_ctors_aux>:
 804a300:	55                   	push   %ebp
 804a301:	89 e5                	mov    %esp,%ebp
 804a303:	53                   	push   %ebx
 804a304:	83 ec 04             	sub    $0x4,%esp
 804a307:	a1 14 bf 04 08       	mov    0x804bf14,%eax
 804a30c:	83 f8 ff             	cmp    $0xffffffff,%eax
 804a30f:	74 13                	je     804a324 <__do_global_ctors_aux+0x24>
 804a311:	bb 14 bf 04 08       	mov    $0x804bf14,%ebx
 804a316:	66 90                	xchg   %ax,%ax
 804a318:	83 eb 04             	sub    $0x4,%ebx
 804a31b:	ff d0                	call   *%eax
 804a31d:	8b 03                	mov    (%ebx),%eax
 804a31f:	83 f8 ff             	cmp    $0xffffffff,%eax
 804a322:	75 f4                	jne    804a318 <__do_global_ctors_aux+0x18>
 804a324:	83 c4 04             	add    $0x4,%esp
 804a327:	5b                   	pop    %ebx
 804a328:	5d                   	pop    %ebp
 804a329:	c3                   	ret    
 804a32a:	90                   	nop
 804a32b:	90                   	nop

Disassembly of section .fini:

0804a32c <_fini>:
 804a32c:	53                   	push   %ebx
 804a32d:	83 ec 08             	sub    $0x8,%esp
 804a330:	e8 00 00 00 00       	call   804a335 <_fini+0x9>
 804a335:	5b                   	pop    %ebx
 804a336:	81 c3 bf 1c 00 00    	add    $0x1cbf,%ebx
 804a33c:	e8 af e6 ff ff       	call   80489f0 <__do_global_dtors_aux>
 804a341:	83 c4 08             	add    $0x8,%esp
 804a344:	5b                   	pop    %ebx
 804a345:	c3                   	ret    
