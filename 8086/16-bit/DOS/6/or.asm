.MODEL SMALL
.STACK 100h
.DATA
    first DB 11001000b
    sec DB 00110111b
.CODE
start:
mov ax,@DATA
mov ds,ax
mov ax,0

mov bl, first
or bl, sec
cmp bl, 11111111b
JNE ending
mov ax,1d
ending: mov ax,4c00h
int 21h
end start