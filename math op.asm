
org 100h

start:
mov dx,offset abt
mov ah,09h         
int 21h

mov dx,offset msg_1
mov ah,09h         
int 21h 

start_:
mov ah,0ah          
mov dx,offset buff_1
int 21h

        


mov si,dx

cmp [si+2],1bh
je q_3


         
cmp [si+2],34h
je menu_4

cmp [si+2],33h
je menu_3

cmp [si+2],32h
je menu_2

cmp [si+2],31h
je menu_1

jmp start_

             
menu_1:
    call m1
    
    mov dx,offset again_i
    mov ah,09h         
    int 21h
    
    mov ah,0ah          
    mov dx,offset again_b
    int 21h
    
    mov si,dx     
    cmp [si+2],79h
    je start      
    cmp [si+2],59h
    je start      
    
    ret
    
menu_2:
    call m2
    
    mov dx,offset again_i
    mov ah,09h         
    int 21h
    
    mov ah,0ah          
    mov dx,offset again_b
    int 21h
    
    mov si,dx     
    cmp [si+2],79h
    je start      
    cmp [si+2],59h
    je start              
    
    
    ret

menu_3:
    call m3
    
    mov dx,offset again_i
    mov ah,09h         
    int 21h
    
    mov ah,0ah          
    mov dx,offset again_b
    int 21h    
    mov si,dx     
    cmp [si+2],79h
    je start      
    cmp [si+2],59h
    je start      
    
    q_3:
    ret

menu_4:
    call m4
    
    

    mov dx,offset again_i
    mov ah,09h         
    int 21h
    
    
    mov ah,0ah          
    mov dx,offset again_b
    int 21h
    
    
    mov si,dx
    cmp [si+2],79h
    je start
    cmp [si+2],59h
    je start 
    
    
    



    
    
    
    ret






ret

abt db  0ah,0dh,"This program consist of 4 menu item.(Fibonacci,Factorial,Square Root,Prime number operations.All of this code is written by M.Mustafa KOYUNCU 21986750)",0ah,0dh,"$"


msg_1 db 0ah,0dh,"Choose a menu item,press esc to exit",0ah,0dh,"1 for fibonacci operation",0ah,0dh,"2 for factorial operation",0ah,0dh,"3 for square operation",0ah,0dh,"4 for prime number operation",0ah,0dh,"$"

clear_ db 07h,"$"

buff_1  db "?"

msg_m_2 db 0ah,0dh," Enter a integer that you want to calculate the factorial of.",0ah,0dh,"$"
buff_m_2 db "?","$"
ip_m_2 dw "?","$"
print_b_m_2 db " "," ","$"


msg_m_3 db 0ah,0dh,"Enter a number in 3 digit format to see if it is square root of some integer or the nearest square number",0ah,0dh,"$"
buff_m_3 db "?","$"
space_ db 0ah,0dh,"$"
input_3 db "?$"

msg_m_4 db 0ah,0dh,"Enter a number in 3 digit format to see if it is prime or not",0dh,0ah,"$"

buff_m_4 dw "?"

msg_np db 0dh,0ah,"  Number you have entered is not a prime number",0dh,0ah,"$"

msg_p  db 0dh,0ah,"Number you have entered is a prime number","$"



again_i db 0dh,0ah,"do you want to do a another operation y/n?","$"
again_b db "?"






               
data_   db "?","$"
data_1  db "?","$"
data_2  db "?","$"
data_3  db "?","$"
data_4  db "?","$"
data_5  db "?","$"
data_6  db "?","$"
data_7  db "?","$"               
data_8  db "?","$"
data_9  db "?","$"


m1 proc
    ;mov cx,06666h
    
    
    
    
    ret
    m1 endp 

m2 proc
    mov dx,offset msg_m_2
    mov ah,09h         
    int 21h
    
    mov ah,0ah          
    mov dx,offset buff_m_2
    int 21h
    mov si,dx
    
    cmp [si+2],1bh
    je q_3        
    
           
    sub [si+2],30h
    mov cx,1
    mov bx,2
    mov ax,cx
    
    mov di,[si+2]
    mov ip_m_2,di
    and ip_m_2,0000000011111111b
    
    s_m2:
        mul bx
        inc bx
        inc cx
        
        cmp cx,ip_m_2
        jne s_m2
     
    
     
    
    mov si,offset print_b_m_2
    mov [si],ax
    
    mov bx,10d
    
    div bl
    mov data_,ah
    add data_,30h
    sub ah,ah
    
    div bl
    mov data_1,ah
    add data_1,30h
    sub ah,ah
    
    div bl
    mov data_2,ah
    add data_2,30h
    sub ah,ah
    
    div bl
    mov data_3,ah
    add data_3,30h
    sub ah,ah
    
    div bl
    mov data_4,ah
    add data_4,30h
    sub ah,ah
    
    div bl
    mov data_5,ah
    add data_5,30h
    sub ah,ah
    
                 
    div bl       
    mov data_6,ah 
    add data_6,30h
    sub ah,ah    
    
                 
    div bl       
    mov data_7,ah 
    add data_7,30h
    sub ah,ah    
    
                 
    div bl       
    mov data_8,ah 
    add data_8,30h
    sub ah,ah    
    
                 
    div bl       
    mov data_9,ah 
    add data_9,30h
    sub ah,ah    
    
    
    mov dx,offset space_ 
    mov ah,09h          
    int 21h
      
    mov dx,offset data_9
    mov ah,09h         
    int 21h            
    
    mov dx,offset data_8
    mov ah,09h         
    int 21h            
    
    mov dx,offset data_7
    mov ah,09h         
    int 21h            
    
    mov dx,offset data_6
    mov ah,09h         
    int 21h                         
    
    mov dx,offset data_5
    mov ah,09h           
    int 21h
    
    mov dx,offset data_4              
    mov ah,09h         
    int 21h            
    
    mov dx,offset data_3
    mov ah,09h         
    int 21h             
        
    mov dx,offset data_2
    mov ah,09h         
    int 21h            
    
    mov dx,offset data_1
    mov ah,09h         
    int 21h            
    
    mov dx,offset data_
    mov ah,09h         
    int 21h
    
    
    
    mov si,00000h            
 
    ret
    m2 endp


m3 proc
    
    mov dx,offset msg_m_3
    mov ah,09h           
    int 21h              
    
    
    mov ah,0ah            
    mov dx,offset buff_m_3
    int 21h
  
    mov si,dx
    mov cx,0
    cmp [si+2],1bh
    je q_3 
     
     
     
     
    a:
        mov ax,[si+2]
        sub [si+2],30h
        inc cx
        inc si
        cmp [si+2],0dh
    
    jne a
    sub bx,bx
    
    mov di,0d
    mov si,dx
    add si,1d
    add si,cx
    
    mov bx,1
    mov ax,[si]
    sub ah,ah
    mul bx
    mov di,ax
    dec si
    mov bx,10d
    mov ax,[si]
    sub ah,ah
    
    mul bx
    add di,ax
    dec si
    mov bx,100d
    mov ax,[si]
    sub ah,ah
    mul bx
    add di,ax
    
    mov ax,di
    mov bx,0
    mov cx,0
    mov cx,ax
    a1:
        mov ax,bx
        mul bx
        inc bx
        cmp bx,di
        je b1:
        cmp ax,di
        je c1:
        dec cx
        jnz a1
    
    c1:
        mov dx,ax
        dec bx
        
        mov ax,bx
        mov bx,10d
        
        
        
        div bl
        mov data_,ah
        add data_,30h
        sub ah,ah
        
        div bl
        mov data_1,ah
        add data_1,30h
        sub ah,ah
        
        div bl       
        mov data_2,ah
        add data_2,30h
        sub ah,ah    
       
        div bl       
        mov data_3,ah
        add data_3,30h
        sub ah,ah
        
        
        mov dx,offset space_ 
        mov ah,09h           
        int 21h              
        
        
        mov dx,offset data_3 
        mov ah,09h           
        int 21h              
                             
        mov dx,offset data_2 
        mov ah,09h           
        int 21h              
                             
        mov dx,offset data_1 
        mov ah,09h           
        int 21h              
                             
        mov dx,offset data_  
        mov ah,09h           
        int 21h                  
        
                
        ret
    
    b1:
        mov dx,42h
        
        ret
    
    
    
   
        
        
    
    
    
    
     
    m3 endp
    
    

    
    
m4 proc
    mov dx,offset msg_m_4 
    mov ah,09h            
    int 21h               
                          
    mov ah,0ah            
    mov dx,offset buff_m_4
    int 21h               
                          
    mov si,dx             
    mov cx,0
    
    cmp [si+2],1bh
    je q_3        
                  
    
    m4_a:              
        mov ax,[si+2]
        sub [si+2],30h
        inc cx      
        inc si      
        cmp [si+2],0dh
                    
    jne m4_a           
    sub bx,bx       
                    
    mov di,0d       
    mov si,dx       
    add si,1d       
    add si,cx       
                    
    mov bx,1        
    mov ax,[si]     
    sub ah,ah       
    mul bx          
    mov di,ax       
    dec si          
    mov bx,10d      
    mov ax,[si]     
    sub ah,ah       
                    
    mul bx          
    add di,ax       
    dec si          
    mov bx,100d     
    mov ax,[si]     
    sub ah,ah       
    mul bx          
    add di,ax
    cmp di,2d
    je p 
    cmp di,1d
    je n_p      
                    
    mov ax,di       
    mov bx,2d       
    div bx          
    mov cx,ax       
    mov si,0d       
    mov bx,2d       
    
    m3_a:                       
        mov ax,di               
                                
        div bl                  
        inc bx                  
        inc si                  
        cmp ah,0d               
        je n_p                  
        cmp si,cx               
        jne m3_a                
        jmp p                   
                                
                                
        n_p:                    
            ; not prime         
            mov dx,offset msg_np
            mov ah,09h          
            int 21h             
            ret                 
                                
                                
        p:                      
            ; prime             
            mov dx,offset msg_p 
            mov ah,09h          
            int 21h             
            ret                 
                                
    
    
    
    m4 endp
    end
    
    
    
    