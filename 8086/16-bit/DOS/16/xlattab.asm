.MODEL small
.STACK 100h

.data
table db 'vwxyzabcdefghijklmnopqrstu'
str1 db 'randomword'
.code
start:
mov ax,@data
mov ds,ax
mov es,ax
lea si,str1
lea bx,table
again:lodsb 
xlat
mov str1[si],al
cmp si,offset str1+10
jl again
mov ax,4c00h
int 21h
end start