.MODEL SMALL
.STACK 100h
.DATA
n DB 7
res DB ?
a DB 0d
.CODE
start:
mov ax,@DATA
mov ds,ax
mov ax,1d
doLoop:

mul n ; ax=ax*n
JNC next
mov a,1d
next:dec n
cmp n,0d 
JA doLoop

mov ax,4c00h
int 21h
end start 