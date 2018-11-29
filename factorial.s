.file "fac.c"
.text
.align 2
.global factorial
.syntax unified
.arm
.fpu vfp
.type factorial, %function 


factorial:
	sub r1, r0, #1
loop:
	mul r0, r1, r0
	sub r1, r1, #1
	cmp r1, #1
	blt loop
