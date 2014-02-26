
readfile:     file format elf64-x86-64


Disassembly of section .init:

0000000000400500 <_init>:
  400500:	48 83 ec 08          	sub    $0x8,%rsp
  400504:	e8 c3 00 00 00       	callq  4005cc <call_gmon_start>
  400509:	e8 52 01 00 00       	callq  400660 <frame_dummy>
  40050e:	e8 bd 03 00 00       	callq  4008d0 <__do_global_ctors_aux>
  400513:	48 83 c4 08          	add    $0x8,%rsp
  400517:	c3                   	retq   

Disassembly of section .plt:

0000000000400520 <fclose@plt-0x10>:
  400520:	ff 35 ca 0a 20 00    	pushq  0x200aca(%rip)        # 600ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  400526:	ff 25 cc 0a 20 00    	jmpq   *0x200acc(%rip)        # 600ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40052c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400530 <fclose@plt>:
  400530:	ff 25 ca 0a 20 00    	jmpq   *0x200aca(%rip)        # 601000 <_GLOBAL_OFFSET_TABLE_+0x18>
  400536:	68 00 00 00 00       	pushq  $0x0
  40053b:	e9 e0 ff ff ff       	jmpq   400520 <_init+0x20>

0000000000400540 <__stack_chk_fail@plt>:
  400540:	ff 25 c2 0a 20 00    	jmpq   *0x200ac2(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x20>
  400546:	68 01 00 00 00       	pushq  $0x1
  40054b:	e9 d0 ff ff ff       	jmpq   400520 <_init+0x20>

0000000000400550 <printf@plt>:
  400550:	ff 25 ba 0a 20 00    	jmpq   *0x200aba(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x28>
  400556:	68 02 00 00 00       	pushq  $0x2
  40055b:	e9 c0 ff ff ff       	jmpq   400520 <_init+0x20>

0000000000400560 <__libc_start_main@plt>:
  400560:	ff 25 b2 0a 20 00    	jmpq   *0x200ab2(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x30>
  400566:	68 03 00 00 00       	pushq  $0x3
  40056b:	e9 b0 ff ff ff       	jmpq   400520 <_init+0x20>

0000000000400570 <fgets@plt>:
  400570:	ff 25 aa 0a 20 00    	jmpq   *0x200aaa(%rip)        # 601020 <_GLOBAL_OFFSET_TABLE_+0x38>
  400576:	68 04 00 00 00       	pushq  $0x4
  40057b:	e9 a0 ff ff ff       	jmpq   400520 <_init+0x20>

0000000000400580 <fprintf@plt>:
  400580:	ff 25 a2 0a 20 00    	jmpq   *0x200aa2(%rip)        # 601028 <_GLOBAL_OFFSET_TABLE_+0x40>
  400586:	68 05 00 00 00       	pushq  $0x5
  40058b:	e9 90 ff ff ff       	jmpq   400520 <_init+0x20>

0000000000400590 <fopen@plt>:
  400590:	ff 25 9a 0a 20 00    	jmpq   *0x200a9a(%rip)        # 601030 <_GLOBAL_OFFSET_TABLE_+0x48>
  400596:	68 06 00 00 00       	pushq  $0x6
  40059b:	e9 80 ff ff ff       	jmpq   400520 <_init+0x20>

Disassembly of section .text:

00000000004005a0 <_start>:
  4005a0:	31 ed                	xor    %ebp,%ebp
  4005a2:	49 89 d1             	mov    %rdx,%r9
  4005a5:	5e                   	pop    %rsi
  4005a6:	48 89 e2             	mov    %rsp,%rdx
  4005a9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4005ad:	50                   	push   %rax
  4005ae:	54                   	push   %rsp
  4005af:	49 c7 c0 c0 08 40 00 	mov    $0x4008c0,%r8
  4005b6:	48 c7 c1 30 08 40 00 	mov    $0x400830,%rcx
  4005bd:	48 c7 c7 84 06 40 00 	mov    $0x400684,%rdi
  4005c4:	e8 97 ff ff ff       	callq  400560 <__libc_start_main@plt>
  4005c9:	f4                   	hlt    
  4005ca:	90                   	nop
  4005cb:	90                   	nop

00000000004005cc <call_gmon_start>:
  4005cc:	48 83 ec 08          	sub    $0x8,%rsp
  4005d0:	48 8b 05 09 0a 20 00 	mov    0x200a09(%rip),%rax        # 600fe0 <_DYNAMIC+0x190>
  4005d7:	48 85 c0             	test   %rax,%rax
  4005da:	74 02                	je     4005de <call_gmon_start+0x12>
  4005dc:	ff d0                	callq  *%rax
  4005de:	48 83 c4 08          	add    $0x8,%rsp
  4005e2:	c3                   	retq   
  4005e3:	90                   	nop
  4005e4:	90                   	nop
  4005e5:	90                   	nop
  4005e6:	90                   	nop
  4005e7:	90                   	nop
  4005e8:	90                   	nop
  4005e9:	90                   	nop
  4005ea:	90                   	nop
  4005eb:	90                   	nop
  4005ec:	90                   	nop
  4005ed:	90                   	nop
  4005ee:	90                   	nop
  4005ef:	90                   	nop

00000000004005f0 <__do_global_dtors_aux>:
  4005f0:	55                   	push   %rbp
  4005f1:	48 89 e5             	mov    %rsp,%rbp
  4005f4:	53                   	push   %rbx
  4005f5:	48 83 ec 08          	sub    $0x8,%rsp
  4005f9:	80 3d 48 0a 20 00 00 	cmpb   $0x0,0x200a48(%rip)        # 601048 <__bss_start>
  400600:	75 4b                	jne    40064d <__do_global_dtors_aux+0x5d>
  400602:	bb 40 0e 60 00       	mov    $0x600e40,%ebx
  400607:	48 8b 05 42 0a 20 00 	mov    0x200a42(%rip),%rax        # 601050 <dtor_idx.6533>
  40060e:	48 81 eb 38 0e 60 00 	sub    $0x600e38,%rbx
  400615:	48 c1 fb 03          	sar    $0x3,%rbx
  400619:	48 83 eb 01          	sub    $0x1,%rbx
  40061d:	48 39 d8             	cmp    %rbx,%rax
  400620:	73 24                	jae    400646 <__do_global_dtors_aux+0x56>
  400622:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400628:	48 83 c0 01          	add    $0x1,%rax
  40062c:	48 89 05 1d 0a 20 00 	mov    %rax,0x200a1d(%rip)        # 601050 <dtor_idx.6533>
  400633:	ff 14 c5 38 0e 60 00 	callq  *0x600e38(,%rax,8)
  40063a:	48 8b 05 0f 0a 20 00 	mov    0x200a0f(%rip),%rax        # 601050 <dtor_idx.6533>
  400641:	48 39 d8             	cmp    %rbx,%rax
  400644:	72 e2                	jb     400628 <__do_global_dtors_aux+0x38>
  400646:	c6 05 fb 09 20 00 01 	movb   $0x1,0x2009fb(%rip)        # 601048 <__bss_start>
  40064d:	48 83 c4 08          	add    $0x8,%rsp
  400651:	5b                   	pop    %rbx
  400652:	5d                   	pop    %rbp
  400653:	c3                   	retq   
  400654:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40065b:	00 00 00 00 00 

0000000000400660 <frame_dummy>:
  400660:	48 83 3d e0 07 20 00 	cmpq   $0x0,0x2007e0(%rip)        # 600e48 <__JCR_END__>
  400667:	00 
  400668:	55                   	push   %rbp
  400669:	48 89 e5             	mov    %rsp,%rbp
  40066c:	74 12                	je     400680 <frame_dummy+0x20>
  40066e:	b8 00 00 00 00       	mov    $0x0,%eax
  400673:	48 85 c0             	test   %rax,%rax
  400676:	74 08                	je     400680 <frame_dummy+0x20>
  400678:	5d                   	pop    %rbp
  400679:	bf 48 0e 60 00       	mov    $0x600e48,%edi
  40067e:	ff e0                	jmpq   *%rax
  400680:	5d                   	pop    %rbp
  400681:	c3                   	retq   
  400682:	90                   	nop
  400683:	90                   	nop

0000000000400684 <main>:
  400684:	55                   	push   %rbp
  400685:	48 89 e5             	mov    %rsp,%rbp
  400688:	48 81 ec 40 20 00 00 	sub    $0x2040,%rsp
  40068f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  400696:	00 00 
  400698:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40069c:	31 c0                	xor    %eax,%eax
  40069e:	48 c7 85 c8 df ff ff 	movq   $0x400920,-0x2038(%rbp)
  4006a5:	20 09 40 00 
  4006a9:	48 c7 85 d0 df ff ff 	movq   $0x400929,-0x2030(%rbp)
  4006b0:	29 09 40 00 
  4006b4:	ba 35 09 40 00       	mov    $0x400935,%edx
  4006b9:	48 8b 85 c8 df ff ff 	mov    -0x2038(%rbp),%rax
  4006c0:	48 89 d6             	mov    %rdx,%rsi
  4006c3:	48 89 c7             	mov    %rax,%rdi
  4006c6:	e8 c5 fe ff ff       	callq  400590 <fopen@plt>
  4006cb:	48 89 85 d8 df ff ff 	mov    %rax,-0x2028(%rbp)
  4006d2:	ba 37 09 40 00       	mov    $0x400937,%edx
  4006d7:	48 8b 85 d0 df ff ff 	mov    -0x2030(%rbp),%rax
  4006de:	48 89 d6             	mov    %rdx,%rsi
  4006e1:	48 89 c7             	mov    %rax,%rdi
  4006e4:	e8 a7 fe ff ff       	callq  400590 <fopen@plt>
  4006e9:	48 89 85 e0 df ff ff 	mov    %rax,-0x2020(%rbp)
  4006f0:	48 83 bd d8 df ff ff 	cmpq   $0x0,-0x2028(%rbp)
  4006f7:	00 
  4006f8:	75 26                	jne    400720 <main+0x9c>
  4006fa:	b8 40 09 40 00       	mov    $0x400940,%eax
  4006ff:	48 8b 95 c8 df ff ff 	mov    -0x2038(%rbp),%rdx
  400706:	48 89 d6             	mov    %rdx,%rsi
  400709:	48 89 c7             	mov    %rax,%rdi
  40070c:	b8 00 00 00 00       	mov    $0x0,%eax
  400711:	e8 3a fe ff ff       	callq  400550 <printf@plt>
  400716:	b8 00 00 00 00       	mov    $0x0,%eax
  40071b:	e9 f6 00 00 00       	jmpq   400816 <main+0x192>
  400720:	b8 64 09 40 00       	mov    $0x400964,%eax
  400725:	48 8b 95 c8 df ff ff 	mov    -0x2038(%rbp),%rdx
  40072c:	48 89 d6             	mov    %rdx,%rsi
  40072f:	48 89 c7             	mov    %rax,%rdi
  400732:	b8 00 00 00 00       	mov    $0x0,%eax
  400737:	e8 14 fe ff ff       	callq  400550 <printf@plt>
  40073c:	c6 85 ef df ff ff 00 	movb   $0x0,-0x2011(%rbp)
  400743:	eb 50                	jmp    400795 <main+0x111>
  400745:	80 85 ef df ff ff 01 	addb   $0x1,-0x2011(%rbp)
  40074c:	0f be 8d ef df ff ff 	movsbl -0x2011(%rbp),%ecx
  400753:	b8 81 09 40 00       	mov    $0x400981,%eax
  400758:	48 8d 95 f0 df ff ff 	lea    -0x2010(%rbp),%rdx
  40075f:	89 ce                	mov    %ecx,%esi
  400761:	48 89 c7             	mov    %rax,%rdi
  400764:	b8 00 00 00 00       	mov    $0x0,%eax
  400769:	e8 e2 fd ff ff       	callq  400550 <printf@plt>
  40076e:	0f be 95 ef df ff ff 	movsbl -0x2011(%rbp),%edx
  400775:	be 81 09 40 00       	mov    $0x400981,%esi
  40077a:	48 8d 8d f0 df ff ff 	lea    -0x2010(%rbp),%rcx
  400781:	48 8b 85 e0 df ff ff 	mov    -0x2020(%rbp),%rax
  400788:	48 89 c7             	mov    %rax,%rdi
  40078b:	b8 00 00 00 00       	mov    $0x0,%eax
  400790:	e8 eb fd ff ff       	callq  400580 <fprintf@plt>
  400795:	48 8b 95 d8 df ff ff 	mov    -0x2028(%rbp),%rdx
  40079c:	48 8d 85 f0 df ff ff 	lea    -0x2010(%rbp),%rax
  4007a3:	be 00 20 00 00       	mov    $0x2000,%esi
  4007a8:	48 89 c7             	mov    %rax,%rdi
  4007ab:	e8 c0 fd ff ff       	callq  400570 <fgets@plt>
  4007b0:	48 85 c0             	test   %rax,%rax
  4007b3:	75 90                	jne    400745 <main+0xc1>
  4007b5:	0f be 95 ef df ff ff 	movsbl -0x2011(%rbp),%edx
  4007bc:	b8 89 09 40 00       	mov    $0x400989,%eax
  4007c1:	89 d6                	mov    %edx,%esi
  4007c3:	48 89 c7             	mov    %rax,%rdi
  4007c6:	b8 00 00 00 00       	mov    $0x0,%eax
  4007cb:	e8 80 fd ff ff       	callq  400550 <printf@plt>
  4007d0:	0f be 95 ef df ff ff 	movsbl -0x2011(%rbp),%edx
  4007d7:	b9 89 09 40 00       	mov    $0x400989,%ecx
  4007dc:	48 8b 85 e0 df ff ff 	mov    -0x2020(%rbp),%rax
  4007e3:	48 89 ce             	mov    %rcx,%rsi
  4007e6:	48 89 c7             	mov    %rax,%rdi
  4007e9:	b8 00 00 00 00       	mov    $0x0,%eax
  4007ee:	e8 8d fd ff ff       	callq  400580 <fprintf@plt>
  4007f3:	48 8b 85 d8 df ff ff 	mov    -0x2028(%rbp),%rax
  4007fa:	48 89 c7             	mov    %rax,%rdi
  4007fd:	e8 2e fd ff ff       	callq  400530 <fclose@plt>
  400802:	48 8b 85 e0 df ff ff 	mov    -0x2020(%rbp),%rax
  400809:	48 89 c7             	mov    %rax,%rdi
  40080c:	e8 1f fd ff ff       	callq  400530 <fclose@plt>
  400811:	b8 00 00 00 00       	mov    $0x0,%eax
  400816:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40081a:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
  400821:	00 00 
  400823:	74 05                	je     40082a <main+0x1a6>
  400825:	e8 16 fd ff ff       	callq  400540 <__stack_chk_fail@plt>
  40082a:	c9                   	leaveq 
  40082b:	c3                   	retq   
  40082c:	90                   	nop
  40082d:	90                   	nop
  40082e:	90                   	nop
  40082f:	90                   	nop

0000000000400830 <__libc_csu_init>:
  400830:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  400835:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  40083a:	48 8d 2d e3 05 20 00 	lea    0x2005e3(%rip),%rbp        # 600e24 <__init_array_end>
  400841:	4c 8d 25 dc 05 20 00 	lea    0x2005dc(%rip),%r12        # 600e24 <__init_array_end>
  400848:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  40084d:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  400852:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  400857:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  40085c:	48 83 ec 38          	sub    $0x38,%rsp
  400860:	4c 29 e5             	sub    %r12,%rbp
  400863:	41 89 fd             	mov    %edi,%r13d
  400866:	49 89 f6             	mov    %rsi,%r14
  400869:	48 c1 fd 03          	sar    $0x3,%rbp
  40086d:	49 89 d7             	mov    %rdx,%r15
  400870:	e8 8b fc ff ff       	callq  400500 <_init>
  400875:	48 85 ed             	test   %rbp,%rbp
  400878:	74 1c                	je     400896 <__libc_csu_init+0x66>
  40087a:	31 db                	xor    %ebx,%ebx
  40087c:	0f 1f 40 00          	nopl   0x0(%rax)
  400880:	4c 89 fa             	mov    %r15,%rdx
  400883:	4c 89 f6             	mov    %r14,%rsi
  400886:	44 89 ef             	mov    %r13d,%edi
  400889:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40088d:	48 83 c3 01          	add    $0x1,%rbx
  400891:	48 39 eb             	cmp    %rbp,%rbx
  400894:	75 ea                	jne    400880 <__libc_csu_init+0x50>
  400896:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  40089b:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  4008a0:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  4008a5:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  4008aa:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  4008af:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  4008b4:	48 83 c4 38          	add    $0x38,%rsp
  4008b8:	c3                   	retq   
  4008b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004008c0 <__libc_csu_fini>:
  4008c0:	f3 c3                	repz retq 
  4008c2:	90                   	nop
  4008c3:	90                   	nop
  4008c4:	90                   	nop
  4008c5:	90                   	nop
  4008c6:	90                   	nop
  4008c7:	90                   	nop
  4008c8:	90                   	nop
  4008c9:	90                   	nop
  4008ca:	90                   	nop
  4008cb:	90                   	nop
  4008cc:	90                   	nop
  4008cd:	90                   	nop
  4008ce:	90                   	nop
  4008cf:	90                   	nop

00000000004008d0 <__do_global_ctors_aux>:
  4008d0:	55                   	push   %rbp
  4008d1:	48 89 e5             	mov    %rsp,%rbp
  4008d4:	53                   	push   %rbx
  4008d5:	48 83 ec 08          	sub    $0x8,%rsp
  4008d9:	48 8b 05 48 05 20 00 	mov    0x200548(%rip),%rax        # 600e28 <__CTOR_LIST__>
  4008e0:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  4008e4:	74 19                	je     4008ff <__do_global_ctors_aux+0x2f>
  4008e6:	bb 28 0e 60 00       	mov    $0x600e28,%ebx
  4008eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4008f0:	48 83 eb 08          	sub    $0x8,%rbx
  4008f4:	ff d0                	callq  *%rax
  4008f6:	48 8b 03             	mov    (%rbx),%rax
  4008f9:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  4008fd:	75 f1                	jne    4008f0 <__do_global_ctors_aux+0x20>
  4008ff:	48 83 c4 08          	add    $0x8,%rsp
  400903:	5b                   	pop    %rbx
  400904:	5d                   	pop    %rbp
  400905:	c3                   	retq   
  400906:	90                   	nop
  400907:	90                   	nop

Disassembly of section .fini:

0000000000400908 <_fini>:
  400908:	48 83 ec 08          	sub    $0x8,%rsp
  40090c:	e8 df fc ff ff       	callq  4005f0 <__do_global_dtors_aux>
  400911:	48 83 c4 08          	add    $0x8,%rsp
  400915:	c3                   	retq   
