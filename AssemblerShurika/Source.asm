.686
.model flat,stdcall
.stack 100h

.data
.code
ExitProcess PROTO STDCALL :DWORD
Start:

mov eax, 15 ; x
ror al, 5 ; ne x
mov ebx,9;
mul ebx; ne x * ne y

mov ecx,eax	;ne x * ne y � ecx

mov eax,0 
mov al,65	;z
mov edx,eax	; � edx

add edx,ecx	;����� ����� � edx

mov eax,0
mov ebx, 0
mov ecx, 0
mov eax,15	;x
ror al, 5
mov ebx,9
add eax,ebx

mov ecx,eax	;������ ����� � e�x

xor ecx,edx	;��������� � ecx
mov eax,ecx

mov ecx, 0

exit:
Invoke ExitProcess,1
End Start
