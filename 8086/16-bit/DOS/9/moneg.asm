.MODEL SMALL
.STACK 100h
.DATA
 MoneNeg db 0d
 n1 db 1d
 N2 db -12d
 N3 db -52d
.CODE
start:
mov ax,@Data
mov ds,ax

cmp n1,0h
JGE next
add MoneNeg,1d

next:
cmp n2,0h
JGE next2
add MoneNeg,1d

next2:
cmp n3,0h
JGE ending
add MoneNeg,1d

ending:mov ax, 4c00h
int 21h
end start