.MODEL SMALL
.STACK 100h
.DATA
tmp db ?
.CODE
start:
mov ax,@Data
mov ds,ax
mov ax,0
mov bx,0
mov cx,4
mov dl,10111101b

again:
shl dl,1
adc ax,0
mov tmp,10b
mul tmp
add bx,ax
loop again

cmp bl,dh
mov dh,0
jne finish
mov dh,1
 finish:mov ax,4c00h
int 21h
end start