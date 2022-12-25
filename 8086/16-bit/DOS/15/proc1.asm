.MODEL SMALL
.STACK 100h
.DATA
.CODE
start:
mov ax,@Data
mov ds,ax

call terminateProg


terminateProg PROC
mov ax,4c00h
int 21h
terminateProg ENDP
end start
