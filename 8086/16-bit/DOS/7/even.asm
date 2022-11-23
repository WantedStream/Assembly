.MODEL SMALL
.STACK 100h
.DATA
.CODE
start:

mov ax,@Data
mov ds, ax

shr ax, 1
jnc ending
mov ax,2

ending: mov ax,4c00h
int 21h

end start