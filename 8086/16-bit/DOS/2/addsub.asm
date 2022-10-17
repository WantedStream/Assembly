;a <-- a+b-c
;b <-- c-b+20
;c <-- 2c
.MODEL SMALL
.STACK 100h
.DATA
    a DB 38 
    b DB 23
    C DB 36
.CODE

start:

 mov ax,@DATA
 mov ds,ax
 mov ax, 0000h
;a=a+b
mov al,a ;al=a
add al,b ;al=a+b
sub al,c ;al=al-c
mov a,al ;a=al a=25.
;b=c-b+20
mov al, c ;al=c
sub al,b  ;al=c-b
add al,20d ;al=al+20
mov b,al
;c=2c
mov al, c;al=c
add c, al;c=c+al


   
mov ax,4C00h
int 21h
END start
