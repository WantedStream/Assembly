.MODEL SMALL
.STACK 100h
.DATA
 x DW 0101010110b
 condition1 DW 0000010010b
 condition2 DW 0000010010b
 condition3 DW 0
 condition4 DW 0
 .CODE
start:

mov ax,@Data
mov ds, ax
mov bl,0
mov ax,x
again: shl ax, 1
jnc next
inc BL
next:
cmp ax,0
jne again

mov cx,x
and cx,condition1
cmp cx,condition1
jne sec
mov condition1,1d

sec:
mov cx,x
shr cx,2 
jnc third
mov condition2,1d
jmp forth

third:
mov cx,x
shr cx,6 
jnc forth
mov condition2,1d


mov dx,0
mov cx,x
forth:

shr cx,1
jnc contin
add dx,1
contin:cmp cx,0
jne forth

cmp dx,3
jb fifth
mov condition3,1

fifth:
cmp dx,2
jb ending 
mov condition4,1

cmp dx,4
ja ending 
mov condition4,1

ending: mov ax,4c00h
int 21h

end start