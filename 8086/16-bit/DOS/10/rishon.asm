.MODEL SMALL
.STACK 100h
.DATA
var dw 17
divby dw 2
times dw 0
tmp dw 0
.CODE

start:

mov ax,@Data
mov ds,ax
mov ax,0


again:
mov ax,var
mov times,0
mov tmp,0

subb:
add times,1
sub ax,divby
cmp ax,1
jg subb


mov ax,divby

mult:
add tmp,ax
sub times,1
cmp times,0
jg mult

mov ax,tmp
cmp ax,var
je ending


add divby,1
mov dx,divby
cmp dx,var
jl again

mov bl,1
ending:mov ax,4c00h
int 21h


end start