.MODEL SMALL
.STACK 100h
.DATA
.CODE
start:
mov ax,@Data
mov ds,ax

mov ch,4
add ch,ch ;ch*2
add ch,ch ;ch*3
add ch,ch ;ch*4
mov cl,ch
mov ax,4c00h
int 21h
end start