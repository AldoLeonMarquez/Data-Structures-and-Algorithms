	.file	"main.cpp"
	.text
	.section .rdata,"dr"
_ZStL19piecewise_construct:
	.space 1
.lcomm _ZStL8__ioinit,1,1
	.section	.text$_ZN5eulerD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN5eulerD1Ev
	.def	_ZN5eulerD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5eulerD1Ev
_ZN5eulerD1Ev:
.LFB2125:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEED1Ev
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "Graph 1:\0"
.LC1:
	.ascii "graph1.data\0"
.LC2:
	.ascii "Graph 2:\0"
.LC3:
	.ascii "graph2.data\0"
.LC4:
	.ascii "Graph 3:\0"
.LC5:
	.ascii "graph3.data\0"
.LC6:
	.ascii "Graph 4:\0"
.LC7:
	.ascii "graph4.data\0"
.LC8:
	.ascii "Graph 5:\0"
.LC9:
	.ascii "graph5.data\0"
.LC10:
	.ascii "Graph 6:\0"
.LC11:
	.ascii "graph6.data\0"
.LC12:
	.ascii "Graph 1(txt):\0"
.LC13:
	.ascii "g1.txt\0"
.LC14:
	.ascii "Graph 2(txt):\0"
.LC15:
	.ascii "g2.txt\0"
.LC16:
	.ascii "Graph 3(txt):\0"
.LC17:
	.ascii "g3.txt\0"
.LC18:
	.ascii "Graph 4(txt):\0"
.LC19:
	.ascii "g4.txt\0"
.LC20:
	.ascii "Graph 5(txt):\0"
.LC21:
	.ascii "g5.txt\0"
.LC22:
	.ascii "Graph 6(txt):\0"
.LC23:
	.ascii "g6.txt\0"
.LC24:
	.ascii "Graph 7(txt):\0"
.LC25:
	.ascii "g7.txt\0"
.LC26:
	.ascii "Graph 8(txt):\0"
.LC27:
	.ascii "g8.txt\0"
.LC28:
	.ascii "Graph 9(txt):\0"
.LC29:
	.ascii "g9.txt\0"
.LC30:
	.ascii "Graph 10(txt):\0"
.LC31:
	.ascii "g10.txt\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB2122:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$1320, %rsp
	.seh_stackalloc	1320
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	call	__main
	leaq	.LC0(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
.LEHB0:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
.LEHE0:
	leaq	943(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcEC1Ev
	leaq	943(%rbp), %rdx
	leaq	928(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
.LEHB1:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE1:
	leaq	928(%rbp), %rdx
	leaq	864(%rbp), %rax
	movq	%rax, %rcx
.LEHB2:
	call	_ZN5eulerC1ESs
.LEHE2:
	leaq	928(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSsD1Ev
	leaq	943(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
.LEHB3:
	call	_ZNSolsEPFRSoS_E
	leaq	864(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5euler7isEulerEv
	testb	%al, %al
	je	.L3
	leaq	864(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5euler8drawPathEv
.L3:
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSolsEPFRSoS_E
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	leaq	.LC2(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
.LEHE3:
	leaq	959(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcEC1Ev
	leaq	959(%rbp), %rdx
	leaq	944(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
.LEHB4:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE4:
	leaq	944(%rbp), %rdx
	leaq	800(%rbp), %rax
	movq	%rax, %rcx
.LEHB5:
	call	_ZN5eulerC1ESs
.LEHE5:
	leaq	944(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSsD1Ev
	leaq	959(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
.LEHB6:
	call	_ZNSolsEPFRSoS_E
	leaq	800(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5euler7isEulerEv
	testb	%al, %al
	je	.L4
	leaq	800(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5euler8drawPathEv
.L4:
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSolsEPFRSoS_E
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	leaq	.LC4(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
.LEHE6:
	leaq	975(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcEC1Ev
	leaq	975(%rbp), %rdx
	leaq	960(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
.LEHB7:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE7:
	leaq	960(%rbp), %rdx
	leaq	736(%rbp), %rax
	movq	%rax, %rcx
.LEHB8:
	call	_ZN5eulerC1ESs
.LEHE8:
	leaq	960(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSsD1Ev
	leaq	975(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
.LEHB9:
	call	_ZNSolsEPFRSoS_E
	leaq	736(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5euler7isEulerEv
	testb	%al, %al
	je	.L5
	leaq	736(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5euler8drawPathEv
.L5:
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSolsEPFRSoS_E
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	leaq	.LC6(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
.LEHE9:
	leaq	991(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcEC1Ev
	leaq	991(%rbp), %rdx
	leaq	976(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC7(%rip), %rdx
	movq	%rax, %rcx
.LEHB10:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE10:
	leaq	976(%rbp), %rdx
	leaq	672(%rbp), %rax
	movq	%rax, %rcx
.LEHB11:
	call	_ZN5eulerC1ESs
.LEHE11:
	leaq	976(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSsD1Ev
	leaq	991(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
.LEHB12:
	call	_ZNSolsEPFRSoS_E
	leaq	672(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5euler7isEulerEv
	testb	%al, %al
	je	.L6
	leaq	672(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5euler8drawPathEv
.L6:
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSolsEPFRSoS_E
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	leaq	.LC8(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
.LEHE12:
	leaq	1007(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcEC1Ev
	leaq	1007(%rbp), %rdx
	leaq	992(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC9(%rip), %rdx
	movq	%rax, %rcx
.LEHB13:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE13:
	leaq	992(%rbp), %rdx
	leaq	608(%rbp), %rax
	movq	%rax, %rcx
.LEHB14:
	call	_ZN5eulerC1ESs
.LEHE14:
	leaq	992(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSsD1Ev
	leaq	1007(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
.LEHB15:
	call	_ZNSolsEPFRSoS_E
	leaq	608(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5euler7isEulerEv
	testb	%al, %al
	je	.L7
	leaq	608(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5euler8drawPathEv
.L7:
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSolsEPFRSoS_E
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	leaq	.LC10(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
.LEHE15:
	leaq	1023(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcEC1Ev
	leaq	1023(%rbp), %rdx
	leaq	1008(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
.LEHB16:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE16:
	leaq	1008(%rbp), %rdx
	leaq	544(%rbp), %rax
	movq	%rax, %rcx
.LEHB17:
	call	_ZN5eulerC1ESs
.LEHE17:
	leaq	1008(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSsD1Ev
	leaq	1023(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
.LEHB18:
	call	_ZNSolsEPFRSoS_E
	leaq	544(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5euler7isEulerEv
	testb	%al, %al
	je	.L8
	leaq	544(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5euler8drawPathEv
.L8:
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSolsEPFRSoS_E
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	leaq	.LC12(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
.LEHE18:
	leaq	1039(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcEC1Ev
	leaq	1039(%rbp), %rdx
	leaq	1024(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC13(%rip), %rdx
	movq	%rax, %rcx
.LEHB19:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE19:
	leaq	1024(%rbp), %rdx
	leaq	480(%rbp), %rax
	movq	%rax, %rcx
.LEHB20:
	call	_ZN5eulerC1ESs
.LEHE20:
	leaq	1024(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSsD1Ev
	leaq	1039(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
.LEHB21:
	call	_ZNSolsEPFRSoS_E
	leaq	480(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5euler7isEulerEv
	testb	%al, %al
	je	.L9
	leaq	480(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5euler8drawPathEv
.L9:
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSolsEPFRSoS_E
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	leaq	.LC14(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
.LEHE21:
	leaq	1055(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcEC1Ev
	leaq	1055(%rbp), %rdx
	leaq	1040(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rcx
.LEHB22:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE22:
	leaq	1040(%rbp), %rdx
	leaq	416(%rbp), %rax
	movq	%rax, %rcx
.LEHB23:
	call	_ZN5eulerC1ESs
.LEHE23:
	leaq	1040(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSsD1Ev
	leaq	1055(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
.LEHB24:
	call	_ZNSolsEPFRSoS_E
	leaq	416(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5euler7isEulerEv
	testb	%al, %al
	je	.L10
	leaq	416(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5euler8drawPathEv
.L10:
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSolsEPFRSoS_E
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	leaq	.LC16(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
.LEHE24:
	leaq	1071(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcEC1Ev
	leaq	1071(%rbp), %rdx
	leaq	1056(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC17(%rip), %rdx
	movq	%rax, %rcx
.LEHB25:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE25:
	leaq	1056(%rbp), %rdx
	leaq	352(%rbp), %rax
	movq	%rax, %rcx
.LEHB26:
	call	_ZN5eulerC1ESs
.LEHE26:
	leaq	1056(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSsD1Ev
	leaq	1071(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
.LEHB27:
	call	_ZNSolsEPFRSoS_E
	leaq	352(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5euler7isEulerEv
	testb	%al, %al
	je	.L11
	leaq	352(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5euler8drawPathEv
.L11:
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSolsEPFRSoS_E
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	leaq	.LC18(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
.LEHE27:
	leaq	1087(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcEC1Ev
	leaq	1087(%rbp), %rdx
	leaq	1072(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC19(%rip), %rdx
	movq	%rax, %rcx
.LEHB28:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE28:
	leaq	1072(%rbp), %rdx
	leaq	288(%rbp), %rax
	movq	%rax, %rcx
.LEHB29:
	call	_ZN5eulerC1ESs
.LEHE29:
	leaq	1072(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSsD1Ev
	leaq	1087(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
.LEHB30:
	call	_ZNSolsEPFRSoS_E
	leaq	288(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5euler7isEulerEv
	testb	%al, %al
	je	.L12
	leaq	288(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5euler8drawPathEv
.L12:
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSolsEPFRSoS_E
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	leaq	.LC20(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
.LEHE30:
	leaq	1103(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcEC1Ev
	leaq	1103(%rbp), %rdx
	leaq	1088(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC21(%rip), %rdx
	movq	%rax, %rcx
.LEHB31:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE31:
	leaq	1088(%rbp), %rdx
	leaq	224(%rbp), %rax
	movq	%rax, %rcx
.LEHB32:
	call	_ZN5eulerC1ESs
.LEHE32:
	leaq	1088(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSsD1Ev
	leaq	1103(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
.LEHB33:
	call	_ZNSolsEPFRSoS_E
	leaq	224(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5euler7isEulerEv
	testb	%al, %al
	je	.L13
	leaq	224(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5euler8drawPathEv
.L13:
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSolsEPFRSoS_E
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	leaq	.LC22(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
.LEHE33:
	leaq	1119(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcEC1Ev
	leaq	1119(%rbp), %rdx
	leaq	1104(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC23(%rip), %rdx
	movq	%rax, %rcx
.LEHB34:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE34:
	leaq	1104(%rbp), %rdx
	leaq	160(%rbp), %rax
	movq	%rax, %rcx
.LEHB35:
	call	_ZN5eulerC1ESs
.LEHE35:
	leaq	1104(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSsD1Ev
	leaq	1119(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
.LEHB36:
	call	_ZNSolsEPFRSoS_E
	leaq	160(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5euler7isEulerEv
	testb	%al, %al
	je	.L14
	leaq	160(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5euler8drawPathEv
.L14:
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSolsEPFRSoS_E
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	leaq	.LC24(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
.LEHE36:
	leaq	1135(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcEC1Ev
	leaq	1135(%rbp), %rdx
	leaq	1120(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC25(%rip), %rdx
	movq	%rax, %rcx
.LEHB37:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE37:
	leaq	1120(%rbp), %rdx
	leaq	96(%rbp), %rax
	movq	%rax, %rcx
.LEHB38:
	call	_ZN5eulerC1ESs
.LEHE38:
	leaq	1120(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSsD1Ev
	leaq	1135(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
.LEHB39:
	call	_ZNSolsEPFRSoS_E
	leaq	96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5euler7isEulerEv
	testb	%al, %al
	je	.L15
	leaq	96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5euler8drawPathEv
.L15:
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSolsEPFRSoS_E
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	leaq	.LC26(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
.LEHE39:
	leaq	1151(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcEC1Ev
	leaq	1151(%rbp), %rdx
	leaq	1136(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC27(%rip), %rdx
	movq	%rax, %rcx
.LEHB40:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE40:
	leaq	1136(%rbp), %rdx
	leaq	32(%rbp), %rax
	movq	%rax, %rcx
.LEHB41:
	call	_ZN5eulerC1ESs
.LEHE41:
	leaq	1136(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSsD1Ev
	leaq	1151(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
.LEHB42:
	call	_ZNSolsEPFRSoS_E
	leaq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5euler7isEulerEv
	testb	%al, %al
	je	.L16
	leaq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5euler8drawPathEv
.L16:
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSolsEPFRSoS_E
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	leaq	.LC28(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
.LEHE42:
	leaq	1167(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcEC1Ev
	leaq	1167(%rbp), %rdx
	leaq	1152(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC29(%rip), %rdx
	movq	%rax, %rcx
.LEHB43:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE43:
	leaq	1152(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
.LEHB44:
	call	_ZN5eulerC1ESs
.LEHE44:
	leaq	1152(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSsD1Ev
	leaq	1167(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
.LEHB45:
	call	_ZNSolsEPFRSoS_E
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5euler7isEulerEv
	testb	%al, %al
	je	.L17
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5euler8drawPathEv
.L17:
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSolsEPFRSoS_E
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	leaq	.LC30(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
.LEHE45:
	leaq	1183(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcEC1Ev
	leaq	1183(%rbp), %rdx
	leaq	1168(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC31(%rip), %rdx
	movq	%rax, %rcx
.LEHB46:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE46:
	leaq	1168(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
.LEHB47:
	call	_ZN5eulerC1ESs
.LEHE47:
	leaq	1168(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSsD1Ev
	leaq	1183(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
.LEHB48:
	call	_ZNSolsEPFRSoS_E
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5euler7isEulerEv
	testb	%al, %al
	je	.L18
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5euler8drawPathEv
.L18:
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSolsEPFRSoS_E
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
.LEHE48:
	movl	$0, %ebx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5eulerD1Ev
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5eulerD1Ev
	leaq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5eulerD1Ev
	leaq	96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5eulerD1Ev
	leaq	160(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5eulerD1Ev
	leaq	224(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5eulerD1Ev
	leaq	288(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5eulerD1Ev
	leaq	352(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5eulerD1Ev
	leaq	416(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5eulerD1Ev
	leaq	480(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5eulerD1Ev
	leaq	544(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5eulerD1Ev
	leaq	608(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5eulerD1Ev
	leaq	672(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5eulerD1Ev
	leaq	736(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5eulerD1Ev
	leaq	800(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5eulerD1Ev
	leaq	864(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5eulerD1Ev
	movl	%ebx, %eax
	jmp	.L116
.L69:
	movq	%rax, %rbx
	leaq	928(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSsD1Ev
	jmp	.L21
.L68:
	movq	%rax, %rbx
.L21:
	leaq	943(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB49:
	call	_Unwind_Resume
.L72:
	movq	%rax, %rbx
	leaq	944(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSsD1Ev
	jmp	.L23
.L71:
	movq	%rax, %rbx
.L23:
	leaq	959(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	jmp	.L24
.L75:
	movq	%rax, %rbx
	leaq	960(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSsD1Ev
	jmp	.L26
.L74:
	movq	%rax, %rbx
.L26:
	leaq	975(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	jmp	.L27
.L78:
	movq	%rax, %rbx
	leaq	976(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSsD1Ev
	jmp	.L29
.L77:
	movq	%rax, %rbx
.L29:
	leaq	991(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	jmp	.L30
.L81:
	movq	%rax, %rbx
	leaq	992(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSsD1Ev
	jmp	.L32
.L80:
	movq	%rax, %rbx
.L32:
	leaq	1007(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	jmp	.L33
.L84:
	movq	%rax, %rbx
	leaq	1008(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSsD1Ev
	jmp	.L35
.L83:
	movq	%rax, %rbx
.L35:
	leaq	1023(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	jmp	.L36
.L87:
	movq	%rax, %rbx
	leaq	1024(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSsD1Ev
	jmp	.L38
.L86:
	movq	%rax, %rbx
.L38:
	leaq	1039(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	jmp	.L39
.L90:
	movq	%rax, %rbx
	leaq	1040(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSsD1Ev
	jmp	.L41
.L89:
	movq	%rax, %rbx
.L41:
	leaq	1055(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	jmp	.L42
.L93:
	movq	%rax, %rbx
	leaq	1056(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSsD1Ev
	jmp	.L44
.L92:
	movq	%rax, %rbx
.L44:
	leaq	1071(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	jmp	.L45
.L96:
	movq	%rax, %rbx
	leaq	1072(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSsD1Ev
	jmp	.L47
.L95:
	movq	%rax, %rbx
.L47:
	leaq	1087(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	jmp	.L48
.L99:
	movq	%rax, %rbx
	leaq	1088(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSsD1Ev
	jmp	.L50
.L98:
	movq	%rax, %rbx
.L50:
	leaq	1103(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	jmp	.L51
.L102:
	movq	%rax, %rbx
	leaq	1104(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSsD1Ev
	jmp	.L53
.L101:
	movq	%rax, %rbx
.L53:
	leaq	1119(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	jmp	.L54
.L105:
	movq	%rax, %rbx
	leaq	1120(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSsD1Ev
	jmp	.L56
.L104:
	movq	%rax, %rbx
.L56:
	leaq	1135(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	jmp	.L57
.L108:
	movq	%rax, %rbx
	leaq	1136(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSsD1Ev
	jmp	.L59
.L107:
	movq	%rax, %rbx
.L59:
	leaq	1151(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	jmp	.L60
.L111:
	movq	%rax, %rbx
	leaq	1152(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSsD1Ev
	jmp	.L62
.L110:
	movq	%rax, %rbx
.L62:
	leaq	1167(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	jmp	.L63
.L114:
	movq	%rax, %rbx
	leaq	1168(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSsD1Ev
	jmp	.L65
.L113:
	movq	%rax, %rbx
.L65:
	leaq	1183(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	jmp	.L66
.L115:
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5eulerD1Ev
	jmp	.L66
.L112:
	movq	%rax, %rbx
.L66:
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5eulerD1Ev
	jmp	.L63
.L109:
	movq	%rax, %rbx
.L63:
	leaq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5eulerD1Ev
	jmp	.L60
.L106:
	movq	%rax, %rbx
.L60:
	leaq	96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5eulerD1Ev
	jmp	.L57
.L103:
	movq	%rax, %rbx
.L57:
	leaq	160(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5eulerD1Ev
	jmp	.L54
.L100:
	movq	%rax, %rbx
.L54:
	leaq	224(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5eulerD1Ev
	jmp	.L51
.L97:
	movq	%rax, %rbx
.L51:
	leaq	288(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5eulerD1Ev
	jmp	.L48
.L94:
	movq	%rax, %rbx
.L48:
	leaq	352(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5eulerD1Ev
	jmp	.L45
.L91:
	movq	%rax, %rbx
.L45:
	leaq	416(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5eulerD1Ev
	jmp	.L42
.L88:
	movq	%rax, %rbx
.L42:
	leaq	480(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5eulerD1Ev
	jmp	.L39
.L85:
	movq	%rax, %rbx
.L39:
	leaq	544(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5eulerD1Ev
	jmp	.L36
.L82:
	movq	%rax, %rbx
.L36:
	leaq	608(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5eulerD1Ev
	jmp	.L33
.L79:
	movq	%rax, %rbx
.L33:
	leaq	672(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5eulerD1Ev
	jmp	.L30
.L76:
	movq	%rax, %rbx
.L30:
	leaq	736(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5eulerD1Ev
	jmp	.L27
.L73:
	movq	%rax, %rbx
.L27:
	leaq	800(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5eulerD1Ev
	jmp	.L24
.L70:
	movq	%rax, %rbx
.L24:
	leaq	864(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5eulerD1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
	call	_Unwind_Resume
.LEHE49:
.L116:
	addq	$1320, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2122:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2122-.LLSDACSB2122
.LLSDACSB2122:
	.uleb128 .LEHB0-.LFB2122
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2122
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L68-.LFB2122
	.uleb128 0
	.uleb128 .LEHB2-.LFB2122
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L69-.LFB2122
	.uleb128 0
	.uleb128 .LEHB3-.LFB2122
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L70-.LFB2122
	.uleb128 0
	.uleb128 .LEHB4-.LFB2122
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L71-.LFB2122
	.uleb128 0
	.uleb128 .LEHB5-.LFB2122
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L72-.LFB2122
	.uleb128 0
	.uleb128 .LEHB6-.LFB2122
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L73-.LFB2122
	.uleb128 0
	.uleb128 .LEHB7-.LFB2122
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L74-.LFB2122
	.uleb128 0
	.uleb128 .LEHB8-.LFB2122
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L75-.LFB2122
	.uleb128 0
	.uleb128 .LEHB9-.LFB2122
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L76-.LFB2122
	.uleb128 0
	.uleb128 .LEHB10-.LFB2122
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L77-.LFB2122
	.uleb128 0
	.uleb128 .LEHB11-.LFB2122
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L78-.LFB2122
	.uleb128 0
	.uleb128 .LEHB12-.LFB2122
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L79-.LFB2122
	.uleb128 0
	.uleb128 .LEHB13-.LFB2122
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L80-.LFB2122
	.uleb128 0
	.uleb128 .LEHB14-.LFB2122
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L81-.LFB2122
	.uleb128 0
	.uleb128 .LEHB15-.LFB2122
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L82-.LFB2122
	.uleb128 0
	.uleb128 .LEHB16-.LFB2122
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L83-.LFB2122
	.uleb128 0
	.uleb128 .LEHB17-.LFB2122
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L84-.LFB2122
	.uleb128 0
	.uleb128 .LEHB18-.LFB2122
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L85-.LFB2122
	.uleb128 0
	.uleb128 .LEHB19-.LFB2122
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L86-.LFB2122
	.uleb128 0
	.uleb128 .LEHB20-.LFB2122
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L87-.LFB2122
	.uleb128 0
	.uleb128 .LEHB21-.LFB2122
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L88-.LFB2122
	.uleb128 0
	.uleb128 .LEHB22-.LFB2122
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L89-.LFB2122
	.uleb128 0
	.uleb128 .LEHB23-.LFB2122
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L90-.LFB2122
	.uleb128 0
	.uleb128 .LEHB24-.LFB2122
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L91-.LFB2122
	.uleb128 0
	.uleb128 .LEHB25-.LFB2122
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L92-.LFB2122
	.uleb128 0
	.uleb128 .LEHB26-.LFB2122
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L93-.LFB2122
	.uleb128 0
	.uleb128 .LEHB27-.LFB2122
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L94-.LFB2122
	.uleb128 0
	.uleb128 .LEHB28-.LFB2122
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L95-.LFB2122
	.uleb128 0
	.uleb128 .LEHB29-.LFB2122
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L96-.LFB2122
	.uleb128 0
	.uleb128 .LEHB30-.LFB2122
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L97-.LFB2122
	.uleb128 0
	.uleb128 .LEHB31-.LFB2122
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L98-.LFB2122
	.uleb128 0
	.uleb128 .LEHB32-.LFB2122
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L99-.LFB2122
	.uleb128 0
	.uleb128 .LEHB33-.LFB2122
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L100-.LFB2122
	.uleb128 0
	.uleb128 .LEHB34-.LFB2122
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L101-.LFB2122
	.uleb128 0
	.uleb128 .LEHB35-.LFB2122
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L102-.LFB2122
	.uleb128 0
	.uleb128 .LEHB36-.LFB2122
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L103-.LFB2122
	.uleb128 0
	.uleb128 .LEHB37-.LFB2122
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L104-.LFB2122
	.uleb128 0
	.uleb128 .LEHB38-.LFB2122
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L105-.LFB2122
	.uleb128 0
	.uleb128 .LEHB39-.LFB2122
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L106-.LFB2122
	.uleb128 0
	.uleb128 .LEHB40-.LFB2122
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L107-.LFB2122
	.uleb128 0
	.uleb128 .LEHB41-.LFB2122
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L108-.LFB2122
	.uleb128 0
	.uleb128 .LEHB42-.LFB2122
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L109-.LFB2122
	.uleb128 0
	.uleb128 .LEHB43-.LFB2122
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L110-.LFB2122
	.uleb128 0
	.uleb128 .LEHB44-.LFB2122
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L111-.LFB2122
	.uleb128 0
	.uleb128 .LEHB45-.LFB2122
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L112-.LFB2122
	.uleb128 0
	.uleb128 .LEHB46-.LFB2122
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L113-.LFB2122
	.uleb128 0
	.uleb128 .LEHB47-.LFB2122
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L114-.LFB2122
	.uleb128 0
	.uleb128 .LEHB48-.LFB2122
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L115-.LFB2122
	.uleb128 0
	.uleb128 .LEHB49-.LFB2122
	.uleb128 .LEHE49-.LEHB49
	.uleb128 0
	.uleb128 0
.LLSDACSE2122:
	.text
	.seh_endproc
	.section	.text$_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev
	.def	_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev
_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev:
.LFB2392:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2392:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2392-.LLSDACSB2392
.LLSDACSB2392:
.LLSDACSE2392:
	.section	.text$_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIiSaIiEED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIiSaIiEED1Ev
	.def	_ZNSt6vectorIiSaIiEED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIiSaIiEED1Ev
_ZNSt6vectorIiSaIiEED1Ev:
.LFB2395:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIiSaIiEED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2395:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2395-.LLSDACSB2395
.LLSDACSB2395:
.LLSDACSE2395:
	.section	.text$_ZNSt6vectorIiSaIiEED1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD1Ev
	.def	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD1Ev
_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD1Ev:
.LFB2488:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSaISt6vectorIiSaIiEEED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev
	.def	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev
_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev:
.LFB2489:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-6148914691236517205, %rax
	imulq	%rdx, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2489:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2489-.LLSDACSB2489
.LLSDACSB2489:
.LLSDACSE2489:
	.section	.text$_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv
	.def	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv
_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv:
.LFB2491:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E
	.def	_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E
_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E:
.LFB2492:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev
	.def	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev:
.LFB2496:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSaIiED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIiSaIiEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIiSaIiEED2Ev
	.def	_ZNSt12_Vector_baseIiSaIiEED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIiSaIiEED2Ev
_ZNSt12_Vector_baseIiSaIiEED2Ev:
.LFB2497:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$2, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2497:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2497-.LLSDACSB2497
.LLSDACSB2497:
.LLSDACSE2497:
	.section	.text$_ZNSt12_Vector_baseIiSaIiEED2Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.def	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv:
.LFB2499:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E
	.def	_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E
_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E:
.LFB2500:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt8_DestroyIPiEvT_S1_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaISt6vectorIiSaIiEEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaISt6vectorIiSaIiEEED2Ev
	.def	_ZNSaISt6vectorIiSaIiEEED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaISt6vectorIiSaIiEEED2Ev
_ZNSaISt6vectorIiSaIiEEED2Ev:
.LFB2533:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m
	.def	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m
_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m:
.LFB2535:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L132
	movq	16(%rbp), %rax
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE10deallocateERS3_PS2_m
.L132:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_
	.def	_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_
_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_:
.LFB2536:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaIiED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaIiED2Ev
	.def	_ZNSaIiED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaIiED2Ev
_ZNSaIiED2Ev:
.LFB2538:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIiED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	.def	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim:
.LFB2540:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L137
	movq	16(%rbp), %rax
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim
.L137:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPiEvT_S1_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPiEvT_S1_
	.def	_ZSt8_DestroyIPiEvT_S1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPiEvT_S1_
_ZSt8_DestroyIPiEvT_S1_:
.LFB2541:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEED2Ev
	.def	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEED2Ev
_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEED2Ev:
.LFB2556:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE10deallocateERS3_PS2_m,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE10deallocateERS3_PS2_m
	.def	_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE10deallocateERS3_PS2_m;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE10deallocateERS3_PS2_m
_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE10deallocateERS3_PS2_m:
.LFB2558:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE10deallocateEPS3_m
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_,"x"
	.linkonce discard
	.globl	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_
	.def	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_
_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_:
.LFB2559:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
.L143:
	movq	16(%rbp), %rax
	cmpq	24(%rbp), %rax
	je	.L144
	movq	16(%rbp), %rcx
	call	_ZSt11__addressofISt6vectorIiSaIiEEEPT_RS3_
	movq	%rax, %rcx
	call	_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_
	addq	$24, 16(%rbp)
	jmp	.L143
.L144:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIiED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIiED2Ev
	.def	_ZN9__gnu_cxx13new_allocatorIiED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIiED2Ev
_ZN9__gnu_cxx13new_allocatorIiED2Ev:
.LFB2561:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim
	.def	_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim
_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim:
.LFB2563:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_,"x"
	.linkonce discard
	.globl	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	.def	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_:
.LFB2564:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE10deallocateEPS3_m,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE10deallocateEPS3_m
	.def	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE10deallocateEPS3_m;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE10deallocateEPS3_m
_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE10deallocateEPS3_m:
.LFB2579:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdlPv
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt11__addressofISt6vectorIiSaIiEEEPT_RS3_,"x"
	.linkonce discard
	.globl	_ZSt11__addressofISt6vectorIiSaIiEEEPT_RS3_
	.def	_ZSt11__addressofISt6vectorIiSaIiEEEPT_RS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt11__addressofISt6vectorIiSaIiEEEPT_RS3_
_ZSt11__addressofISt6vectorIiSaIiEEEPT_RS3_:
.LFB2580:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_
	.def	_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_
_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_:
.LFB2581:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSt6vectorIiSaIiEED1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim
	.def	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim
_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim:
.LFB2582:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdlPv
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.text
	.def	_Z41__static_initialization_and_destruction_0ii;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z41__static_initialization_and_destruction_0ii
_Z41__static_initialization_and_destruction_0ii:
.LFB2611:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	cmpl	$1, 16(%rbp)
	jne	.L155
	cmpl	$65535, 24(%rbp)
	jne	.L155
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitC1Ev
	movq	.refptr.__dso_handle(%rip), %r8
	leaq	_ZStL8__ioinit(%rip), %rdx
	movq	.refptr._ZNSt8ios_base4InitD1Ev(%rip), %rcx
	call	__cxa_atexit
.L155:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_GLOBAL__sub_I_main;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_main
_GLOBAL__sub_I_main:
.LFB2612:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	$65535, %edx
	movl	$1, %ecx
	call	_Z41__static_initialization_and_destruction_0ii
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.ident	"GCC: (GNU) 7.3.0"
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEPFRSoS_E;	.scl	2;	.type	32;	.endef
	.def	_ZNSaIcEC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSsC1EPKcRKSaIcE;	.scl	2;	.type	32;	.endef
	.def	_ZN5eulerC1ESs;	.scl	2;	.type	32;	.endef
	.def	_ZNSsD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSaIcED1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN5euler7isEulerEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5euler8drawPathEv;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	__real__ZdlPv;	.scl	2;	.type	32;	.endef
	.def	_ZdlPv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	__cxa_atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZNSt8ios_base4InitD1Ev, "dr"
	.globl	.refptr._ZNSt8ios_base4InitD1Ev
	.linkonce	discard
.refptr._ZNSt8ios_base4InitD1Ev:
	.quad	_ZNSt8ios_base4InitD1Ev
	.section	.rdata$.refptr.__dso_handle, "dr"
	.globl	.refptr.__dso_handle
	.linkonce	discard
.refptr.__dso_handle:
	.quad	__dso_handle
	.section	.rdata$.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, "dr"
	.globl	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.linkonce	discard
.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_:
	.quad	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
