.MODEL SMALL
.STACK 100h
.DATA

  x DB 30d
  y DB 20d
  z DB 50d
  
.CODE
start:

    mov ax,@DATA
    mov ds,ax
   
    mov al, x 
    cmp al,y ;compare al(x) with y
    jle next ; jump if al(x)<=y , because we only want to swap x and y when x>y
    
    XCHG al,y ; swap al and y ; y->al(x) al(x)->y
    mov x,al ; move the value of the original y which al contains, to x.
    
  ;repeats the same checking and swapping as before
   
    next: mov al,y
    cmp al,z
    
    jle secnext
    
    XCHG al,z
    mov z,al
    
   
 secnext: mov ax,4C00h
 int 21h
 
       
END start