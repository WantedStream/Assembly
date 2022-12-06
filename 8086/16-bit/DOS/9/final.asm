.MODEL SMALL
.STACK 100h
.DATA
var DB -222d
perfect DB 0
result DB 0
.CODE

start:

mov ax,@Data
mov ds,ax
mov ax,0
;compare
cmp var,0
;if result is not zero, continue to next check, else update result
jnz notzero
mov result,1d; var=0

notzero:
;if result is less or equal to 0 (nonpositive) continue to next check, else, update result
jbe nextc
add result,1d;var>0

nextc:
mov al,var
mov cl,10d

next:
IDIV cl

cmp ah,0
JE iseven ;if the number is even, the first bit must be 0, which means not all the number's binary digits are equal to 1.
cmp ah,1
JE isodd



mov ah,0
jmp next

iseven:add result,1d
jmp ending



isodd:
cmp var,11111111b
jne ending
add result,1d

ending:
cmp result,4d
jne notperfect
mov perfect,1d

notperfect: 
mov ax,4c00h
int 21h


end start