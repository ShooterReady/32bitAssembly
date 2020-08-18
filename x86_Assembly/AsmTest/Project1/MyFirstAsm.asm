;
;

.386 ; Identifies this as a 32 bit program
.model flat, stdcall ;32 bit programs, always use the flat memory model, which is associated with the processors protected mode
.stack 4096 ; Runtime stack size is 4096 bytes 
ExitProcess PROTO, dwExitCode:DWORD  ; Declares a prototype for the ExitProcess function
									 ; A prototype consists of a function name, PROTO keyword, a comma, and a list of input parameters
.data
greeting BYTE "HELLO WORLD",0 ; 0 is for a null terminated string 
sum DWORD 5
val DWORD 11
val2 DWORD 5
list BYTE 10,20,30,40,50,60,70,80,90,100 ; when using multiple initializers if 10 is at offset 0000 then 20 is at offset 0001, etc
first DWORD 10
second DWORD 11

.code ; .code section marks the beginning of the code area of the program.
main PROC 
	mov eax, 5
	mov ecx, 6
	add eax, ecx
	add eax, sum ; move the value in the varaible sum into eax 
	add eax, val2

	INVOKE ExitProcess,0
main ENDP
END main