.MODEL small
.STACK 100h
toleft MACRO var,index
ENDM
.data
a db 'aa   aaa bbb   fffs as a'
b db 15 dup(?)
.code
start:
mov ax,@data
mov ds,ax
mov es,ax
mov ax," "

mov si,offset a
mov di,0
cld

again:
lodsb
cmp al," "
je next
mov b[di],al
inc di
next:
cmp si,offset b+15
jl again
mov ax,4c00h
int 21h
end start