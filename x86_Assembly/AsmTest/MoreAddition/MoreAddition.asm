.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD

.data
	sum DWORD 0;
	val DWORD 25;

.code
main PROC
	mov eax, 0 ; move 0 into eax 
	inc eax    ; increment eax register by 1 
	add eax, 200 ; add 200 to eax value 
	sub eax, val ; subtract the current value of eax by val(25)
	mov sum, eax ; ????
	dec sum ; decrement sum by 1
	neg sum ; 2's complement of sum 
	
	INVOKE ExitProcess,0
main ENDP
END