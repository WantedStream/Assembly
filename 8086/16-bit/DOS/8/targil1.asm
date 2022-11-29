.MODEL SMALL
.STACK 100h
.DATA
.CODE
start:
mov ax,@Data
mov ds, ax

    mov ax, @data
    mov ds,ax 
    mov ax,0012h
    mov bx,1234h
    mov dx,9876h
    mov cx,0AF01h
    xchg ax,cx
    xchg bx,dx
    
    mov ah,4ch
    int 21h


end start