.MODEL SMALL
.STACK 100h
.DATA
.CODE
start:
mov ax,@Data
mov ds,ax

cmp al,0
jna finish
mov bl,al
mov cl,2
div cl
cmp ah,0
jne finish
mov al,bl
mov al,cl
shl al,1
shl bl,2
add al,bl
shl cl,3
add al,cl
finish:
mov ax,4c00h
int 21h
end start