
Fibonacci_x86:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 62 2f 00 00    	push   0x2f62(%rip)        # 3f88 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 63 2f 00 00 	bnd jmp *0x2f63(%rip)        # 3f90 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop

Disassembly of section .plt.got:

0000000000001090 <__cxa_finalize@plt>:
    1090:	f3 0f 1e fa          	endbr64 
    1094:	f2 ff 25 2d 2f 00 00 	bnd jmp *0x2f2d(%rip)        # 3fc8 <__cxa_finalize@GLIBC_2.2.5>
    109b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000010a0 <_ZNSirsERi@plt>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	f2 ff 25 ed 2e 00 00 	bnd jmp *0x2eed(%rip)        # 3f98 <_ZNSirsERi@GLIBCXX_3.4>
    10ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010b0 <__cxa_atexit@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 e5 2e 00 00 	bnd jmp *0x2ee5(%rip)        # 3fa0 <__cxa_atexit@GLIBC_2.2.5>
    10bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010c0 <_ZNSolsEPFRSoS_E@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 dd 2e 00 00 	bnd jmp *0x2edd(%rip)        # 3fa8 <_ZNSolsEPFRSoS_E@GLIBCXX_3.4>
    10cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010d0 <__stack_chk_fail@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 d5 2e 00 00 	bnd jmp *0x2ed5(%rip)        # 3fb0 <__stack_chk_fail@GLIBC_2.4>
    10db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010e0 <_ZNSt8ios_base4InitC1Ev@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 cd 2e 00 00 	bnd jmp *0x2ecd(%rip)        # 3fb8 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
    10eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010f0 <_ZNSolsEi@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 c5 2e 00 00 	bnd jmp *0x2ec5(%rip)        # 3fc0 <_ZNSolsEi@GLIBCXX_3.4>
    10fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001100 <_start>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	31 ed                	xor    %ebp,%ebp
    1106:	49 89 d1             	mov    %rdx,%r9
    1109:	5e                   	pop    %rsi
    110a:	48 89 e2             	mov    %rsp,%rdx
    110d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1111:	50                   	push   %rax
    1112:	54                   	push   %rsp
    1113:	45 31 c0             	xor    %r8d,%r8d
    1116:	31 c9                	xor    %ecx,%ecx
    1118:	48 8d 3d ca 00 00 00 	lea    0xca(%rip),%rdi        # 11e9 <main>
    111f:	ff 15 b3 2e 00 00    	call   *0x2eb3(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1125:	f4                   	hlt    
    1126:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    112d:	00 00 00 

0000000000001130 <deregister_tm_clones>:
    1130:	48 8d 3d d9 2e 00 00 	lea    0x2ed9(%rip),%rdi        # 4010 <__TMC_END__>
    1137:	48 8d 05 d2 2e 00 00 	lea    0x2ed2(%rip),%rax        # 4010 <__TMC_END__>
    113e:	48 39 f8             	cmp    %rdi,%rax
    1141:	74 15                	je     1158 <deregister_tm_clones+0x28>
    1143:	48 8b 05 96 2e 00 00 	mov    0x2e96(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    114a:	48 85 c0             	test   %rax,%rax
    114d:	74 09                	je     1158 <deregister_tm_clones+0x28>
    114f:	ff e0                	jmp    *%rax
    1151:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1158:	c3                   	ret    
    1159:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001160 <register_tm_clones>:
    1160:	48 8d 3d a9 2e 00 00 	lea    0x2ea9(%rip),%rdi        # 4010 <__TMC_END__>
    1167:	48 8d 35 a2 2e 00 00 	lea    0x2ea2(%rip),%rsi        # 4010 <__TMC_END__>
    116e:	48 29 fe             	sub    %rdi,%rsi
    1171:	48 89 f0             	mov    %rsi,%rax
    1174:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1178:	48 c1 f8 03          	sar    $0x3,%rax
    117c:	48 01 c6             	add    %rax,%rsi
    117f:	48 d1 fe             	sar    %rsi
    1182:	74 14                	je     1198 <register_tm_clones+0x38>
    1184:	48 8b 05 65 2e 00 00 	mov    0x2e65(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    118b:	48 85 c0             	test   %rax,%rax
    118e:	74 08                	je     1198 <register_tm_clones+0x38>
    1190:	ff e0                	jmp    *%rax
    1192:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1198:	c3                   	ret    
    1199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011a0 <__do_global_dtors_aux>:
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	80 3d cd 30 00 00 00 	cmpb   $0x0,0x30cd(%rip)        # 4278 <completed.0>
    11ab:	75 2b                	jne    11d8 <__do_global_dtors_aux+0x38>
    11ad:	55                   	push   %rbp
    11ae:	48 83 3d 12 2e 00 00 	cmpq   $0x0,0x2e12(%rip)        # 3fc8 <__cxa_finalize@GLIBC_2.2.5>
    11b5:	00 
    11b6:	48 89 e5             	mov    %rsp,%rbp
    11b9:	74 0c                	je     11c7 <__do_global_dtors_aux+0x27>
    11bb:	48 8b 3d 46 2e 00 00 	mov    0x2e46(%rip),%rdi        # 4008 <__dso_handle>
    11c2:	e8 c9 fe ff ff       	call   1090 <__cxa_finalize@plt>
    11c7:	e8 64 ff ff ff       	call   1130 <deregister_tm_clones>
    11cc:	c6 05 a5 30 00 00 01 	movb   $0x1,0x30a5(%rip)        # 4278 <completed.0>
    11d3:	5d                   	pop    %rbp
    11d4:	c3                   	ret    
    11d5:	0f 1f 00             	nopl   (%rax)
    11d8:	c3                   	ret    
    11d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011e0 <frame_dummy>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	e9 77 ff ff ff       	jmp    1160 <register_tm_clones>

00000000000011e9 <main>:
    11e9:	f3 0f 1e fa          	endbr64 
    11ed:	55                   	push   %rbp
    11ee:	48 89 e5             	mov    %rsp,%rbp
    11f1:	48 83 ec 20          	sub    $0x20,%rsp
    11f5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    11fc:	00 00 
    11fe:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1202:	31 c0                	xor    %eax,%eax
    1204:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
    120b:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%rbp)
    1212:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%rbp)
    1219:	48 8d 45 e4          	lea    -0x1c(%rbp),%rax
    121d:	48 89 c6             	mov    %rax,%rsi
    1220:	48 8d 05 39 2f 00 00 	lea    0x2f39(%rip),%rax        # 4160 <_ZSt3cin@GLIBCXX_3.4>
    1227:	48 89 c7             	mov    %rax,%rdi
    122a:	e8 71 fe ff ff       	call   10a0 <_ZNSirsERi@plt>
    122f:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1232:	89 c6                	mov    %eax,%esi
    1234:	48 8d 05 05 2e 00 00 	lea    0x2e05(%rip),%rax        # 4040 <_ZSt4cout@GLIBCXX_3.4>
    123b:	48 89 c7             	mov    %rax,%rdi
    123e:	e8 ad fe ff ff       	call   10f0 <_ZNSolsEi@plt>
    1243:	48 8b 15 86 2d 00 00 	mov    0x2d86(%rip),%rdx        # 3fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    124a:	48 89 d6             	mov    %rdx,%rsi
    124d:	48 89 c7             	mov    %rax,%rdi
    1250:	e8 6b fe ff ff       	call   10c0 <_ZNSolsEPFRSoS_E@plt>
    1255:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1258:	89 c6                	mov    %eax,%esi
    125a:	48 8d 05 df 2d 00 00 	lea    0x2ddf(%rip),%rax        # 4040 <_ZSt4cout@GLIBCXX_3.4>
    1261:	48 89 c7             	mov    %rax,%rdi
    1264:	e8 87 fe ff ff       	call   10f0 <_ZNSolsEi@plt>
    1269:	48 8b 15 60 2d 00 00 	mov    0x2d60(%rip),%rdx        # 3fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    1270:	48 89 d6             	mov    %rdx,%rsi
    1273:	48 89 c7             	mov    %rax,%rdi
    1276:	e8 45 fe ff ff       	call   10c0 <_ZNSolsEPFRSoS_E@plt>
    127b:	eb 3c                	jmp    12b9 <main+0xd0>
    127d:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1280:	89 45 f4             	mov    %eax,-0xc(%rbp)
    1283:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1286:	01 45 ec             	add    %eax,-0x14(%rbp)
    1289:	8b 45 ec             	mov    -0x14(%rbp),%eax
    128c:	89 c6                	mov    %eax,%esi
    128e:	48 8d 05 ab 2d 00 00 	lea    0x2dab(%rip),%rax        # 4040 <_ZSt4cout@GLIBCXX_3.4>
    1295:	48 89 c7             	mov    %rax,%rdi
    1298:	e8 53 fe ff ff       	call   10f0 <_ZNSolsEi@plt>
    129d:	48 8b 15 2c 2d 00 00 	mov    0x2d2c(%rip),%rdx        # 3fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    12a4:	48 89 d6             	mov    %rdx,%rsi
    12a7:	48 89 c7             	mov    %rax,%rdi
    12aa:	e8 11 fe ff ff       	call   10c0 <_ZNSolsEPFRSoS_E@plt>
    12af:	8b 45 f4             	mov    -0xc(%rbp),%eax
    12b2:	89 45 e8             	mov    %eax,-0x18(%rbp)
    12b5:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
    12b9:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    12bc:	39 45 f0             	cmp    %eax,-0x10(%rbp)
    12bf:	7c bc                	jl     127d <main+0x94>
    12c1:	b8 00 00 00 00       	mov    $0x0,%eax
    12c6:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    12ca:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    12d1:	00 00 
    12d3:	74 05                	je     12da <main+0xf1>
    12d5:	e8 f6 fd ff ff       	call   10d0 <__stack_chk_fail@plt>
    12da:	c9                   	leave  
    12db:	c3                   	ret    

00000000000012dc <_Z41__static_initialization_and_destruction_0ii>:
    12dc:	f3 0f 1e fa          	endbr64 
    12e0:	55                   	push   %rbp
    12e1:	48 89 e5             	mov    %rsp,%rbp
    12e4:	48 83 ec 10          	sub    $0x10,%rsp
    12e8:	89 7d fc             	mov    %edi,-0x4(%rbp)
    12eb:	89 75 f8             	mov    %esi,-0x8(%rbp)
    12ee:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
    12f2:	75 3b                	jne    132f <_Z41__static_initialization_and_destruction_0ii+0x53>
    12f4:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
    12fb:	75 32                	jne    132f <_Z41__static_initialization_and_destruction_0ii+0x53>
    12fd:	48 8d 05 75 2f 00 00 	lea    0x2f75(%rip),%rax        # 4279 <_ZStL8__ioinit>
    1304:	48 89 c7             	mov    %rax,%rdi
    1307:	e8 d4 fd ff ff       	call   10e0 <_ZNSt8ios_base4InitC1Ev@plt>
    130c:	48 8d 05 f5 2c 00 00 	lea    0x2cf5(%rip),%rax        # 4008 <__dso_handle>
    1313:	48 89 c2             	mov    %rax,%rdx
    1316:	48 8d 05 5c 2f 00 00 	lea    0x2f5c(%rip),%rax        # 4279 <_ZStL8__ioinit>
    131d:	48 89 c6             	mov    %rax,%rsi
    1320:	48 8b 05 d1 2c 00 00 	mov    0x2cd1(%rip),%rax        # 3ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    1327:	48 89 c7             	mov    %rax,%rdi
    132a:	e8 81 fd ff ff       	call   10b0 <__cxa_atexit@plt>
    132f:	90                   	nop
    1330:	c9                   	leave  
    1331:	c3                   	ret    

0000000000001332 <_GLOBAL__sub_I_main>:
    1332:	f3 0f 1e fa          	endbr64 
    1336:	55                   	push   %rbp
    1337:	48 89 e5             	mov    %rsp,%rbp
    133a:	be ff ff 00 00       	mov    $0xffff,%esi
    133f:	bf 01 00 00 00       	mov    $0x1,%edi
    1344:	e8 93 ff ff ff       	call   12dc <_Z41__static_initialization_and_destruction_0ii>
    1349:	5d                   	pop    %rbp
    134a:	c3                   	ret    

Disassembly of section .fini:

000000000000134c <_fini>:
    134c:	f3 0f 1e fa          	endbr64 
    1350:	48 83 ec 08          	sub    $0x8,%rsp
    1354:	48 83 c4 08          	add    $0x8,%rsp
    1358:	c3                   	ret    
