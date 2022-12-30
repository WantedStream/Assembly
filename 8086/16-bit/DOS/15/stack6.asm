.model small
.stack 100h
.data
n dw 5
sum dw 0
.code
start:
mov ax,@Data
mov ds,ax

push n
lea bx,sum
push bx

call fibo

mov ax,4c00h
int 21h

fibo PROC

mov bp,sp
mov bx,1 
push bx ;last last
push bx ;last
mov bx,0
push bx
mov cx,[bp+4];cx=n
again:
mov ax,[bp-4]
add [bp-6],ax
mov bx,[bp-2]
add [bp-2],ax
mov [bp-4],ax
loop again
pop bx
pop bx
pop bx
ret 4
fibo ENDP
end start