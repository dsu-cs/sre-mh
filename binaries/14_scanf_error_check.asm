; Listing generated by Microsoft (R) Optimizing Compiler Version 15.00.30729.01 

	TITLE	c:\Users\user\Desktop\binaries\14_scanf_error_check.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

_DATA	SEGMENT
$SG2470	DB	'Enter X:', 0aH, 00H
	ORG $+2
$SG2472	DB	'%d', 00H
	ORG $+1
$SG2473	DB	'You entered %d...', 0aH, 00H
	ORG $+1
$SG2475	DB	'woof.', 0aH, 00H
_DATA	ENDS
PUBLIC	_main
EXTRN	__imp__scanf:PROC
EXTRN	__imp__printf:PROC
; Function compile flags: /Odtp
_TEXT	SEGMENT
_x$ = -4						; size = 4
_main	PROC
; File c:\users\user\desktop\binaries\14_scanf_error_check.c
; Line 5
	push	ebp
	mov	ebp, esp
	push	ecx
; Line 7
	push	OFFSET $SG2470
	call	DWORD PTR __imp__printf
	add	esp, 4
; Line 9
	lea	eax, DWORD PTR _x$[ebp]
	push	eax
	push	OFFSET $SG2472
	call	DWORD PTR __imp__scanf
	add	esp, 8
	cmp	eax, 1
	jne	SHORT $LN2@main
; Line 10
	mov	ecx, DWORD PTR _x$[ebp]
	push	ecx
	push	OFFSET $SG2473
	call	DWORD PTR __imp__printf
	add	esp, 8
; Line 11
	jmp	SHORT $LN1@main
$LN2@main:
; Line 12
	push	OFFSET $SG2475
	call	DWORD PTR __imp__printf
	add	esp, 4
$LN1@main:
; Line 13
	xor	eax, eax
; Line 14
	mov	esp, ebp
	pop	ebp
	ret	0
_main	ENDP
_TEXT	ENDS
END
