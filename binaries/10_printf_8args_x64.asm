; Listing generated by Microsoft (R) Optimizing Compiler Version 15.00.30729.01 

include listing.inc

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

_DATA	SEGMENT
$SG2428	DB	'a=%d; b=%d; c=%d; d=%d; e=%d; f=%d; g=%d; h=%d', 0aH, 00H
_DATA	ENDS
PUBLIC	main
EXTRN	__imp_printf:PROC
pdata	SEGMENT
$pdata$main DD	imagerel $LN3
	DD	imagerel $LN3+81
	DD	imagerel $unwind$main
pdata	ENDS
xdata	SEGMENT
$unwind$main DD	010401H
	DD	0a204H
; Function compile flags: /Odtp
xdata	ENDS
_TEXT	SEGMENT
main	PROC
; File c:\users\user\desktop\binaries\10_printf_8args_x64.c
; Line 6
$LN3:
	sub	rsp, 88					; 00000058H
; Line 7
	mov	DWORD PTR [rsp+64], 8
	mov	DWORD PTR [rsp+56], 7
	mov	DWORD PTR [rsp+48], 6
	mov	DWORD PTR [rsp+40], 5
	mov	DWORD PTR [rsp+32], 4
	mov	r9d, 3
	mov	r8d, 2
	mov	edx, 1
	lea	rcx, OFFSET FLAT:$SG2428
	call	QWORD PTR __imp_printf
; Line 8
	xor	eax, eax
; Line 9
	add	rsp, 88					; 00000058H
	ret	0
main	ENDP
_TEXT	ENDS
END
