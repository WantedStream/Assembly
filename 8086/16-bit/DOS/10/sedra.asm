.MODEL SMALL
.STACK 100h
.DATA
n DB 4
xn DB ?
x1 DB 1
diff DB 2
.CODE
start:
mov ax,@Data
mov ds,ax

mov al,1
mov cl,x1

again:
mov bl,al
    add cl,diff
    jno next
    mov al,n
 next:inc al
 cmp al,n
jl again

mov xn,cl
mov n,bl
mov dl,xn
mov ah,2h
int 21h 
mov ax,4c00h
int 21h

end start
