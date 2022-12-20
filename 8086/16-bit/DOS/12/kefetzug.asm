.MODEL SMALL
.STACK 100h
.DATA

.CODE
start:
mov ax,@Data
mov ds,ax

mov bl,4ch
cmp bl,0
je isZero

again:sar bl,1
adc cl,0
jz again
jmp ending

isZero:mov bh,bl
ending:mov ax,4c00h
int 21h
end start