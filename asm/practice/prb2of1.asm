.model small
.stack 100h
.data
    a db 'Input 1: $'
    b db 10,13,'Input 2: $'
    c db 10,13, 'Input 3: $'
    d db 10,,13,'Smallest number is: $'


.code

    main proc
        mov ax,@data
        mov ds,ax
        
        mov ah,9
        lea dx,a
        int 21h
        mov ah,1
        int 21h
        sub al,'0'
        mov bl,al
        
        
        ;input2  
         mov ah,9
        lea dx,b
        int 21h
        mov ah,1
        int 21h
        sub al,'0'
        mov bh,al
        
        ;compare1
        
        cmp bl,bh
        jl cmp2
        mov bl,bh
        
        cmp2:
        ;input3
        mov ah,9
        lea dx,c
        int 21h
        mov ah,1
        int 21h
        sub al,'0'
        mov bh,al
         
      cmp bl,bh
      jl print
      mov bl,bh
      ;jmp print 
      
      print:
      mov ah,9
      lea dx,d
      int 21h
      
      mov ah,2
      add bl,'0'
      mov dl,bl
      int 21h
      
    
        
        
        
        
        
        
        
        
        
        
        
        
        
        main endp
    end main