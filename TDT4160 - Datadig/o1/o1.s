.thumb
.syntax unified
.include "gpio_constants.s"
.text
	.global Start
Start:
	// 	LED0: Port E, Pin 2
	//	PB0 : Port B, Pin 9
	//	R8: Button-pin pos
	//	R9: Led-pin select
	//	R10: BUTTON_DIN address
	//	R11: LED_DOUTCLR address
	//	R12: LED_DOUTSET address



	// Setter LED_DOUTSET og LED_DOUTCLR
	// Hentet fra "Practical Lectures" Assembly.pdf
	LDR R0, =GPIO_BASE
	LDR R1, =PORT_SIZE
	LDR R2, =LED_PORT
	MUL R2, R2, R1
	ADD R2, R2, R0
	LDR R1, =GPIO_PORT_DOUTSET
	LDR R0, =GPIO_PORT_DOUTCLR
	ADD R12, R2, R1
	ADD R11, R2, R0

	// Deklarerer BUTTON_DIN
	LDR R0, =GPIO_BASE
	LDR R1, =PORT_SIZE
	LDR R2, =BUTTON_PORT
	MUL R1, R1, R2
	ADD R1, R1, R0
	LDR R0, =GPIO_PORT_DIN
	ADD R10, R1, R0


	// Setter verdier som brukes til  skru av/p LED-lyset
	MOV R9, #4
	MOV R1, #1
	LSL R8, R1, #9

	// Denne skrur av LED-lyset
	// B store_off
	B skru_av

skru_paa:
	STR R9, [R12]	// Set LED-pin i LED_DOUTSET til hy (skru p LED), fortsetter s til neste instruksjon (test_on_state)

test_paa:
	LDR R5, [R10]	// Les alle verdier i BUTTON_PORT
	AND R6, R5, R8	// Velg bare verdi p button pin
	CMP R6, #0		// Sjekk om verdi ikke er 0 -> Knapp er ikke trykket ned (active low)
	BNE	skru_av		// Knappen er ikke trykket ned, skru av LED og g til av-sjekk
	B test_paa		// Knappen er trykket ned, start ny sjekk

skru_av:
	STR R9, [R11]

test_av:
	LDR R5, [R10]	// Les BUTTON_PORT
	AND R6,	R5, R8	// Velg button-pin
	CMP R6, #0		// Sammenligne button-pin og 0
	BEQ skru_paa	// Om de er like (0) er knappen trykket ned, skru p LED
	B test_av		// Fortsett  sjekke til knappen blir trykket ned


NOP // Behold denne paa bunnen av fila
