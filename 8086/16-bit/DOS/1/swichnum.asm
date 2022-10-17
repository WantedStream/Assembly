.MODEL SMALL
.STACK 100h
.DATA
tmp dw ?
.CODE
start:
mov ax,@DATA
mov ds,ax

mov ax,5d
mov bx,2h
mov cx,4d

mov tmp,ax
mov ax,cx
mov cx,tmp

mov tmp,cx
mov cx,bx
mov bx,tmp


;note, the following code will add the ascii value of 0 to display the correct number instead of ascii value.
add ax,48
add bx,48
add cx,48

;write character to standard output standart output (DOS interrupt AH=02h)
mov dl,al
mov ah,02
int 21h

mov dl,bl
mov ah,02
int 21h


mov dl,cl
mov ah,02
int 21h

;exit the program ( DOS interrupt AH=4Ch)
mov ax, 4c00h
int 21h
END start