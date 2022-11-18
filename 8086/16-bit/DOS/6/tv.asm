.MODEl SMALL
.STACK 100h
.DATA
boy1 DB 10110101b
boy2 DB 01011101b
girl1 DB 10000110b
girl2 DB 11110101b
res DB 0
.CODE
start:
 mov ax,@DATA
 mov ds,ax
 
 mov al,boy1
 and al,boy2
 
 mov bl,girl1
 and bl,girl2
 
 xor al,bl
 jnz ending
 mov res,1d
 ending:mov ax,4c00h
 int 21h
end start
