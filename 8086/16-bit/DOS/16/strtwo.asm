.model small
.stack 100h
MAX EQU 10
.data
a db "abcdefghik"
b db MAX dup(?)
c db MAX*2 dup(?)
.code
start:
mov ax,@data
mov ds,ax
mov es,ax

mov si, OFFSET a
mov di, offset b
add si,MAX-1
add di,MAX-1
std
mov cx,MAX
rep movsb 


mov si,offset a
mov di,offset c
cld
mov cx,MAX
rep movsb
mov si,offset c
mov di,(offset c)+MAX
cld
mov cx,max
rep movsb


mov ax,4c00h
int 21h
end start