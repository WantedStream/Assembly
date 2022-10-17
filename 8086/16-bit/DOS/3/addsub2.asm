.MODEL SMALL
.STACK 100h
.DATA
    a DB 38 
    b DB 23
    C DB 36
.CODE
start:
    mov  ax, @DATA
    mov  ds, ax    
    mov ax, 0h
    
    mov al,b; al=17h
    add al,b;al=2Eh
    
    mov bl,c ;bl=24h
    add bl,12d ;bl=30h
    
    sub al,bl ;2Ehex-30hex=-2decimal
    mov al,a ;al=-2decimal
    
    mov ax,4C00h
    int 21h
    
END start