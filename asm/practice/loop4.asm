.model small
.stack 100h
.data 

.code
main proc
    
    
    
    mov ah,1
    int 21h 
    mov bl,al
    mov dl,13
    mov ah,2
    int 21h
    mov dl,10
    mov ah,2
    int 21h
    
    
    mov cx,80
    mov ax,0
    
    
    
    l1:
    mov dl,bl
    mov ah,2
    int 21h
    loop l1
    
    
    
    
    
    
    main endp
end main
