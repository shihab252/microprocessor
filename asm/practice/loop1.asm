.model small
.stack 100h
.data

.code 
    main proc
        
        mov ax,0
        mov bx,1
        
        start:
        add ax,bx
        add bx,3
        cmp bx,148
        jle start
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        main endp
    end main