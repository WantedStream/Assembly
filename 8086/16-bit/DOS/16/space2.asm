.MODEL small
.STACK 100h
toleft MACRO index,next
mov dl,next
mov [index],dl
inc index
ENDM
.data
a db 'aa   aaa bbb   fffs as a'

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
mov bx,24
sub bx,si
REPT 7
toleft si,[si+1]
ENDM
next:

jl again
mov ax,4c00h
int 21h
end start