.MODEL SMALL
.STACK 100h
.DATA
barzel DW -219d
oferet DW 328d
kesef  DW 962
biggest DW ?
.CODE
start:
mov ax,@Data
mov ds,ax

mov ax,barzel
mov biggest,ax

mov ax,oferet
cmp biggest,ax
jg next 
mov biggest,ax

next:
mov ax,kesef
cmp biggest,ax
jg next2
mov biggest,ax

next2: mov ax,4c00h
int 21h
end start