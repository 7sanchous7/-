.686
.model flat,stdcall
.stack 100h

.data
L dw ?;
M dd ?;
R dd ?;
W dw ?;
K dw ?;
array dw 1011100011110111b, 3DA6h, 911Ch, 6633h
.code
ExitProcess PROTO STDCALL :DWORD
Start:

mov ecx, 4
mov edx, 0
a1:
mov ax, array[edx]; x
not al; ne x
add al, 1 ; -x
mov array[edx], ax
add edx, 2
loop a1

mov ax, array[0]
mov bx, array[2]
mov cx, array[4]
mov dx, array[6]

mov K, bx
mov ebx, 0
mov bx,K
mov K, cx
mov ecx, 0
mov cx, K
and bx, ax; levaya chast v bx

or cx, dx; pravaya chast v cx

add ebx, ecx; rezultat v ebx

mov M, ebx
mov ecx, 0
mov cx, W
cmp bx, 4
jl m1; ������� ���� ������
jmp m2; ����������� �������

m1:
mov cx, array[2]
add ebx, ecx; ��� ��� ������� �<4
jmp m3

m2:
mov ebx, M; ��� ��� �>=4
sub ebx, 999
jmp m3

m3:
mov R, ebx

test ebx, 8000h; �������� �� ��������������� �����
jnz adr1; ������� � ������ ��� �������������� �����
jmp adr2; ������� � ������ ��� �������������� �����

adr1:
mov K, ax
mov eax, 0
mov ax, K
xor ebx, eax
mov R, ebx

adr2:
xor ebx, 1011b
mov R, ebx

exit:
Invoke ExitProcess,1
End Start
