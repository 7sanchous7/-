.586 
.MODEL flat,C
.DATA
.CODE

extern fun_el:near ; объ€вление внешней функции 
public func_interval
func_interval proc C
	push ebp
	mov ebp,esp

	push dword ptr [ebp+8]
	call fun_el
	mov esp,ebp

	pop ebp
	ret; выход из подпрограммы
func_interval endp
End
