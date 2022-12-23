.MODEL small
.stack 100h
.data
b DW 129h
x dw 112h
p dw b
q dw ?
.code
start:
mov ax,@Data
mov ds,ax

mov si,4+3

mov ax,4c00h
int 21h
end start