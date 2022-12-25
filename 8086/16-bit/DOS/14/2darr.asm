.MODEL SMALL
.STACK 100h
column EQU 4
row EQU 3

.DATA 
arr db column*row dup(?)
.CODE
start:
mov ax,@Data
mov ds,ax

mov al,1
lea bx,arr

rowloop:
xor si,si

colloop:
mov byte ptr arr[bx][si],al
inc si
add al,3
cmp si,column
jb colloop

add bx,column
cmp bx,column*row
jb rowloop

mov ax,4c00h
int 21h
end start                                                                                                                   