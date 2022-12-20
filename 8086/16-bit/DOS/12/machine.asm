.MODEL small
.stack 100h
.data
money dw 1000
price dw 680
fifty db ?
ten db ?
.code
start:
mov ax,@Data
mov ds,ax

mov ax,money
sub ax,price
mov cl,50
div cl
mov fifty,al
mov ten,ah
mov ax,0
mov al,ten
mov cl,10
div cl
mov ten,al
mov ax,4c00h
int 21h
end start