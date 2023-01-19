.MODEL small
.STACK 100h
.data
a db 'saippuakivikauppias'
.code
start:
mov ax,@data
mov ds,ax
mov es,ax
mov ax,0

mov di,offset a
mov si,offset a+19

again:
dec si
mov al,[si]
scasb
jne notequal

cmp di,si
jna again

jmp ending


notequal:mov bx,0FFFFh
ending:mov ax,4c00h
int 21h
end start