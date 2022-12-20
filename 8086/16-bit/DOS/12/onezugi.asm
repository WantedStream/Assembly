.MODEL SMALL
.STACK 100h
.DATA
Num dw 0F62h
mone db 0
.CODE
start:
mov ax,@Data
mov ds,ax
mov ax,0
mov cx,8
again:
mov ax,cx
mov bl,2
div bl
cmp ah,0
jne ending
shl num,1
jnc ending
inc mone
ending:
loop again
mov ax,4c00h
int 21h
end start