.MODEL SMALL
.STACK 100h
.DATA
 str1 dw 1234h
.CODE
start:

mov ax,@Data
mov ds,ax

lea bx,str1
mov ah,[bx]
mov al,[bx+1]
push ax

mov str1,0

pop [bx]
mov ax,4c00h
int 21h
end start