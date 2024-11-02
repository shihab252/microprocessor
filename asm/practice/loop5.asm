.model small
.stack 100h
.data
.code
main proc 
    mov dx, 0
    mov bx, 1
    
l1:
    add dx, bx
    add bx, 4
    cmp bx, 200
    jl l1

    mov ah, 4Ch
    int 21h
    
main endp
end main
