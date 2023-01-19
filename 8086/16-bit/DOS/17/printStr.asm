.MODEL SMALL
.STACK 100h
.DATA

namje db "notmyname$"

.CODE
start:
mov ax,@Data
mov ds,ax

mov ax,offset namje
push ax
call printString 
mov ax,4c00h
int 21h
printString PROC
mov bp,sp
mov dx,[bp+2]
mov ah,9
int 21h
ret 2
printString ENDP
end start