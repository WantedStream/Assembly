.MODEL SMALL
.STACK 100h
student STRUC
id DW ?
class DB ?
csgrade DB ?
student ENDS
.DATA
a db 0
s1 student <1,2,75>
s2 student <5,2,85>
s3 student <1,5,75>
s4 student <234,2,99>
s5 student <300,22,88>
s6 student <154,2,68>
s7 student <12,2,100>
s8 student <1,22,99>
s9 student <1,2,61>
s10 student <1,2,66>
.CODE
start:
mov ax,@Data
mov ds,ax

mov cx,10
lea bx,s1

again:
cmp byte ptr [bx+2+1],60
jna ending
add bx,4
loop again

mov a,1

ending:mov ax,4c00h
int 21h
end start