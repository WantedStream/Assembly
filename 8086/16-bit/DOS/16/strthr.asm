.model small
print MACRO v
mov dl,v 
mov ah,2
int 21h
ENDM
.stack 100h
.data
a db "abcdefghik0"
b db "sbdaefg0"
c db 0
differences db 0
lengthA db 0 
lengthB db 0
.code
start:
mov ax,@data
mov ds,ax
mov es,ax

mov si, OFFSET a
mov di, offset b
mov ax,0;amount of differences
mov bx,0;length of a
mov dx,0;length of b

again:

mov c,0
cmp byte ptr [si],'0'
je firstEnd
inc lengthA
inc c
firstEnd:
cmp byte ptr [di],'0'
je secEnd
inc lengthB
inc c
secEnd:



cmp c,2
jne notagain
cmpsb
je equal
inc differences
equal:jmp again
notagain:

mov al,lengthA
mov bl,lengthB
mov cl,differences
;print a+'0'
;print b+'0'
;print differences+'0'
mov ax,4c00h
int 21h
end start