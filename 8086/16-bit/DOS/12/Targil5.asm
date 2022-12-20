.MODEL SMALL
.STACK 100h
.DATA
checkal db 0
checkah db 0
checkbl db 0
checkbh db 0
check db -10
.CODE
start:

mov ax,@Data
mov ds,ax

mov cx,2
mov ax,11011111b
mov bx,10111110b
again:

shl al,1
jc next
add checkal, 1
next:
shl ah,1
jc next2
add checkah, 1
next2:
shl bl,1
jc next3
add checkbl, 1
next3:
shl bl,1
jc next4
add checkbl, 1
next4:

mov al,checkal
add al,checkah
add al, checkbl
add al,checkbh
cmp al,4 
jl finish
mov check,10

finish:mov ax,4c00h
int 21h

end start
