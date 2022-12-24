.MODEL SMALL
.STACK 100h
item STRUC
itemnum DW ?
quantity DB ?
supplier DW ?
item ENDS
.DATA
t1 item <1,10,75>
t2 item <5,12,85>
t3 item <1,44,75>
t4 item <234,18,99>
t5 item <300,9,88>
numprit db 0
arr db 4,5,6,3,0
.CODE
start:
mov ax,@Data
mov ds,ax

mov cx,5
lea bx,t1
mov si,0
again:
mov al,arr[si]
sub byte ptr [bx+2],al
add bx,5
inc si
loop again


ending:mov ax,4c00h
int 21h
end start