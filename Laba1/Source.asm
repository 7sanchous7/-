.686
.model flat,stdcall
.stack 100h

.data
.code
ExitProcess PROTO STDCALL :DWORD
Start:

mov eax, 15
not al
mov ebx, 9
mul ebx

mov ebx, 65
add eax, ebx

mov ebx, 15
not bl
mov ecx, 9
add ebx, ecx

xor eax, ebx
exit:
Invoke ExitProcess,1
End Start
