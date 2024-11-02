.model small
.stack 100h
.data
    msg1 db 'Enter: $'
    msg2 db 10,13, 'Output: $'

.code 
    main proc
        
        mov ax,@data
        mov ds,ax
        
        
        
        ;msg1
        mov ah,9
        lea dx,msg1
        int 21h
        
        ;input
        mov ah,1
        int 21h
        mov bl,al
        
        
        ;convert
        
        add bl,32
        
        
        ;msg2
        mov ah,9
        lea dx,msg2
        int 21h
        
        
        ;display
        mov dl,bl
        mov ah,2
        int 21h
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        main endp
    
     end main