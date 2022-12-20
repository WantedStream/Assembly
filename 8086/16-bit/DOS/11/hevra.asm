.MODEL SMALL
.STACK 100h
.DATA 
dira db 1111101b
all db 11111111b
metpasher db 1010011b
count db 0
.CODE
start:
mov ax,@Data
mov ds,ax

mov al,dira
and al,all
cmp al,all
jne notequal
mov all,1
jmp equal
notequal:
mov al,dira
and al,all
cmp al,all
jne notequal2
mov all,1
jmp equal
notequal2:


mov cx,8
mov bl,al
mov al,00000001b
again:
and al,bl
jz loopin
inc count
loopin: loop again
equal:mov ax,4c00h
int 21h
end start