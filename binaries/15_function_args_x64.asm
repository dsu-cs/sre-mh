; Listing generated by Microsoft (R) Optimizing Compiler Version 15.00.30729.01 

include listing.inc

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

_DATA	SEGMENT
$SG2501	DB	'%d', 0aH, 00H
_DATA	ENDS
PUBLIC	f
; Function compile flags: /Ogtpy
_TEXT	SEGMENT
a$ = 8
b$ = 16
c$ = 24
f	PROC
; File c:\users\user\desktop\binaries\15_function_args.c
; Line 8
	imul	ecx, edx
	lea	eax, DWORD PTR [r8+rcx]
; Line 9
	ret	0
f	ENDP
_TEXT	ENDS
PUBLIC	main
EXTRN	__imp_printf:PROC
pdata	SEGMENT
$pdata$main DD	imagerel $LN5
	DD	imagerel $LN5+29
	DD	imagerel $unwind$main
pdata	ENDS
xdata	SEGMENT
$unwind$main DD	010401H
	DD	04204H
; Function compile flags: /Ogtpy
xdata	ENDS
_TEXT	SEGMENT
main	PROC
; Line 11
$LN5:
	sub	rsp, 40					; 00000028H
; Line 12
	lea	rcx, OFFSET FLAT:$SG2501
	mov	edx, 5
	call	QWORD PTR __imp_printf
; Line 13
	xor	eax, eax
; Line 14
	add	rsp, 40					; 00000028H
	ret	0
main	ENDP
_TEXT	ENDS
END