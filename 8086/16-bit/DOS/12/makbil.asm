.MODEL small
.stack 100h
.data
number db 100011b
number2 db 010001b
.code
start:
mov ax,@Data
mov ds,ax

mov ax,0
again:
mov al,number
mov bl,number2
xor number,bl
and al,bl
cmp al,0
je finish
shl al,1
mov number2,al
jmp again
finish: 
mov ax,4c00h
int 21h
end start
