.MODEL SMALL
.STACK 100h
LEN EQU 10

.DATA
inpBuffer DB LEN,0,(LEN+1) DUP(?)
.CODE
start:
mov ax,@Data
mov ds,ax

mov bx,offset inpBuffer
push bx
call getString
pop bx

lea bx,inpBuffer+2
;mov byte ptr [bx+LEN+2],0Ah
push bx
call printString
pop bx
mov cx,LEN
cld
mov si,bx
xor dx,dx
again:
lodsb
sub al,30h
mov [si],al
add dl,al
loop again 
push bx
call printString
mov ax,4c00h
int 21h
getString PROC
mov bp,sp
mov dx,[bp+2]
mov ah,0Ah
int 21h
ret 2
getString ENDP

printString PROC
mov bp,sp
mov dx,[bp+2]
mov ah,0Ah
int 21h
ret 2
printString ENDP

end start