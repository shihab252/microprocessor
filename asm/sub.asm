.model small
.stack 100h
.data
    msg1 db 'Input 1: $'
    msg2 db 10,13, 'Input 2: $'
    msg3 db 10,13, 'Output is: $'

        
.code 
    main proc
        mov ax,@data
        mov ds,ax
        
        
     ;ms1
     mov ah,9
     lea dx,msg1
     int 21h
     
     ;take input
     mov ah,1
     int 21h
     sub al,'0'
     mov bl,al
     
     ;msg2
     mov ah,9
     lea dx,msg2
     int 21h
     
     ;input
     mov ah,1
     int 21h 
     sub al,'0'
     mov cl,al 
     
     
     ;msg3
     mov ah,9
     lea dx,msg3
     int 21h
     
     ;sub
     sub bl,cl
     add bl,'0'
     mov dl,bl
     
     
     ;display
     
     mov ah,2
     int 21h
     
     
     main endp
    
  end main
     
     
     
     