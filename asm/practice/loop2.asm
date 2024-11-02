.model small
.stack 100h
.data 


.code 
    main proc

            mov ax,@data
            mov ds,ax
            ;upper case
            mov cx,26
            mov dx,65
            
            l1:
                mov ah,2
                int 21h
                inc dx
                cmp dx,90
                
               loop l1 
               
                      
                      
                      
            ;lower case
           
            mov dl,13
            mov ah,2
            int 21h
            mov dl,10
            mov ah,2
            int 21h
            mov cx,26 
             mov dx,97
            
            l2: 
            
                mov ah,2
                int 21h
                inc dx
                loop l2
                       
                       
           
           ;digit 0-9
           mov dl,13
            mov ah,2
            int 21h
            mov dl,10
            mov ah,2
            int 21h
            mov cx,10 
             mov dx,48
             
             l3:
             mov ah,2
             
             int 21h
             inc dx
             loop l3
            
           
               
               
               
               
               mov ah,4ch
               int 21h        
        
        
        
        
        
        
        
        
        
        
        main endp
    end main
