.MODEL SMALL
.STACK 100h
.DATA
 Temp_Out DB 55d
 Temp_In DB 254d
.CODE

start:
    mov ax,@DATA
    mov ds,ax
    mov bl,Temp_Out
    sub bl,Temp_In
    JNC conti
    neg bl
   conti: 
     cmp bl, 50d
     JA cold     
     mov dl, 00h
     mov ah,02h
     int 21h 
     jmp fin
cold:
     mov dl, 0FFh
     mov ah,02h
     int 21h 
     
     fin: mov ax,4C00h
    int 21h
END start 