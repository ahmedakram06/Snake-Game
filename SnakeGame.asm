[org 0x100]

jmp start

str1 : db 'Score:'
Right: db 1
Left: db 0
Up: db 0
Down : db 0
seconds: db 0
score: db 0
ahmed:dd 0

;---------------------------------------------------------------------------------------------------------------
Clear_Screen:
push es
        push ax
        push di
        push cx

        mov ax,0xb800
        mov es,ax
        xor di,di
        mov ax,0x0720
        mov cx,2000

        cld
        rep stosw

         pop cx
         pop di
         pop ax
         pop es
         ret
;-----------------------------------------------------------------------------------------------------------------

First_Page_Welcome:

pusha

mov ax,0xb800
mov es,ax

mov di,684
mov ah,0x0f
mov al,'W'
mov [es:di],ax

add di,10
mov al,'E'
mov [es:di],ax

mov al,'L'
add di,10
mov [es:di],ax

add di,10
mov al,'C'
mov [es:di],ax

add di,10
mov al,'O'
mov [es:di],ax

add di,10
mov al,'M'
mov [es:di],ax

add di,10
mov al,'E'
mov [es:di],ax

mov di, 1770
mov ah, 0x0f
mov al,'P'
mov [es:di],ax

add di,6
mov al,'R'
mov [es:di],ax

add di,6
mov al,'E'
mov [es:di],ax

add di,6
mov al,'S'
mov [es:di],ax

add di,6
mov al,'S'
mov [es:di],ax

add di,12
mov al,'E'
mov [es:di],ax

add di,6
mov al,'N'
mov [es:di],ax

add di,6
mov al,'T'
mov [es:di],ax

add di,6
mov al,'E'
mov [es:di],ax

add di,6
mov al,'R'
mov [es:di],ax

add di,12
mov al,'T'
mov [es:di],ax

add di,6
mov al,'O'
mov [es:di],ax

add di,12
mov al,'C'
mov [es:di],ax

add di,6
mov al,'O'
mov [es:di],ax

add di,6
mov al,'N'
mov [es:di],ax

add di,6
mov al,'T'
mov [es:di],ax

add di,6
mov al,'I'
mov [es:di],ax

add di,6
mov al,'N'
mov [es:di],ax

add di,6
mov al,'U'
mov [es:di],ax

add di,6
mov al,'E'
mov [es:di],ax

popa
ret

;----------------------------------------------------------------------------------------------------------
Printing:

pusha

mov ax,0xb800
mov es,ax

;                             printing of green boxes

mov di,170
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,210
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,250
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,290
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,510
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,550
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,590
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,630
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,810
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,850
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,890
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,930
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,1150
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,1190
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,1230
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,1270
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,1450
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,1490
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,1530
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,1570
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,1790
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,1830
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,1870
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,1910
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,2090
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,2130
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,2170
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,2210
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,2430
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,2470
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,2510
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,2550
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,2730
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,2770
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,2810
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200


mov di,2850
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,3070
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,3110
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,3150
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,3190
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,3370
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200


mov di,3410
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,3450
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,3490
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,3710
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,3750
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,3790
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

mov di,3830
mov word[es:di],0x2200
add di,2
mov word[es:di],0x2200

;                         printing of red boxes

mov di,530
mov word[es:di],0x4400
add di,2
mov word[es:di],0x4400

mov di,610
mov word[es:di],0x4400
add di,2
mov word[es:di],0x4400

mov di,1130
mov word[es:di],0x4400
add di,2
mov word[es:di],0x4400

mov di,1210
mov word[es:di],0x4400
add di,2
mov word[es:di],0x4400

mov di,1810
mov word[es:di],0x4400
add di,2
mov word[es:di],0x4400

mov di,1890
mov word[es:di],0x4400
add di,2
mov word[es:di],0x4400

mov di,2410
mov word[es:di],0x4400
add di,2
mov word[es:di],0x4400

mov di,2490
mov word[es:di],0x4400
add di,2
mov word[es:di],0x4400

mov di,3090
mov word[es:di],0x4400
add di,2
mov word[es:di],0x4400

mov di,3170
mov word[es:di],0x4400
add di,2
mov word[es:di],0x4400

mov di,3690
mov word[es:di],0x4400
add di,2
mov word[es:di],0x4400

mov di,3770
mov word[es:di],0x4400
add di,2
mov word[es:di],0x4400



mov di,146
mov ah,0x07
mov si,0
lop15:
mov al,[str1+si]
mov [es:di],ax
add di,2
add si,1
cmp si,6
jne lop15

popa
ret

;------------------------------------------------------------------------------------------------------------
Movement_of_Asterisk:

mov ax,0xb800
mov es,ax
mov cx,0x0720 ;for space print
mov dx,0x072a ;for asterisk print

cmp di,170
jne n1
inc byte[cs:score]
add byte[cs:score],0x30; converting into ascii
mov ah,0x07
mov al,[cs:score]
mov [es:158],ax

n1:
cmp di,210
jne n2
sub byte[cs:score],0x30
inc byte[cs:score]
add byte[cs:score],0x30; converting into ascii
mov ah,0x07
mov al,[cs:score]
mov [es:158],ax

n2:
cmp di,250
jne n3
sub byte[cs:score],0x30
inc byte[cs:score]
add byte[cs:score],0x30; converting into ascii
mov ah,0x07
mov al,[cs:score]
mov [es:158],ax

n3:
cmp di,290
jne n4
sub byte[cs:score],0x30
inc byte[cs:score]
add byte[cs:score],0x30; converting into ascii
mov ah,0x07
mov al,[cs:score]
mov [es:158],ax

n4:
cmp di,510
jne n5
sub byte[cs:score],0x30
inc byte[cs:score]
add byte[cs:score],0x30; converting into ascii
mov ah,0x07
mov al,[cs:score]
mov [es:158],ax

n5:
cmp di,550
jne n6
sub byte[cs:score],0x30
inc byte[cs:score]
add byte[cs:score],0x30; converting into ascii
mov ah,0x07
mov al,[cs:score]
mov [es:158],ax

n6:
cmp di,590
jne n7
sub byte[cs:score],0x30
inc byte[cs:score]
add byte[cs:score],0x30; converting into ascii
mov ah,0x07
mov al,[cs:score]
mov [es:158],ax

n7:
cmp di,630
jne n8
sub byte[cs:score],0x30
inc byte[cs:score]
add byte[cs:score],0x30; converting into ascii
mov ah,0x07
mov al,[cs:score]
mov [es:158],ax

n8:
cmp di,810
jne n9
sub byte[cs:score],0x30
inc byte[cs:score]
add byte[cs:score],0x30; converting into ascii
mov ah,0x07
mov al,[cs:score]
mov [es:158],ax

n9:
cmp di,850
jne n10
sub byte[cs:score],0x30
inc byte[cs:score]
add byte[cs:score],0x30; converting into ascii
mov ah,0x07
mov al,[cs:score]
mov [es:158],ax

n10:
cmp di,890
jne n11
sub byte[cs:score],0x30
inc byte[cs:score]
add byte[cs:score],0x30; converting into ascii
mov ah,0x07
mov al,[cs:score]
mov [es:158],ax

n11:
cmp di,930
jne n12
sub byte[cs:score],0x30
inc byte[cs:score]
add byte[cs:score],0x30; converting into ascii
mov ah,0x07
mov al,[cs:score]
mov [es:158],ax

n12:
cmp di,1150
jne n13
sub byte[cs:score],0x30
inc byte[cs:score]
add byte[cs:score],0x30; converting into ascii
mov ah,0x07
mov al,[cs:score]
mov [es:158],ax

n13:
cmp di,1190
jne n14
sub byte[cs:score],0x30
inc byte[cs:score]
add byte[cs:score],0x30; converting into ascii
mov ah,0x07
mov al,[cs:score]
mov [es:158],ax

n14:
cmp di,1230
jne n15
sub byte[cs:score],0x30
inc byte[cs:score]
add byte[cs:score],0x30; converting into ascii
mov ah,0x07
mov al,[cs:score]
mov [es:158],ax

n15:
cmp di,1270
jne n16
sub byte[cs:score],0x30
inc byte[cs:score]
add byte[cs:score],0x30; converting into ascii
mov ah,0x07
mov al,[cs:score]
mov [es:158],ax

n16:
cmp di,1450
jne n17
sub byte[cs:score],0x30
inc byte[cs:score]
add byte[cs:score],0x30; converting into ascii
mov ah,0x07
mov al,[cs:score]
mov [es:158],ax

n17:
cmp di,1490
jne n18
sub byte[cs:score],0x30
inc byte[cs:score]
add byte[cs:score],0x30; converting into ascii
mov ah,0x07
mov al,[cs:score]
mov [es:158],ax

n18:
cmp di,1530
jne n19
sub byte[cs:score],0x30
inc byte[cs:score]
add byte[cs:score],0x30; converting into ascii
mov ah,0x07
mov al,[cs:score]
mov [es:158],ax

n19:
cmp di,1570
jne n20
sub byte[cs:score],0x30
inc byte[cs:score]
add byte[cs:score],0x30; converting into ascii
mov ah,0x07
mov al,[cs:score]
mov [es:158],ax

n20:
cmp di,1790
jne n21
sub byte[cs:score],0x30
inc byte[cs:score]
add byte[cs:score],0x30; converting into ascii
mov ah,0x07
mov al,[cs:score]
mov [es:158],ax

n21:
cmp di,1830
jne n22
sub byte[cs:score],0x30
inc byte[cs:score]
add byte[cs:score],0x30; converting into ascii
mov ah,0x07
mov al,[cs:score]
mov [es:158],ax

n22:
cmp di,1870
jne n23
sub byte[cs:score],0x30
inc byte[cs:score]
add byte[cs:score],0x30; converting into ascii
mov ah,0x07
mov al,[cs:score]
mov [es:158],ax

n23:
cmp di,1910
jne n24
sub byte[cs:score],0x30
inc byte[cs:score]
add byte[cs:score],0x30; converting into ascii
mov ah,0x07
mov al,[cs:score]
mov [es:158],ax

n24:
cmp di,2090
jne n25
sub byte[cs:score],0x30
inc byte[cs:score]
add byte[cs:score],0x30; converting into ascii
mov ah,0x07
mov al,[cs:score]
mov [es:158],ax

n25:
cmp di,2130
jne n26
sub byte[cs:score],0x30
inc byte[cs:score]
add byte[cs:score],0x30; converting into ascii
mov ah,0x07
mov al,[cs:score]
mov [es:158],ax

n26:
cmp byte [cs:Right],1
jne skip2
mov [es:di],cx
add di,2
mov [es:di],dx
skip2:
cmp byte[cs:Left],1
jne skip3
mov [es:di],cx
sub di,2
mov [es:di],dx
skip3:
cmp byte[cs:Down],1
jne skip4
mov [es:di],cx
add di,160
mov [es:di],dx
skip4:
cmp byte[cs:Up],1
jne skip5
mov [es:di],cx
sub di,160
mov [es:di],dx
skip5:
ret
;--------------------------------------------------------------------------------------------------------------------

kbisr:

pusha

mov ax,0xb800
mov es,ax
in al,0x60  ;what user has pressed on keyboard
cmp al,0x50 ; for down arrow key
jne arrow1
mov byte[cs:Down],1
mov byte[cs:Up],0
mov byte[cs:Left],0
mov byte[cs:Right],0

arrow1:
cmp al,0x4D ; for right arrow key
jne arrow2
mov byte[cs:Down],0
mov byte[cs:Up],0
mov byte[cs:Left],0
mov byte[cs:Right],1

arrow2:
cmp al,0x48 ; for up arrow key
jne arrow3
mov byte[cs:Down],0
mov byte[cs:Up],1
mov byte[cs:Left],0
mov byte[cs:Right],0

arrow3:
cmp al,0x4B ; for left arrow key
jne no_key_match
mov byte[cs:Down],0
mov byte[cs:Up],0
mov byte[cs:Left],1
mov byte[cs:Right],0

no_key_match:
mov al,0x20
out 0x20,al  ; any key pressed other than arrow keys

popa
iret

;------------------------------------------------------------------------------------------------------------------

Game_Terminate:

pusha

call Clear_Screen

mov ax,0xb800
mov es,ax

mov di,1176
mov ah,0x0f
mov al,'G'
mov [es:di],ax
add di,10
mov al,'A'
mov [es:di],ax
mov al,'M'
add di,10
mov [es:di],ax
add di,10
mov al,'E'
mov [es:di],ax

mov di, 1656
mov al,'O'
mov [es:di],ax
add di,10
mov al,'V'
mov [es:di],ax
add di,10
mov al,'E'
mov [es:di],ax
add di,10
mov al,'R'
mov [es:di],ax

popa
ret

;-------------------------------------------------------------------------------------------------------------------

Put_Timer:

push ax
inc byte[cs:seconds]
cmp byte [cs:seconds],4
jne skip1
mov byte[cs:seconds],0

call Movement_of_Asterisk

cmp di,530
jne t1
call Unhook_Timer
call Game_Terminate

t1:
cmp di,610
jne t2
call Unhook_Timer
call Game_Terminate

t2:
cmp di,1130
jne t3
call Unhook_Timer
call Game_Terminate

t3:
cmp di,1210
jne t4
call Unhook_Timer
call Game_Terminate

t4:
cmp di,1810
jne t5
call Unhook_Timer
call Game_Terminate

t5:
cmp di,1890
jne t6
call Unhook_Timer
call Game_Terminate

;t6:
;cmp di,2490
;jne skip1
;call Unhook_Timer
;call Game_Terminate

;t1:
;cmp di,610
;jne t2
;call Unhook_Timer
;call Game_Terminate

;t2:
;cmp di,1130
;jne t3
;call Unhook_Timer
;call Game_Terminate

;t3:
;cmp di,1210
;jne t4
;call Unhook_Timer
;call Game_Terminate

;t4:
;cmp di,1810
;jne t5
;call Unhook_Timer
;call Game_Terminate

;t5:
;cmp di,1890
;jne t6
;call Unhook_Timer
;call Game_Terminate

t6:
cmp di,2490
jne skip1
call Unhook_Timer
call Game_Terminate

skip1:
mov al,0x20
out 0x20,al ;bahir anay ke liye
pop ax
iret

;-----------------------------------------------------------------------------------------------------------------

Unhook_Timer:

pusha

xor ax,ax
mov es,ax
mov ax,[ahmed]    ; unhooking timer interupt
mov bx,[ahmed+2]
cli
mov word[es:8*4],ax
mov word[es:8*4+2],bx
sti

popa
ret

;----------------------------------------------------------------------------------------------------------------
start:

call Clear_Screen
call First_Page_Welcome

enter_key:
mov ah, 0 ; to get keystroke
int 0x16 ; call BIOS keyboard service
cmp al,13 
jne enter_key

call Clear_Screen
call Printing
mov ax,0
mov es,ax
cli
mov word[es:9*4],kbisr
mov [es:9*4+2],cs
sti
cli
mov word[es:8*4],Put_Timer ;offset
mov [es:8*4+2],cs
sti
mov dx,start
add dx,15
mov cl,4
shr dx,cl

end:
mov ax,0x3100
int 21h