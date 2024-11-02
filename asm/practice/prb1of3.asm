.model small
.stack 100h
.data  
    msg db 'Enter: $'
    msg2 db 10,13,'Output: $'


.code
    main proc
        mov ax,@data
        mov ds,ax
        
          ;msg
          mov ah,9
          lea dx,msg
          int 21h
          
          ;input
          mov ah,1
          int 21h
          mov bl,al
          
        sub bl,17
        
        
        ;msg2
        mov ah,9
        lea dx,msg2
        int 21h 
        
        
        ;display
        mov ah,2
        mov dl,49
        int 21h
        mov ah,2
        mov dl,bl
        int 21h
        
        
        
        
        
        
          
          
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        main endp
    end main