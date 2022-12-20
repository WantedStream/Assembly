.MODEL SMALL
.STACK 100h
.DATA
checka db 0
checkb db 0
car1 db 0EFh
car2 db 5fh
.CODE
start:
mov ax,@Data
mov ds,ax
mov ax,0
mov bx,0
mov cx,8

again:
shr car1,1
adc ax,0
shr car2,1
adc bx,0
loop again

cmp ax,1
jl next
mov checka,1
next:
cmp bx,1
jl next2
mov checkb,1
next2:mov ax,4c00h
int 21h
end start