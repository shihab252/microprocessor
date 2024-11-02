.model small
.stack 100h
.data
    msg db 'Input 1: $'
    msg1 db 10,13,'Even: $'
    msg2 db 10,13,'Odd: $'

.code 
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah,9
    lea dx,msg
    int 21h
    mov ah,1
    int 21h
    sub al,'0'
    mov bl,al
    
    mov cl,2
    div cl 
   ; add bl,'0'
    ;mov dl,bl
    
    cmp ah,0
    je even
    jmp odd
    
    
 even:
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,2
    add bl,48
    mov dl,bl
    int 21h
    
    jmp end_p
    
    
  odd:
    mov ah,9
    lea dx,msg2
    int 21h
    mov ah,2
    add bl,'0'
    mov dl,bl
    int 21h
     
    
     
    
    
    
    end_p:
    mov ah,4ch
    int 21h
   
main endp
end main
