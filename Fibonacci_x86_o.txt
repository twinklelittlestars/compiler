
Fibonacci_x86.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <main>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 20          	sub    $0x20,%rsp
   c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  13:	00 00 
  15:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  19:	31 c0                	xor    %eax,%eax
  1b:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
  22:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%rbp)
  29:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%rbp)
  30:	48 8d 45 e4          	lea    -0x1c(%rbp),%rax
  34:	48 89 c6             	mov    %rax,%rsi
  37:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 3e <main+0x3e>
  3e:	48 89 c7             	mov    %rax,%rdi
  41:	e8 00 00 00 00       	call   46 <main+0x46>
  46:	8b 45 e8             	mov    -0x18(%rbp),%eax
  49:	89 c6                	mov    %eax,%esi
  4b:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 52 <main+0x52>
  52:	48 89 c7             	mov    %rax,%rdi
  55:	e8 00 00 00 00       	call   5a <main+0x5a>
  5a:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 61 <main+0x61>
  61:	48 89 d6             	mov    %rdx,%rsi
  64:	48 89 c7             	mov    %rax,%rdi
  67:	e8 00 00 00 00       	call   6c <main+0x6c>
  6c:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6f:	89 c6                	mov    %eax,%esi
  71:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 78 <main+0x78>
  78:	48 89 c7             	mov    %rax,%rdi
  7b:	e8 00 00 00 00       	call   80 <main+0x80>
  80:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 87 <main+0x87>
  87:	48 89 d6             	mov    %rdx,%rsi
  8a:	48 89 c7             	mov    %rax,%rdi
  8d:	e8 00 00 00 00       	call   92 <main+0x92>
  92:	eb 3c                	jmp    d0 <main+0xd0>
  94:	8b 45 ec             	mov    -0x14(%rbp),%eax
  97:	89 45 f4             	mov    %eax,-0xc(%rbp)
  9a:	8b 45 e8             	mov    -0x18(%rbp),%eax
  9d:	01 45 ec             	add    %eax,-0x14(%rbp)
  a0:	8b 45 ec             	mov    -0x14(%rbp),%eax
  a3:	89 c6                	mov    %eax,%esi
  a5:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # ac <main+0xac>
  ac:	48 89 c7             	mov    %rax,%rdi
  af:	e8 00 00 00 00       	call   b4 <main+0xb4>
  b4:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # bb <main+0xbb>
  bb:	48 89 d6             	mov    %rdx,%rsi
  be:	48 89 c7             	mov    %rax,%rdi
  c1:	e8 00 00 00 00       	call   c6 <main+0xc6>
  c6:	8b 45 f4             	mov    -0xc(%rbp),%eax
  c9:	89 45 e8             	mov    %eax,-0x18(%rbp)
  cc:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
  d0:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  d3:	39 45 f0             	cmp    %eax,-0x10(%rbp)
  d6:	7c bc                	jl     94 <main+0x94>
  d8:	b8 00 00 00 00       	mov    $0x0,%eax
  dd:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  e1:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  e8:	00 00 
  ea:	74 05                	je     f1 <main+0xf1>
  ec:	e8 00 00 00 00       	call   f1 <main+0xf1>
  f1:	c9                   	leave  
  f2:	c3                   	ret    

00000000000000f3 <_Z41__static_initialization_and_destruction_0ii>:
  f3:	f3 0f 1e fa          	endbr64 
  f7:	55                   	push   %rbp
  f8:	48 89 e5             	mov    %rsp,%rbp
  fb:	48 83 ec 10          	sub    $0x10,%rsp
  ff:	89 7d fc             	mov    %edi,-0x4(%rbp)
 102:	89 75 f8             	mov    %esi,-0x8(%rbp)
 105:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
 109:	75 3b                	jne    146 <_Z41__static_initialization_and_destruction_0ii+0x53>
 10b:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
 112:	75 32                	jne    146 <_Z41__static_initialization_and_destruction_0ii+0x53>
 114:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 11b <_Z41__static_initialization_and_destruction_0ii+0x28>
 11b:	48 89 c7             	mov    %rax,%rdi
 11e:	e8 00 00 00 00       	call   123 <_Z41__static_initialization_and_destruction_0ii+0x30>
 123:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 12a <_Z41__static_initialization_and_destruction_0ii+0x37>
 12a:	48 89 c2             	mov    %rax,%rdx
 12d:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 134 <_Z41__static_initialization_and_destruction_0ii+0x41>
 134:	48 89 c6             	mov    %rax,%rsi
 137:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 13e <_Z41__static_initialization_and_destruction_0ii+0x4b>
 13e:	48 89 c7             	mov    %rax,%rdi
 141:	e8 00 00 00 00       	call   146 <_Z41__static_initialization_and_destruction_0ii+0x53>
 146:	90                   	nop
 147:	c9                   	leave  
 148:	c3                   	ret    

0000000000000149 <_GLOBAL__sub_I_main>:
 149:	f3 0f 1e fa          	endbr64 
 14d:	55                   	push   %rbp
 14e:	48 89 e5             	mov    %rsp,%rbp
 151:	be ff ff 00 00       	mov    $0xffff,%esi
 156:	bf 01 00 00 00       	mov    $0x1,%edi
 15b:	e8 93 ff ff ff       	call   f3 <_Z41__static_initialization_and_destruction_0ii>
 160:	5d                   	pop    %rbp
 161:	c3                   	ret    
