.MODEL SMALL
.STACK 100h
.DATA 
cora dw 1110110101b
hamesh dw ?
ehad dw ?
stayjna dw -1
hameshplus dw ?
.CODE
start:
mov ax,@Data
mov ds,ax

mov ax,0000010000b
and ax,cora
cmp ax,0000010000b
jne seferone

mov cx,8
mov bx,00000001b
mov dx,0
seferone:
mov ax,cora
and ax,bx
cmp ax,bx
jne notequal
mov hamesh,1
inc dx
notequal: 
mov hamesh,0
loop seferone

cmp dx,2
jl next2
add stayjna,1
cmp dx,5
jg next2
add stayjna,1

next2:
cmp dx,5
jl finish
mov hamesh,1
finish:mov ax,4c00h
int 21h
end start