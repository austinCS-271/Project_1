; Author: Austin Chayka
; Program Name: CS-271 Program #1
; Description:
;	Program takes two integers from the user, preforms addition, subtraction, multiplication, and division, and prints the results to the console

INCLUDE	Irvine32.inc

.data
	;print strings
	writeHead1 BYTE "	Elementary Arithmetic	by Austin Chayka", 13, 10, 0
	writeHead2 BYTE "Enter 2 numbers, and I'll show you the sum, difference, product, quotient, and remainder.", 13, 10, 0
	prompt1 BYTE "First Number: ", 0
	prompt2 BYTE "Second Number: ", 0
	plus BYTE " + ", 0
	minus BYTE " - ", 0
	mult BYTE " x ", 0
	divid BYTE " / ", 0
	remain BYTE " remainder ", 0
	equal BYTE " = ", 0
	newLine BYTE 13, 10, 0
	;calculation data
	n1 DWORD ?
	n2 DWORD ?
	sum DWORD ?
	difference DWORD ?
	product DWORD ?
	quotient DWORD ?
	remainder DWORD ?

.code

main PROC

;print intro
	mov		edx, OFFSET writeHead1
	call	WriteString
	mov		edx, OFFSET writeHead2
	call	WriteString
	mov		edx, OFFSET newLine
	call	WriteString

;get input from user
	mov		edx, OFFSET prompt1
	call	WriteString
	call	ReadInt
	mov		n1, eax
	mov		edx, OFFSET prompt2
	call	WriteString
	call	ReadInt
	mov		n2, eax
	mov		edx, OFFSET newLine
	call	WriteString

;calculate values
	;addition
	mov		eax, n1
	add		eax, n2
	mov		sum, eax
	;subtraction
	mov		eax, n1
	sub		eax, n2
	mov		difference, eax
	;multiplication
	mov		eax, n1
	mul		n2
	mov		product, eax
	;division
	mov		edx, 0
	mov		eax, n1
	div		n2
	mov		quotient, eax
	mov		remainder, edx

;print values
	;addition
	mov		eax, n1
	call	WriteInt
	mov		edx, OFFSET plus
	call	WriteString
	mov		eax, n2
	call	WriteInt
	mov		edx, OFFSET equal
	call	WriteString
	mov		eax, sum
	call	WriteInt
	mov		edx, OFFSET newLine
	call	WriteString
	;subtraction
	mov		eax, n1
	call	WriteInt
	mov		edx, OFFSET minus
	call	WriteString
	mov		eax, n2
	call	WriteInt
	mov		edx, OFFSET equal
	call	WriteString
	mov		eax, difference
	call	WriteInt
	mov		edx, OFFSET newLine
	call	WriteString
	;multiplication
	mov		eax, n1
	call	WriteInt
	mov		edx, OFFSET mult
	call	WriteString
	mov		eax, n2
	call	WriteInt
	mov		edx, OFFSET equal
	call	WriteString
	mov		eax, product
	call	WriteInt
	mov		edx, OFFSET newLine
	call	WriteString
	;division
	mov		eax, n1
	call	WriteInt
	mov		edx, OFFSET divid
	call	WriteString
	mov		eax, n2
	call	WriteInt
	mov		edx, OFFSET equal
	call	WriteString
	mov		eax, quotient
	call	WriteInt
	mov		edx, OFFSET remain
	call	WriteString
	mov		eax, remainder
	call	WriteInt
	mov		edx, OFFSET newLine
	call	WriteString

	exit
main endp

END main