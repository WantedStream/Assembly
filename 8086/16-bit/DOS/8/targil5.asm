.MODEL small
.STACK 100h
.DATA
a DB 21d
b DB ?
c DB ?
.CODE
start:
mov ax,@Data
mov ds,ax

mov al,a
inc al
mov b,al
inc al
mov c,al

mov ax,4c00h
int 21h
end start