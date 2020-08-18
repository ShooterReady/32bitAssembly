;
;

.386 ; Identifies this as a 32 bit program
.model flat, stdcall ;32 bit programs, always use the flat memory model, which is associated with the processors protected mode
.stack 4096 ; Runtime stack size is 4096 bytes 
ExitProcess PROTO, dwExitCode:DWORD  ; Declares a prototype for the ExitProcess function
									 ; A prototype consists of a function name, PROTO keyword, a comma, and a list of input parameters

.code ; .code section marks the beginning of the code area of the program.
main PROC 
	mov eax, 5
	add eax, 6
	INVOKE ExitProcess,0
main ENDP
END main