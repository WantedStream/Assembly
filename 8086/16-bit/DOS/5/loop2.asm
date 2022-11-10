.MODEl SMALL
.STACK 100h
.DATA
.CODE
start:
mov ax,@Data
mov ds,ax

mov cx,0
mov bx,0

doloop:
    inc bx
    loop doloop
    
mov ax,4c00h
int 21h
end start