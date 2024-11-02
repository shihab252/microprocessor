.model small
.stack 100h
.data 
    msg db 'Hello world! $'

.code
 
 
      main proc
        mov ax,@data
        mov ds,ax
        
        mov cx,10 
        print_loop:
            mov ah,9
            lea dx,msg
            int 21h
            
            
            
            mov ah,2
            mov dl,10
            int 21h
            mov dl,13
            int 21h
                    
                    
            dec cx
            
            
            
            jnz print_loop 
        
        
        
        
        
        
        
        
        
        main endp
      
      
      
 end main