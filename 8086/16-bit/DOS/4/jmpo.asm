.MODEL SMALL
.STACK 100h
.DATA
    
.CODE
start:
    
    mov ax,@DATA
    mov ds,ax
    
    mov ax,67
    cmp ax,100    
    JAE endprog 
    add ax,ax
    
   endprog: mov ax,4C00h
    int 21h
    
END start