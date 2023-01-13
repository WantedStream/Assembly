.model small
.stack 100h
len EQU 6
.data
a dw 1,2,3,1,5,6
.code
start:
mov ax,@Data
mov ds,ax


lea bx,a
push bx
call checkSorted



mov ax,4c00h
int 21h

checkSorted PROC
mov bp,sp;bp=sp
mov bx,[bp+2];bx points to arr
mov cx,len; cx=a.Length
xor si,si ;si=0
mov ax,0
again:
mov dx,[bx+si]
cmp ax,dx
jg next
mov ax,dx
next:
inc si
inc si
loop again

finish: ret 2
checkSorted ENDP
end start