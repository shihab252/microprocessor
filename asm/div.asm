.model small
.stack 100h
.data
    msg1 db 'Input 1: $'
    msg2 db 10,13, 'Input 2: $'  
    q db 10,13, 'Q: $'
    r db 10,13, 'R: $'
    

.code
    main proc
        mov ax,@data
        mov ds,ax
         
         ;msg1
        mov ah,9
        lea dx,msg1
        int 21h 
        ;input1
        mov ah,1
        int 21h
        sub al,'0'
        mov bl,al
        
         ;msg2
        mov ah,9
        lea dx,msg2
        int 21h 
        ;input1
        mov ah,1
        int 21h
        sub al,'0'
        mov cl,al   
        
        
        ;divide
        
        mov ax,0
        
        mov al,bl
        div cl
        
        mov bl,al
        mov bh,ah
        
        ;display
        ;q
        mov ah,9
        lea dx,q
        int 21h
        add bl,'0'
        mov dl,bl 
        
        mov ah,2
        int 21h
        
        
        ;r
        mov ah,9
        lea dx,r
        int 21h 
        add bh,'0'
        mov dl,bh
        mov ah,2
        int 21h
        
        
        
        
        
      
       
        
        
        
        
        
      
        
        
        
        
        
        
        
        
        main endp
    end main