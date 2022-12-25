.MODEL SMALL
.STACK 100h
column EQU 4
row EQU 6

.DATA 
arr db 1,3,4,5
db 5,4,1,7
db 5,1,9,12
db 5,55,6,75
db 0,3,114,9
db 1,23,4,15
fin db row DUP(?)
.CODE
start:
mov ax,@Data
mov ds,ax


lea bx,arr
xor di,di
rowloop:
xor si,si

mov cl,0

colloop:
mov al,byte ptr arr[bx][si]
inc si
cmp cl,al
ja next
mov cl,al
next:cmp si,column
jb colloop


mov fin[di],cl
inc di
add bx,column
cmp bx,column*row
jb rowloop

mov ax,4c00h
int 21h
end start