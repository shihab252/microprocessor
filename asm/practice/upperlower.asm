.model small
.stack 100h
.data 

    msg1 db 'Enter a Char: $ '
    msg2 db 10,13,'Uppercase$'
    msg3 db 10,13,'Lowercase$'
    msg4 db 10,13,'Invalid$' 
    
    


.code 
    main proc
        mov ax,@data
        mov ds,ax
        
        mov ah,9
        lea dx,msg1
        int 21h
        mov ah,1
        int 21h
        mov bl,al
        
        cmp al,'A'
        jl inv
        cmp al,'Z'
        jle upper 
 
        
        cmp al,'a'
        jl inv
        cmp al,'z'
        jle lower
        
        
    inv:
        mov ah,9
        lea dx,msg4
        int 21h
        mov ah,2
        int 21h

        jmp end_proc        
        
        
    upper:
        mov ah,9
        lea dx,msg2
        int 21h
        
        mov ah,2
        int 21h
        
        jmp end_proc
        
        
   lower:
        mov ah,9
        lea dx,msg3
        int 21h
        mov ah,2
        int 21h
               
        
        
        
  
                
        
        
        
        
        
        
        
        
        
        
        
            end_proc:
            mov ah,4ch
            int 21h
        
        
        main endp
    end main