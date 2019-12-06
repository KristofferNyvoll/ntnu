.thumb
.syntax unified

.include "gpio_constants.s"     // Register-adresser og konstanter for GPIO
.include "sys-tick_constants.s" // Register-adresser og konstanter for SysTick

.text
	.global Start
	
Start:

	//Oppsett av Systick (importert ovenfor)
    LDR r0, =SYSTICK_BASE + SYSTICK_CTRL
    //Systick kontroll og status
    LDR r1, =SysTick_CTRL_CLKSOURCE_Msk | SysTick_CTRL_TICKINT_Msk
    STR r1, [r0]

    LDR r0, =SYSTICK_BASE + SYSTICK_LOAD
    //Laster systick-verdien p nytt
    LDR r1, =FREQUENCY / 10
    STR r1, [r0]

    //Oppsett for avbryting
    LDR r0, =GPIO_BASE + GPIO_EXTIPSELH
    LDR r1, [r0] //Innholdet til EXTIPSELH skrives til r1
    MOV r2, #0b1111
    LSL r2, r2, #4 //1111 0000
    MVN r2, r2 //INVERT 1111 ... 0000 1111
    AND r2, r2, r1 //xxxx ... 0000 xxxx
    LDR r1, =BUTTON_PORT // 0001
    LSL r1, r1, #4 // 0000 ... 0001 0000
    ORR r1, r1, r2 // xxxx ... xxx1 xxxx
    STR r1, [r0]

    LDR r0, =GPIO_BASE + GPIO_EXTIFALL
    LDR r1, [r0]
    MOV r2, #0b0001
    LSL r2, r2, BUTTON_PIN
    ORR r2, r2, r2
    STR r2, [r0]

    //Naar Reset-knappen trykkes:
    LDR r0, =GPIO_BASE + GPIO_IFC
    MOV r1, #0b0001
    LSL r1, r1, BUTTON_PIN
    STR r1, [r0]

    //Muliggjoer avbryting
    LDR r0, =GPIO_BASE + GPIO_IEN
    MOV r1, #0b0001
    LSL r1, r1, BUTTON_PIN
    STR r1, [r0]


//Det maa vaere en uendelig loop som er i bakgrunnen mens den venter paa en interrupt
loop:
    b loop

.global GPIO_ODD_IRQHandler
.thumb_func

GPIO_ODD_IRQHandler:
    //Klokken
    LDR r0, =SYSTICK_BASE + SYSTICK_CTRL
    LDR r1, [r0]
    EOR r1, SysTick_CTRL_ENABLE_Msk //TOGGLE BIT FOR ENABLE WITH XOR
    STR r1, [r0]

    //Resetter klokka (Og displayet) naar noen trykker paa reset-knappen.
    LDR r0, =GPIO_BASE + GPIO_IFC
    MOV r1, #0b0001
    LSL r1, r1, BUTTON_PIN
    STR r1, [r0]

    bx lr


.global SysTick_Handler
.thumb_func

SysTick_Handler:
    //Tideler
    LDR r0, =tenths
    LDR r4, [r0]
    ADD r4, r4, #1
    CMP r4, #10
    BNE write_tenths
    //Hopper over resten med mindre vi har 10 tideler
    MOV r4, #0

    //Sekunder
    LDR r1, =seconds
    LDR r5, [r1]
    ADD r5, r5, #1

    //Skrur LED'en av og paa annenhvert sek
    LDR r12, =GPIO_BASE + (PORT_SIZE * LED_PORT) + GPIO_PORT_DOUTTGL
    LDR r11, =1 << LED_PIN
    STR r11, [r12]

    CMP r5, #60
    BNE write_seconds
    //Hopper over resten med mindre vi har 60 sek
    MOV r5, #0

    //Minutter
    LDR r2, =minutes
    LDR r6, [r2]
    ADD r6, r6, #1

    write_minutes:
        str r6, [r2]
    write_seconds:
        str r5, [r1]
    write_tenths:
        str r4, [r0]

    bx lr

NOP // Behold denne paa bunnen av fila

