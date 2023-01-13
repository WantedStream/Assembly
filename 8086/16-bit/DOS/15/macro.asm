.model small
.stack 100h
.data
asciicode='A'
e=5
db e
rept 10
 DB asciicode
 asciicode = asciicode +1
 ENDM
.code
start:
mov ax,@data
mov ds,ax

mov ax,4c00h
int 21h
end start