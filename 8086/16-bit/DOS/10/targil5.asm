.MODEL SMALL
.STACK 100h
.DATA
x DB 0d
num DB 24
I DB 1d
J DB ?
.CODE
start:
mov ax,@Data
mov ds, ax
mov ax,0
outer:
mov al,I
mov J,al
add J,1d
inner:
;{
inc x

inc J
mov al,J
cmp num,al
JGE inner
;}
inc I
mov al,I
cmp num,al
JGE outer
;}
mov ax,4c00h
int 21h
end start