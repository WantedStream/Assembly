.MODEL SMALL
.STACK 100h
.DATA
.CODE
start:
mov ax,@Data
mov ds,ax

call terminateProg

int 21h
terminateProg PROC
mov ax,4c00h

terminateProg ENDP


end start
