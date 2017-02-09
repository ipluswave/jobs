.model small
.stack 100h
.data
msg1 db 10,13,'enter the file name$'
msg2 db 10,13,'file is created$'
fn db 50 dup(?)
.code
print macro arg
mov dx,offset arg
mov ah,09h
int 21h
endm
.startup
print msg1
mov di,offset fn
read:
mov ah,01h
int 21h
cmp al,13
je crte
mov [di],al
inc di
jmp read
crte:
mov cx,0
mov dx,offset fn
mov ah,3ch
int 21h
print msg2
.exit
end