.model small
.stack 100h
.data
    msg1 db 'Enter your character: $'   ; Prompt for input
    msg2 db 10,13, 'This is your Character: $' ; Display character message with newline

.code 
main proc
    ; Initialize the data segment
    mov ax, @data
    mov ds, ax

    ; Display msg1 (Prompt to enter a character)
    mov ah, 09h
    lea dx, msg1
    int 21h
           
    ; Get character input from the user
    mov ah, 01h    ; Function to read character without echo
    int 21h 
    mov bl, al     ; Store the input character in DL for later output  
    
    ;gap
   ; mov dl,10
    ;mov ah,2
    ;int 21h
    
    ;new line
    ;mov dl,13
    ;mov al,2
    ;int 21h
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
   
    ; Display msg2 (Message before displaying character)
    mov ah, 09h
    lea dx, msg2
    int 21h

    ; Display the character entered by the user
    mov dl,bl
    mov ah, 02h    ; Function to output a single character in DL
    int 21h
    
    ; Exit program
    mov ah, 4Ch
    int 21h
    
main endp
end main
