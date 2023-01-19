.MODEL SMALL
.STACK 100h
.DATA
.CODE
start:
mov ax,@Data
mov ds,ax
call getChar

push ax
call printChar 
mov ax,4c00h
int 21h

printChar PROC
mov bp,sp
mov dx,[bp+2]
mov ah,2
int 21h
ret 1
printChar ENDP

getChar PROC
mov ah,1
int 21h
ret 
getChar ENDP
end start