; Author: Austin Chayka
; Program Name: CS-271 Program #1
; Date: 10.1.2020

INCLUDE	Irvine32.inc

.data
	writeHead1 BYTE "	Elementary Arithmetic	by Austin Chayka", 13, 10, 0
	writeHead2 BYTE "Enter 2 numbers, and I'll show you the sum, difference, product, quotient, and remainder.", 13, 10, 0

.code

main PROC

	mov		edx, OFFSET writeHead1
	call	WriteString
	mov		edx, OFFSET writeHead2
	call	WriteString

	exit
main endp

END main