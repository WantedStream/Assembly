.MODEL SMALL
.STACK 100h
.DATA
mone db ?
char1 db 'A'
char2 db 'D'
.CODE
start:
mov ax,@Data
mov ds,ax

mov bl,char1

sub bl,char2
jns skip
neg bl
skip:
inc bl
mov mone,bl

mov ax,4c00h
int 21h

end start