; Listing generated by Microsoft (R) Optimizing Compiler Version 15.00.30729.01 

	TITLE	c:\Users\user\Desktop\binaries\24_for_loops.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

_DATA	SEGMENT
$SG2471	DB	'f(%d)', 0aH, 00H
_DATA	ENDS
PUBLIC	_printing_function
EXTRN	__imp__printf:PROC
; Function compile flags: /Odtp
_TEXT	SEGMENT
_i$ = 8							; size = 4
_printing_function PROC
; File c:\users\user\desktop\binaries\24_for_loops.c
; Line 7
	push	ebp
	mov	ebp, esp
; Line 8
	mov	eax, DWORD PTR _i$[ebp]
	push	eax
	push	OFFSET $SG2471
	call	DWORD PTR __imp__printf
	add	esp, 8
; Line 9
	pop	ebp
	ret	0
_printing_function ENDP
_TEXT	ENDS
PUBLIC	_main
; Function compile flags: /Odtp
_TEXT	SEGMENT
_i$ = -4						; size = 4
_main	PROC
; Line 11
	push	ebp
	mov	ebp, esp
	push	ecx
; Line 13
	mov	DWORD PTR _i$[ebp], 2
	jmp	SHORT $LN3@main
$LN2@main:
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
$LN3@main:
	cmp	DWORD PTR _i$[ebp], 10			; 0000000aH
	jge	SHORT $LN1@main
; Line 14
	mov	ecx, DWORD PTR _i$[ebp]
	push	ecx
	call	_printing_function
	add	esp, 4
	jmp	SHORT $LN2@main
$LN1@main:
; Line 15
	xor	eax, eax
; Line 16
	mov	esp, ebp
	pop	ebp
	ret	0
_main	ENDP
_TEXT	ENDS
END