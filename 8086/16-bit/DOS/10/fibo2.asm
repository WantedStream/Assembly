.MODEL SMALL
.STACK 100h
.DATA
 n db 10
 last db 0
 lasttwo db 1
 sum db 0
.CODE
start:
mov ax,@data
mov ds,ax
mov ax,0
mov cl,n

again:
mov al,last
mov bl,lasttwo
mov last,bl
add al,bl
add sum, bl

mov lasttwo,al

LOOP again












mov ax,4c00h
int 21h
end start