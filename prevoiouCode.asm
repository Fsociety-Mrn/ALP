.MODEL SMALL
.STACK 100h
.DATA

;DECLARATION OF VARIABLES!

	disp db 0dh,0ah,09h,09h,09h,09h,"    MAIN MENU$"
	awts db 0dh,0ah,0ah,0ah,09h,09h,09h,"Thank You for using the system"
	oust db 0dh,0ah,0ah,0ah,09h,09h,09h,"     Developed by Group 2$"
;MENU ////////////////////////////////////////

Calc db 0dh,0ah,0ah,09h,09h,09h,09h,"[1] Calculator$"
    Con db 0dh,0ah,09h,09h,09h,09h, "[2] Conversion$"
    Exit db 0dh,0ah,09h,09h,09h,09h,"[3] Exit$"
	pick db 0dh,0ah,0ah,09h,09h,09h,09h,"Pick your choice: $"

;Calculator:Sub-menu ///////////////////////

       displaysub db 0dh,0ah,09h,09h,09h,09h,"Calculator: Sub-menu$"

   Adds db 0dh,0ah,0ah,09h,09h,09h,09h,"[1] Addition$"
      Subs db 0dh,0ah,09h,09h,09h,09h, "[2] Subtraction$"
     Mults db 0dh,0ah,09h,09h,09h,09h, "[3] Multiplication$"
      Divs db 0dh,0ah,09h,09h,09h,09h, "[4] Division$"
       back db 0dh,0ah,09h,09h,09h,09h,"[5] Back to Main Menu$"
	  backsub db 0dh,0ah,09h,09h,09h,09h,"[5] Back to Sub Menu$"

    Base03 db 0dh,0ah,0ah,09h,09h,09h,09h,"[1] Base 03$"
       Base05 db 0dh,0ah,09h,09h,09h,09h, "[2] Base 05$"



;CALCULATOR: ADDITION///////////////////////////////////////////////
   displayAdd db 0dh,0ah,09h,09h,09h,09h,"Calculator: Addition$"



	   ;Process
;BASE 03 ADDITION!!!!!!!!!!!
	     base03Add db 0dh,0ah,09h,09h,09h,09h,"Base 03 Addition$"

		 addend03 db 0dh,0ah,0ah,09h,09h,09h,09h,"Addend[00-22]: $"
            augend03 db 0dh,0ah,09h,09h,09h,09h, "Augend[00-22]: $"
;BASE 05 ADDITION!!!!!!!!!!!
		 base05Add db 0dh,0ah,09h,09h,09h,09h,"Base 05 Addition$"
		 addend05 db 0dh,0ah,0ah,09h,09h,09h,09h,"Addend[00-44]: $"
            augend05 db 0dh,0ah,09h,09h,09h,09h, "Augend[00-44]: $"

			     sum db 0dh,0ah,09h,09h,09h,09h, "sum is:        $"
ADDagain db 0dh,0ah,0ah,09h,09h,09h,09h,"Add Again?[Y/N]: $"



;CALCULATOR: SUBTRACTION///////////////////////////////////////////////
   displaySubb db 0dh,0ah,09h,09h,09h,09h,"Calculator: Subtraction$"


;Proceyss
;BASE 03 SUBTRACTION!!!!!!!!!!!
	     base03Sub db 0dh,0ah,09h,09h,09h,09h,"Base 03 Subtraction$"

		 Minuend03 db 0dh,0ah,0ah,09h,09h,09h,09h,"Minuend[00-22]   : $"
         Subtrahend03 db 0dh,0ah,09h,09h,09h,09h, "Subtrahend[00-22]: $"

;BASE 05 SUBTRACTION!!!!!!!!!!!
		 base05Sub db 0dh,0ah,09h,09h,09h,09h,"Base 05 Subtraction$"
		 Minuend05 db 0dh,0ah,0ah,09h,09h,09h,09h,"Minuend[00-44]   : $"
         Subtrahend05 db 0dh,0ah,09h,09h,09h,09h, "Subtrahend[00-44]: $"

			     diff db 0dh,0ah,09h,09h,09h,09h, "Diffrence is:      $"

       SUBagain db 0dh,0ah,0ah,09h,09h,09h,09h,"Subtract Again?[Y/N]: $"
	   notice db 0dh,0ah,09h,"     Notice: Our system cannot subtract subtrahend to minuend"
	   SMELLYCAT db 0dh,0ah,09h,09h,"    because subtrahend is greater than minuend.$"

;CALCULATOR: MULTIPLICATION///////////////////////////////////////////////

          displayMulti db 0dh,0ah,09h,09h,09h,09h,"Calculator: Multplication$"

;Process
;BASE 03 MULTIPLICATION!!!!!!!!!!!
	     base03Multi db 0dh,0ah,09h,09h,09h,09h,"Base 03 Multiplication$"

	     Multiplicand03 db 0dh,0ah,0ah,09h,09h,09h,09h,"Multiplicand[00-22]: $"
               Multiplier03 db 0dh,0ah,09h,09h,09h,09h,"Multiplier[00-22]  : $"

;BASE 05 MULTIPLICATION!!!!!!!!!!!
		 base05Multi db 0dh,0ah,09h,09h,09h,09h,"Base 05 Multiplication$"

		 Multiplicand05 db 0dh,0ah,0ah,09h,09h,09h,09h,"Multiplicand[00-44]: $"
               Multiplier05 db 0dh,0ah,09h,09h,09h,09h,"Multiplier[00-44]  : $"

			           Prod db 0dh,0ah,09h,09h,09h,09h, "Product is:        $"
				 MULagain db 0dh,0ah,0ah,09h,09h,09h,09h,"Multiply Again?[Y/N]: $"


;CALCULATOR: DIVISION///////////////////////////////////////////////

          displayDivi db 0dh,0ah,09h,09h,09h,09h,"Calculator: Division$"

;Process
;BASE 03 DIVISION!!!!!!!!!!!
	     base03Divi db 0dh,0ah,09h,09h,09h,09h,"Base 03 Division$"

	     Dividend03 db 0dh,0ah,0ah,09h,09h,09h,09h,"Dividend[00-22]: $"
             Divisior03 db 0dh,0ah,09h,09h,09h,09h,"Divisior[00-22]: $"

;BASE 05 DIVISION!!!!!!!!!!!
		 base05Divi db 0dh,0ah,09h,09h,09h,09h,"Base 05 Division$"

		 Dividend05 db 0dh,0ah,0ah,09h,09h,09h,09h,"Dividend[00-44]: $"
             Divisior05 db 0dh,0ah,09h,09h,09h,09h,"Divisior[00-44]: $"

			       Quo db 0dh,0ah,09h,09h,09h,09h, "Quotient is : $"
				 Remai db 0dh,0ah,09h,09h,09h,09h, "Remainder is: $"

		   DIVagain db 0dh,0ah,0ah,09h,09h,09h,09h,"Divide Again?[Y/N]: $"

		
DIVinotice db 0dh,0ah,0ah,09h,09h,09h,09h,"Notice: Cannot divide by Zero$"



;Conversion :Sub-menu ///////////////////////

displayConvesub db 0dh,0ah,09h,09h,09h,09h,"Conversion: Sub-menu"
      base3to5 db 0dh,0ah,0ah,09h,09h,09h,09h,"[1] Base 3 to Base 5"
          base4to5 db 0dh,0ah,09h,09h,09h,09h,"[2] Base 4 to Base 5"
          base5to4 db 0dh,0ah,09h,09h,09h,09h,"[3] Base 5 to Base 4$"

;//////////////////////////////////////////////////////////////////

;Base 03 to Base 05

	     displayBase35 db 0dh,0ah,09h,09h,09h,"    Conversion: Base 3 to Base 5 $"
		     ConvBase3 db 0dh,0ah,0ah,09h,09h,09h,09h,"Base 3 [00-22]: $"
             ConvBase5 db 0dh,0ah,09h,09h,09h,09h,"Base 5 Equivalent: $"

;Base 04 to Base 05

	     displayBase45 db 0dh,0ah,09h,09h,09h,"    Conversion: Base 4 to Base 5 $"
		     ConvBase4 db 0dh,0ah,0ah,09h,09h,09h,09h,"Base 4 [00-33]: $"
             ConvBase05 db 0dh,0ah,09h,09h,09h,09h,"Base 5 Equivalent: $"

		    Base35again db 0dh,0ah,0ah,09h,09h,09h,09h,"Convert Again?[Y/N]: $"

;Base 05 to Base 04

	     displayBase54 db 0dh,0ah,09h,09h,09h,"    Conversion: Base 5 to Base 4 $"

		     ConvBase055 db 0dh,0ah,0ah,09h,09h,09h,09h,"Base 5 [00-44]: $"
             ConvBase04 db 0dh,0ah,09h,09h,09h,09h,"Base 4 Equivalent: $"

		  


		inva db 0dh,0ah,09h,09h,09h,09h,"Invalid input! $"
       ast db,0ah,"     ***********************************************************************$"
	   press db 0dh,0ah,09h,09h,09h,"    Press any key to continue.... $"

.CODE

	main proc

	mov ax,@data
	mov ds,ax

;CODE ////////////////////////////////////////////////////////////////
Start:   

    mov ah,00h                   
	mov al,02h
	int 10h

	mov ah,09h
	lea dx,ast
	int 21h
	lea dx,disp
	int 21h

;MENU //////////////
	lea dx,Calc  ;Calculator
	int 21h      
	lea dx,Con   ;Conversion
	int 21h
	lea dx,Exit  ;Exit
	int 21h

;PICK /////////////
	lea dx,Pick
	int 21h
	mov ah,01h   ;input choices
	int 21h

Filter:
    cmp al,'1'
	je Calculator
	cmp al,'2'
	je ExtendsConversion
	cmp al,'3'
	je tapos

	jmp Start

ExtendsConversion:
    jmp Conversion
tapos:
    mov ah,00                   
	mov al,02
	int 10h

	mov ah,09h
	lea dx,ast
	int 21h
	lea dx,awts
	int 21h

	jmp ensd
Calculator:

    mov ah,00                   
	mov al,02
	int 10h

	mov ah,09h
	lea dx,ast
	int 21h
	lea dx,displaysub 
	int 21h

;SUB-MENU DISPLAY//////////////////////////////////
;///////////////////////////////////////////////////////////////////////

	lea dx,Adds   ;Additiom
	int 21h
	lea dx,Subs   ;Subtraction
	int 21h
	lea dx,Mults  ;Multplication
	int 21h

	lea dx,Divs   ;Division
	int 21h

	lea dx,back   ;Back to main menu
	int 21h
	lea dx,pick   
	int 21h
	mov ah,01h    ;input choices
	int 21h

FilterSub:
    cmp al,'1'
	je Addition

	cmp al,'2'
	je ExtendsSubtraction

	cmp al,'3'
	je ExtendsMultiplication

	cmp al,'4'
	je ExtendsDivision

	cmp al,'5'
	je extendStart

	jmp Calculator

ExtendsSubtraction:
    jmp Subtraction
ExtendsMultiplication:
    jmp Multiplication
ExtendsDivision:
    jmp Division



ensd:
	mov ah,4ch
	int 21h

;ADDITION//////////////////////////////////////////
;//////////////////////////////////////////////////////////////////////////////////////
Addition:

    mov ah,00                   
	mov al,02
	int 10h

    mov ah,09h 
	lea dx,ast          ;******************
	int 21h

	lea dx,displayAdd   ;Calculator-Addition
	int 21h

	lea dx,Base03       ;Base 03
	int 21h

	lea dx,Base05       ;Base 05
	int 21h

	lea dx,backsub      ;back sub
	int 21h

	lea dx,pick         ;Pick your choice
	int 21h

	mov ah,01h          ;input choices
	int 21h

	;FILTER
	cmp al,'1'
	je ADDbase03

	cmp al,'2'
	je extendADDbase05

	cmp al,'5'
	je a


	jmp Addition

a:
	jmp Calculator

extendADDbase05:
	jmp ADDbase05
extendStart:
    jmp Start
;//////////////////////////////////////////////////////////////////////////////////////////
ADDbase03:
  
	mov ah,00                   
	mov al,02
	int 10h

    mov ah,09h 
	lea dx,ast          ;******************
	int 21h

	lea dx,base03Add    ;Calculator: Addition
	int 21h

First103:
	lea dx,addend03     ;Display addend
	int 21h

    mov ah,01h          ;input  
	int 21h
	mov ch,al

; filter code
	cmp ch,'0'
	jl ADDbase03
	cmp ch,'2'
	jg ADDbase03
	sub ch,30h

First203:

    mov ah,01h          ;input  
	int 21h
	mov cl,al
	
	cmp cl,'0'
	jl ADDbase03
	cmp cl,'2'
	jg ADDbase03
	sub cl,30h

Second103:
	mov ah,09h
	lea dx,augend03     ;Display augend
	int 21h
	
    mov ah,01h          ;input  
	int 21h
	mov dh,al

	cmp dh,'0'
	jl ADDbase03
	cmp dh,'2'
	jg ADDbase03

	sub dh,30h

Second203:

    mov ah,01h          ;input  
	int 21h
	mov dl,al

	cmp dl,'0'
	jl ADDbase03
	cmp dl,'2'
	jg ADDbase03

	sub dl,30h

;///////////////////////////////////////// 


total:
;Add cl and dl

	mov al,cl      ;al = cl
	add al,dl      ;al = al + dl

	mov ah,00h      ;clear Ah

	mov bl,03h       ;base divsion

	aad
	div bl          ;al / bl 

	mov cl,ah       ;first remainder


;Add dh and ch

 
	add al,ch       ;al = al + a
	add al,dh       ;al = al + c
	
	mov ah,00h      ;clear Ah

	mov bl,3h       ;base division

	aad

	div bl          ;al / bl

	or ax,3030h
	mov bx,ax       ; transfer ax value to bx

    mov ah,09h      ;Print out
    lea dx,sum
    int 21h

    add cl,30h

    mov ah,02h

    mov dl,bl       ;answer
    int 21h

    mov dl,bh       ;Remainder
    int 21h

    mov dl,cl       ;first remainder
    int 21h
 
again03:

	mov ah,09h
	lea dx,ADDAgain
	int 21h

	mov ah,01h
	int 21h
;filter
	cmp al,'y'
	je A03
	cmp al,'n'
	je B03
	  
	mov ah,00                   
	mov al,02
	int 10h

    mov ah,09h 
	lea dx,ast          ;******************
	int 21h

	lea dx,base03Add    ;Calculator: Addition
	int 21h

	jmp again03

A03:
	jmp ADDbase03
B03:
	jmp Addition


;//////////////////////////////////////////////////////////////////////////////////////////
ADDbase05:

    mov ah,00                   
	mov al,02
	int 10h
    
    mov ah,09h 
	lea dx,ast          ;******************
	int 21h

	lea dx,base05Add    ;Calculator: Addition
	int 21h

First05:
	lea dx,addend05     ;Display addend
	int 21h

    mov ah,01h          ;input  1
	int 21h
	mov ch,al
	
	cmp ch,'0'
	jl ADDbase05
	cmp ch,'4'
	jg ADDbase05

	sub ch,30h

    mov ah,01h          ;input  2 
	int 21h
	mov cl,al
	
	cmp cl,'0'
	jl ADDbase05
	cmp cl,'4'
	jg ADDbase05
	sub cl,30h

Second05:

	mov ah,09h
	lea dx,augend05     ;Display augend
	int 21h

    mov ah,01h          ;input  1
	int 21h
	mov dh,al

	cmp dh,'0'
	jl ADDbase05
	cmp dh,'4'
	jg ADDbase05
	sub dh,30h
	
	mov ah,01h          ;input  2
	int 21h
	mov dl,al

	cmp dl,'0'
	jl ADDbase05
	cmp dl,'4'
	jg ADDbase05

	sub dl,30h

total05:

;Add cl and dl

	mov al,cl       ;al = cl
	add al,dl       ;al = al + dl

	mov ah,00h      ;clear Ah

	mov bl,05h      ;base divsion

	aad

	div bl          ;al / bl 

	mov cl,ah       ;first remainder


;Add dh and ch

 
	add al,ch       ;al = al + a
	add al,dh       ;al = al + c
	
	mov ah,00h      ;clear Ah

	mov bl,05h       ;base division

	aad

	div bl          ;al / bl

	or ax,3030h
	mov bx,ax       ;transfer ax value to bx

    mov ah,09h      ;Print out
    lea dx,sum
    int 21h

    add cl,30h

    mov ah,02h
    mov dl,bl       ;answer
    int 21h

    mov dl,bh       ;Remainder
    int 21h

    mov dl,cl       ;first remainder
    int 21h
 

again05:
	mov ah,09h
	lea dx,ADDAgain
	int 21h

	mov ah,01h
	int 21h
;filter
	cmp al,'Y'
	je A05
	cmp al,'N'
	je B05

	jmp again05

A05:
	jmp ADDbase05
B05:
	jmp Addition


;//////////////////////////////////////////////////////////////////////////////////////
Subtraction:

    mov ah,00                   
	mov al,02
	int 10h

    mov ah,09h 
	lea dx,ast          ;******************
	int 21h

	lea dx,displaySubb   ;Calculator-Subtraction
	int 21h

	lea dx,Base03       ;Base 03
	int 21h

	lea dx,Base05       ;Base 05
	int 21h

	lea dx,backsub      ;back sub
	int 21h

	lea dx,pick         ;Pick your choice
	int 21h

	mov ah,01h          ;input choices
	int 21h

	;FILTER
	cmp al,'1'
	je Subbase03

	cmp al,'2'
	je extendSubbase05

	cmp al,'5'
	je as

	jmp Subtraction

as:
	jmp Calculator

extendSubbase05:
	jmp Subbase05

;//////////////////////////////////////
Subbase03:

    mov ah,00                   
	mov al,02
	int 10h
    
    mov ah,09h 
	lea dx,ast          ;******************
	int 21h

	lea dx,base03Sub    ;Calculator: Subtraction
	int 21h

subFirst03:
	lea dx,Minuend03     ;Display Minuend
	int 21h

    mov ah,01h          ;input  1
	int 21h
	mov bh,al
	
	cmp bh,'0'
	jl Subbase03
	cmp bh,'2'
	jg Subbase03

    mov ah,01h          ;input  2 
	int 21h
	mov bl,al
	
	cmp bl,'0'
	jl Subbase03
	cmp bl,'2'
	jg Subbase03


subSecond03:
	mov ah,09h
	lea dx,Subtrahend03     ;Display Subtrahend
	int 21h

    mov ah,01h          ;input  1
	int 21h
	mov ch,al

	cmp ch,'0'
	jl Subbase03
	cmp ch,'2'
	jg Subbase03
	
	mov ah,01h          ;input  2
	int 21h
	mov cl,al

	cmp cl,'0'
	jl Subbase03
	cmp cl,'2'
	jg Subbase03

	cmp cx,bx
	jg extendssubNotice03
	jmp subTotal
	

extendssubNotice03:
    jmp subNotice03

subTotal:
;NOTE: SUBTRACTION USING R's Compliment
;Minuend = bx
;Subtrahend = cx

    sub bx,3030h

    mov ax,3233h    ;Rs Compliment
	sub ax,cx       ;Subtract subtrahend to Rs Compliment
	                ;AX = Rs Compliment
	mov cx,ax       ;cx = Subtrahend Rs Compliment result
	sub ax,ax       ;AX CLEAR

;NOTE: AL = answer , AH = remainder
    
	mov dh,bh

    add bl,cl
	mov al,bl
	mov ah,00h
	mov bl,3h       ;base division
	aad
	div bl
	or ax,3030h

	mov dl,ah       ;second digit

	mov bh,dh

	add bh,al
	add bh,ch
	sub ax,ax
	mov al,bh
	mov bl,3h       ;base division
	aad
	div bl
	or ax,3030h

	mov bh,ah       ;first digit
	mov bl,dl

;Print
	mov ah,09h
	lea dx,diff
	int 21h

	mov ah,02h

	mov dl,bh
	int 21h
	mov dl,bl
	int 21h

	jmp again03sub
	 
eto_na:
jmp ensd

again03sub:
	mov ah,09h
	lea dx,SUBagain
	int 21h

	mov ah,01h
	int 21h
;filter
	cmp al,'y'
	je YSubbase03
	cmp al,'n'
	je NSubtraction

	jmp again03sub

YSubbase03:
    jmp Subbase03
NSubtraction:
    jmp Subtraction

;///////////////////////////KAPAG NEGATIVE
subNotice03:

;NOTE: SUBTRACTION USING R's Compliment
;Minuend = cx
;Subtrahend = bx

    sub cx,3030h

    mov ax,3233h    ;Rs Compliment
	sub ax,bx       ;Subtract subtrahend to Rs Compliment
	                ;AX = Rs Compliment
	mov bx,ax       ;cx = Subtrahend Rs Compliment result
	sub ax,ax       ;AX CLEAR

;NOTE: AL = answer , AH = remainder
    
	mov dh,ch

    add cl,bl
	mov al,cl
	mov ah,00h
	mov cl,3h       ;base division
	aad
	div cl
	or ax,3030h

	mov dl,ah       ;second digit

	mov ch,dh

	add ch,al
	add ch,bh
	sub ax,ax
	mov al,ch
	mov cl,3h       ;base division
	aad
	div cl
	or ax,3030h

	mov ch,ah       ;first digit
	mov cl,dl

;Print
	mov ah,09h
	lea dx,diff
	int 21h

	mov ah,02h
	mov dl,'-'
	int 21h
	mov dl,ch
	int 21h
	mov dl,cl
	int 21h

	jmp again03sub
;////////////////////////////////////////////////////////

Subbase05:

    mov ah,00                   
	mov al,02
	int 10h
    
    mov ah,09h 
	lea dx,ast          ;******************
	int 21h

	lea dx,base05Sub    ;Calculator: Subtraction
	int 21h

subFirst05:
	lea dx,Minuend05     ;Display Minuend
	int 21h

    mov ah,01h           ;input  1
	int 21h
	mov bh,al
	
	cmp bh,'0'
	jl Subbase05
	cmp bh,'4'
	jg Subbase05

    mov ah,01h           ;input  2 
	int 21h
	mov bl,al
	
	cmp bl,'0'
	jl Subbase05
	cmp bl,'4'
	jg Subbase05

subSecond05:
	mov ah,09h
	lea dx,Subtrahend05     ;Display Subtrahend
	int 21h

    mov ah,01h          ;input  1
	int 21h
	mov ch,al

	cmp ch,'0'
	jl Subbase05
	cmp ch,'4'
	jg Subbase05
	
	mov ah,01h          ;input  2
	int 21h
	mov cl,al

	cmp cl,'0'
	jl Subbase05
	cmp cl,'4'
	jg Subbase05

	cmp cx,bx
	jg extendssubNotice05
	jmp subTotal05

extendssubNotice05:
    jmp subNotice05

subTotal05:
;NOTE: SUBTRACTION USING R's Compliment
;Minuend = bx
;Subtrahend = cx

   
    sub bx,3030h
    mov ax,3435h    ;Rs Compliment
	sub ax,cx       ;Subtract subtrahend to Rs Compliment
	                ;AX = Rs Compliment
	mov cx,ax       ;cx = Subtrahend Rs Compliment result
	sub ax,ax       ;AX CLEAR

;NOTE: AL = answer , AH = remainder

	mov dl,bh

    add bl,cl
	mov al,bl
	mov ah,00h

	mov bl,5h       ;base division
	aad
	div bl
	or ax,3030h

	mov dh,ah       ;second digit


;////////////////////////////////

	mov bh,dl

	add bh,al
	add bh,ch
	sub bh,30h

	sub ax,ax
	mov al,bh
	mov bl,5h       ;base division
	aad
	div bl
	or ax,3030h

	mov bh,ah
	mov bl,dh       ;first digit

;Print
	mov ah,09h
	lea dx,diff
	int 21h

	mov ah,02h

	mov dl,bh
	int 21h
	mov dl,bl
	int 21h

	jmp again05sub

again05sub:
	mov ah,09h
	lea dx,SUBagain
	int 21h

	mov ah,01h
	int 21h
;filter
	cmp al,'y'
	je YSubbase05
	cmp al,'n'
	je NSubtraction05

	jmp again05sub

YSubbase05:
    jmp Subbase05
NSubtraction05:
    jmp Subtraction

;///////////////////////////////////////KAPAG NEGATIVE
subNotice05:
;NOTE: SUBTRACTION USING R's Compliment
;Minuend = cx
;Subtrahend = bx

   
    sub cx,3030h
    mov ax,3435h    ;Rs Compliment
	sub ax,bx       ;Subtract subtrahend to Rs Compliment
	                ;AX = Rs Compliment
	mov bx,ax       ;cx = Subtrahend Rs Compliment result
	sub ax,ax       ;AX CLEAR

;NOTE: AL = answer , AH = remainder

	mov dl,ch

    add cl,bl
	mov al,cl
	mov ah,00h

	mov cl,5h       ;base division
	aad
	div cl
	or ax,3030h

	mov dh,ah       ;second digit


;////////////////////////////////

	mov ch,dl

	add ch,al
	add ch,bh
	sub ch,30h

	sub ax,ax
	mov al,ch
	mov cl,5h       ;base division
	aad
	div cl
	or ax,3030h

	mov ch,ah
	mov cl,dh       ;first digit
;Print
	mov ah,09h
	lea dx,diff
	int 21h

	mov ah,02h
	mov dl,'-'
	int 21h

	mov dl,ch
	int 21h
	mov dl,cl
	int 21h

	jmp again05sub

;//////////////////////////////////////////////////////////////////////////
Multiplication:

    mov ah,00                   
	mov al,02
	int 10h

    mov ah,09h 
	lea dx,ast          ;******************
	int 21h

	lea dx,displayMulti   ;Calculator-Multiplication
	int 21h

	lea dx,Base03       ;Base 03
	int 21h

	lea dx,Base05       ;Base 05
	int 21h

	lea dx,backsub      ;back sub
	int 21h

	lea dx,pick         ;Pick your choice
	int 21h

	mov ah,01h          ;input choices
	int 21h

	;FILTER
	cmp al,'1'
	je mulbase03

	cmp al,'2'
	je extendmulbase05

	cmp al,'5'
	je as0

	jmp Multiplication

as0:
	jmp Calculator

extendmulbase05:
	jmp mulbase05

;//////////////////////////////////////////////////////////////////////////
mulbase03:	

    mov ah,00                   
	mov al,02
	int 10h
    
    mov ah,09h 
	lea dx,ast          ;******************
	int 21h

	lea dx,base03Multi    ;Calculator: Subtraction
	int 21h

mulFirst03:
	lea dx,Multiplicand03     ;Display Minuend
	int 21h

    mov ah,01h          ;input  1
	int 21h
	mov bh,al
	
	cmp bh,'0'
	jl mulbase03
	cmp bh,'2'
	jg mulbase03

	mov ah,01h          ;input  2
	int 21h
	mov bl,al
	
	cmp bl,'0'
	jl mulbase03
	cmp bl,'2'
	jg mulbase03

	sub bx,3030h

mulSecond03:
	mov ah,09h
	lea dx,Multiplier03     ;Display Subtrahend
	int 21h

    mov ah,01h          ;input  1
	int 21h
	mov ch,al

	cmp ch,'0'
	jl mulbase03
	cmp ch,'2'
	jg mulbase03

	mov ah,01h          ;input  2
	int 21h
	mov cl,al

	cmp cl,'0'
	jl mulbase03
	cmp cl,'2'
	jg mulbase03
	
	sub cx,3030h

mulTotal03:

	mov dh,ch

;Multiply cl

	mov al,bl
	mul cl
	mov ch,al

    mov al,bh
	mul cl
	mov cl,al




;divide : CL CH

	sub ax,ax
	mov al,ch
	mov ch,3h
	aad
	div ch

	mov ch,ah     ;3rd digit

	add cl,al

	sub ah,ah
	mov al,cl
	mov cl,3h
	aad
	div cl

	mov cl,ah     ;2nd digit
	mov dl,al     ;first digit

;Multiply ch
	mov al,bl
	mul dh
	mov bl,al

    mov al,bh
	mul dh
	mov bh,al



;divide : BH BL

    
	sub ax,ax
	mov al,bl
	mov bl,3h
	aad
	div bl

	mov bl,ah    ;3rd digit

	add bh,al    

	sub ah,ah
	mov al,bh
	mov bh,3h
	aad
	div bh

	mov bh,ah    ;2nd digit
	mov dh,al    ;3rd digit

;Add//////////////////////////////
;addend: dl cl ch
;augend: dh bh bl

;total: cl bh bl ch

     add bh,dl
	 add bl,cl
	 mov cl,dh


	 sub ah,ah
	 mov al,bl
	 mov bl,3h
	 aad
	 div bl

	 mov bl,ah     ;3rd

	 add bh,al

	 sub ah,ah
	 mov al,bh
	 mov bh,3h
	 aad
	 div bh

	 mov bh,ah      ;2nd
	 add cl,al      ;1st




	add cx,3030h
	add bx,3030h

;Print
	mov ah,09h
	lea dx,Prod
	int 21h

	mov ah,02h

	mov dl,cl
	int 21h
	mov dl,bh
	int 21h
	mov dl,bl
	int 21h
	mov dl,ch
	int 21h

	jmp again03mul

again03mul:
	mov ah,09h
	lea dx,MULagain
	int 21h

	mov ah,01h
	int 21h
;filter
	cmp al,'y'
	je YMulbase03
	cmp al,'n'
	je NMultiplication03

	jmp again03mul

YMulbase03:
    jmp Mulbase03
NMultiplication03:
    jmp Multiplication

mulbase05:

    mov ah,00                   
	mov al,02
	int 10h
    
    mov ah,09h 
	lea dx,ast          ;******************
	int 21h

	lea dx,base05Multi    ;Calculator: Subtraction
	int 21h

mulFirst05:
	lea dx,Multiplicand05     ;Display Minuend
	int 21h

    mov ah,01h          ;input  1
	int 21h
	mov bh,al
	
	cmp bh,'0'
	jl mulbase05
	cmp bh,'4'
	jg mulbase05

    mov ah,01h          ;input  2
	int 21h
	mov bl,al
	
	cmp bl,'0'
	jl mulbase05
	cmp bl,'4'
	jg mulbase05

	sub bx,3030h

mulSecond05:
	mov ah,09h
	lea dx,Multiplier05     ;Display Subtrahend
	int 21h

    mov ah,01h          ;input  1
	int 21h
	mov ch,al

	cmp ch,'0'
	jl mulbase05
	cmp ch,'4'
	jg mulbase05

	mov ah,01h          ;input  2
	int 21h
	mov cl,al

	cmp cl,'0'
	jl mulbase05
	cmp cl,'4'
	jg mulbase05

	sub cx,3030h
mulTotal05:
	mov dh,ch

;Multiply cl

	mov al,bl
	mul cl
	mov ch,al

    mov al,bh
	mul cl
	mov cl,al




;divide : CL CH

	sub ax,ax
	mov al,ch
	mov ch,5h
	aad
	div ch

	mov ch,ah     ;3rd digit

	add cl,al

	sub ah,ah
	mov al,cl
	mov cl,5h
	aad
	div cl

	mov cl,ah     ;2nd digit
	mov dl,al     ;first digit

;Multiply ch
	mov al,bl
	mul dh
	mov bl,al

    mov al,bh
	mul dh
	mov bh,al



;divide : BH BL

    
	sub ax,ax
	mov al,bl
	mov bl,5h
	aad
	div bl

	mov bl,ah    ;3rd digit

	add bh,al    

	sub ah,ah
	mov al,bh
	mov bh,5h
	aad
	div bh

	mov bh,ah    ;2nd digit
	mov dh,al    ;3rd digit

;Add//////////////////////////////
;addend:    dl cl ch
;augend: dh bh bl

;total: cl bh bl ch

     add bh,dl
	 add bl,cl
	 mov cl,dh


	 sub ah,ah
	 mov al,bl
	 mov bl,5h
	 aad
	 div bl

	 mov bl,ah     ;3rd

	 add bh,al

	 sub ah,ah
	 mov al,bh
	 mov bh,5h
	 aad
	 div bh

	 mov bh,ah      ;2nd
	 add cl,al      ;1st




	add cx,3030h
	add bx,3030h

;Print
	mov ah,09h
	lea dx,Prod
	int 21h

	mov ah,02h

	mov dl,cl
	int 21h
	mov dl,bh
	int 21h
	mov dl,bl
	int 21h
	mov dl,ch
	int 21h

	jmp again05mul

again05mul:
	mov ah,09h
	lea dx,MULagain
	int 21h

	mov ah,01h
	int 21h
;filter
	cmp al,'y'
	je YMulbase05
	cmp al,'n'
	je NMultiplication05

	jmp again05mul

YMulbase05:
    jmp Mulbase05
NMultiplication05:
    jmp Multiplication

;///////////////////////////////////////////////////////////////////
Division:

    mov ah,00                   
	mov al,02
	int 10h

    mov ah,09h 
	lea dx,ast          ;******************
	int 21h

	lea dx,displayDivi   ;Calculator-Division
	int 21h

	lea dx,Base03       ;Base 03
	int 21h

	lea dx,Base05       ;Base 05
	int 21h

	lea dx,backsub      ;back sub
	int 21h

	lea dx,pick         ;Pick your choice
	int 21h

	mov ah,01h          ;input choices
	int 21h

	;FILTER
	cmp al,'1'
	je divbase03

	cmp al,'2'
	je extenddivbase05

	cmp al,'5'
	je Divas0


	jmp Division

Divas0:
	jmp Calculator

extenddivbase05:
	jmp divbase05

;//////////////////////////////////////////////
divbase03:

    mov ah,00h                   
	mov al,02h
	int 10h

    mov ah,09h 
	lea dx,ast          ;******************
	int 21h

	lea dx,base03Divi    ;Calculator: Division
	int 21h

FirstDIV103:
	lea dx,Dividend03     ;Display addend
	int 21h

    mov ah,01h            ;input  
	int 21h
	mov ch,al
	
	cmp ch,'0'
	jl divbase03
	cmp ch,'2'
	jg divbase03


FirstDIV203:

    mov ah,01h             ;input  
	int 21h
	mov cl,al
	
	cmp cl,'0'
	jl divbase03

	cmp cl,'2'
	jg divbase03


SecondDIV103:

	mov ah,09h
	lea dx,Divisior03     ;Display Divisor
	int 21h
	
    mov ah,01h            ;input  
	int 21h
	mov Bh,al

	cmp Bh,'0'
	jl divbase03
	cmp Bh,'2'
	jg divbase03



SecondDIV203:

    mov ah,01h             ;input  
	int 21h
	mov bl,al

	cmp bl,'0'
	jl divbase03
	cmp bl,'2'
	jg divbase03

	jmp totaldiv

divNotice03:

	mov ah,09h

	lea dx,DIVinotice
	int 21h

	lea dx,ast
	int 21h

	lea dx,press
	int 21h

	mov ah,01h
	int 21h

	jmp divbase03

;///////////////////////////////////////// 


totaldiv:

;Dividend = CX
;Divisor = BX

    cmp bx,3030h
	jz divNotice03
	cmp cx,3030h
	jz divGreater03

     sub cx,3030h
	 sub bx,3030h


	 mov dx,0000h
	 mov ax,cx
	 div bx

	 or ax,3030h
	 or dx,3030h

	 mov bx,ax
	 mov cx,dx

	 jmp Printout03

divGreater03:
    mov cx,bx
	mov bx,3030H

Printout03:

;Quotient
    mov ah,09h      
    lea dx,Quo
    int 21h


    mov ah,02h

    mov dl,bh       ;answer
    int 21h

    mov dl,bl       ;Remainder
    int 21h

;Remainder


    mov ah,09h      
    lea dx,Remai
    int 21h


    mov ah,02h

    mov dl,ch       ;answer
    int 21h

    mov dl,cl       ;Remainder
    int 21h

 
divagain03:
	mov ah,09h
	lea dx,DIVagain
	int 21h

	mov ah,01h
	int 21h
;filter
	cmp al,'y'
	je divA03
	cmp al,'n'
	je divB03
	

	jmp divagain03

divA03:
	jmp divbase03
divB03:
	jmp Division

;//////////////////////////////////////////////////////////////

divbase05:

    mov ah,00h                   
	mov al,02h
	int 10h

    mov ah,09h 
	lea dx,ast          ;******************
	int 21h

	lea dx,base05Divi    ;Calculator: Division
	int 21h

FirstDIV105:
	lea dx,Dividend05     ;Display addend
	int 21h

    mov ah,01h            ;input  
	int 21h
	mov ch,al
	
	cmp ch,'0'
	jl divbase05
	cmp ch,'4'
	jg divbase05


FirstDIV205:

    mov ah,01h          ;input  
	int 21h
	mov cl,al
	
	cmp cl,'0'
	jl divbase05

	cmp cl,'4'
	jg divbase05

SecondDIV105:

	mov ah,09h
	lea dx,Divisior05     ;Display Divisor
	int 21h
	
    mov ah,01h            ;input  
	int 21h
	mov Bh,al

	cmp Bh,'0'
	jl divbase05
	cmp Bh,'4'
	jg divbase05



SecondDIV205:

    mov ah,01h             ;input  
	int 21h
	mov bl,al

	cmp bl,'0'
	jl divbase05
	cmp bl,'4'
	jg divbase05

	jmp totaldiv05

divNotice05:

	mov ah,09h

	lea dx,DIVinotice
	int 21h

	lea dx,ast
	int 21h

	lea dx,press
	int 21h

	mov ah,01h
	int 21h

	jmp divbase05

;///////////////////////////////////////// 


totaldiv05:

;Dividend = CX
;Divisor = BX

    cmp bx,3030h
	jz divNotice05
	cmp cx,3030h
	jz divGreater05

     sub cx,3030h
	 sub bx,3030h


	 mov dx,0000h
	 mov ax,cx
	 div bx

	 or ax,3030h
	 or dx,3030h

	 mov bx,ax
	 mov cx,dx

	 jmp Printout05

divGreater05:
    mov cx,bx
	mov bx,3030H

Printout05:

;Quotient
    mov ah,09h      
    lea dx,Quo
    int 21h


    mov ah,02h

    mov dl,bh       ;answer
    int 21h

    mov dl,bl       ;Remainder
    int 21h

;Remainder


    mov ah,09h      
    lea dx,Remai
    int 21h


    mov ah,02h

    mov dl,ch       ;answer
    int 21h

    mov dl,cl       ;Remainder
    int 21h

 
divagain05:
	mov ah,09h
	lea dx,DIVagain
	int 21h

	mov ah,01h
	int 21h
;filter
	cmp al,'y'
	je divA05
	cmp al,'n'
	je divB05
	

	jmp divagain05

divA05:
	jmp divbase05
divB05:
	jmp Division


;///////////////////////////////////////////////////////
Conversion:

    mov ah,00                   
	mov al,02
	int 10h

	mov ah,09h
	lea dx,ast
	int 21h
	lea dx,displayConvesub 
	int 21h

;SUB-MENU DISPLAY//////////////////////////////////
;///////////////////////////////////////////////////////////////////////

	lea dx,back   ;Back to main menu
	int 21h

	lea dx,pick   
	int 21h

	mov ah,01h    ;input choices
	int 21h

    cmp al,'1'
	je Base03toBase05

	cmp al,'2'
	je extendsBase04toBase05

	cmp al,'3'
	je extendsBase05toBase04
	
	cmp al,'5'
	je extendsextendStart

;Invalid

	mov ah,09h
	lea dx,ast
	int 21h

    lea dx,inva
	int 21h

	mov ah,01h
	int 21h
	jmp Conversion

extendsextendStart:
    jmp extendStart

extendsBase04toBase05:
    jmp Base04toBase05

extendsBase05toBase04:
    jmp Base05toBase04

;//////////////////////////////////////////////////////////

Base03toBase05:

	mov ah,00                   
	mov al,02
	int 10h

    mov ah,09h 
	lea dx,ast          ;******************
	int 21h

	lea dx,displayBase35    ;Conversion:  
	int 21h

First1035:
	lea dx,ConvBase3        ;Display addend
	int 21h

    mov ah,01h              ;input  
	int 21h
	mov bh,al
	
	cmp bh,'0'
	jl firstinput1035
	cmp bh,'2'
	jg firstinput1035
	sub bh,30h


    mov ah,01h          ;input  
	int 21h
	mov ch,al
	
	cmp ch,'0'
	jl firstinput1035
	cmp ch,'2'
	jg firstinput1035

	sub ch,30h
;Process
 
;Base 3 to Base 10
	mov al,bh
	mov bl,3h
	mul bl

	add ch,al
    
;Base 10 to base 5
    
	sub ax,ax ;clear ax
	
	mov al,ch
	mov bl,5h
	aad
	div bl
	or ax,3030h

	mov bx,ax

;Print
   mov ah,09h
   lea dx,ConvBase5
   int 21h

   mov ah,02h
   mov dl,bl
   int 21h
   mov dl,bh
   int 21h

again035:
    mov ah,09h
	lea dx,Base35again
	int 21h

	mov ah,01h
	int 21h
;filter
	cmp al,'Y'
	je ao35
	cmp al,'N'
	je bo35

;inavlid

	mov ah,09h
	lea dx,inva
	int 21h

	lea dx,ast
	int 21h

	lea dx,press
	int 21h

	mov ah,01h
	int 21h

	jmp again035


firstinput1035:
	mov ah,09h
	lea dx,inva
	int 21h
	lea dx,ast
	int 21h
	lea dx,press
	int 21h
	mov ah,01h
	int 21h

	jmp Base03toBase05

ao35:
    jmp Base03toBase05
bo35:
	jmp Conversion

;///////////////////////////////////////////////////////////////////
Base04toBase05:

    mov ah,00                   
	mov al,02
	int 10h

        mov ah,09h 
	lea dx,ast          ;******************
	int 21h

	lea dx,displayBase45    ;Conversion:  
	int 21h

First1045:
	lea dx,ConvBase4        ;Display addend
	int 21h

    mov ah,01h              ;input  
	int 21h
	mov bh,al
	
	cmp bh,'0'
	jl firstinput1045
	cmp bh,'3'
	jg firstinput1045
	sub bh,30h


    mov ah,01h          ;input  
	int 21h
	mov ch,al
	
	cmp ch,'0'
	jl firstinput1045
	cmp ch,'3'
	jg firstinput1045

	sub ch,30h

;Process
 
;Base 4 to Base 10
	mov al,bh
	mov bl,4h
	mul bl

	add ch,al
    
;Base 10 to base 5
    
	sub ax,ax ;clear ax
	
	mov al,ch
	mov bl,5h
	aad
	div bl
	or ax,3030h

	mov bx,ax

;Print
   mov ah,09h
   lea dx,ConvBase05
   int 21h

   mov ah,02h
   mov dl,bl
   int 21h
   mov dl,bh
   int 21h

again045:
    mov ah,09h
	lea dx,Base35again
	int 21h

	mov ah,01h
	int 21h
;filter
	cmp al,'y'
	je ao45
	cmp al,'n'
	je bo45

;inavlid

	mov ah,09h
	lea dx,inva
	int 21h

	lea dx,ast
	int 21h

	lea dx,press
	int 21h

	mov ah,01h
	int 21h

	jmp again045


firstinput1045:
	mov ah,09h
	lea dx,inva
	int 21h
	lea dx,ast
	int 21h
	lea dx,press
	int 21h
	mov ah,01h
	int 21h

	jmp Base04toBase05

ao45:
    jmp Base04toBase05
bo45:
	jmp Conversion

;///////////////////////////////////////////////////////////////////
Base05toBase04:

        mov ah,00                   
	mov al,02
	int 10h

        mov ah,09h 
	lea dx,ast          ;******************
	int 21h

	lea dx,displayBase54    ;Conversion:  
	int 21h

First1054:
	lea dx,ConvBase055        ;Display addend
	int 21h

    mov ah,01h              ;input  
	int 21h
	mov bh,al
	
	cmp bh,'0'
	jl firstinput1054
	cmp bh,'4'
	jg firstinput1054
	sub bh,30h


    mov ah,01h          ;input  
	int 21h
	mov ch,al
	
	cmp ch,'0'
	jl firstinput1054
	cmp ch,'4'
	jg firstinput1054

	sub ch,30h

;Process
 
;Base 5 to Base 10
	mov al,bh
	mov bl,5h
	mul bl

	add ch,al
    
;Base 10 to base 4
    
	sub ax,ax  ;clear ax
	
	mov al,ch
	mov bl,4h
	aad
	div bl

	mov ch,ah
	sub ah,ah
	mov bl,4h
	aad
	div bl
	or ax,3030h
	mov bx,ax
	add ch,30h
;Print
   mov ah,09h
   lea dx,ConvBase04
   int 21h

   mov ah,02h
   mov dl,bl
   int 21h
   mov dl,bh
   int 21h
   mov dl,ch
   int 21h
again054:
    mov ah,09h
	lea dx,Base35again
	int 21h

	mov ah,01h
	int 21h
;filter
	cmp al,'y'
	je ao54
	cmp al,'n'
	je bo54

;inavlid

	mov ah,09h
	lea dx,inva
	int 21h

	lea dx,ast
	int 21h

	lea dx,press
	int 21h

	mov ah,01h
	int 21h

	jmp again054


firstinput1054:
	mov ah,09h
	lea dx,inva
	int 21h
	lea dx,ast
	int 21h
	lea dx,press
	int 21h
	mov ah,01h
	int 21h

	jmp Base05toBase04

ao54:
    jmp Base05toBase04
bo54:
	jmp Conversion

main endp
end main