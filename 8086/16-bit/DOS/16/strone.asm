.model small
.stack 100h
len EQU 100
.data
str1 DB 10 DUP(' ')
str2 DB LEN Dup(?)
str3 DB "Hello!"
str4 DB "World!"
.code
start:
mov ax,@data
mov ds,ax
mov es,ax

lea si, str3
lea di, str4
cld 


mov ax,4c00h
int 21h
end start