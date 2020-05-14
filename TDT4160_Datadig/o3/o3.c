#include "o3.h"
#include "gpio.h"
#include "systick.h"

#define LED_PIN 2
#define LED_PORT GPIO_PORT_E
#define BUTTON_PORT GPIO_PORT_B
#define BUTTON_PIN 9

/**************************************************************************//**
 * @brief Konverterer nummer til string 
 * Konverterer et nummer mellom 0 og 99 til string
 *****************************************************************************/
void int_to_string(char *timestamp, unsigned int offset, int i) {
    if (i > 99) {
        timestamp[offset]   = '9';
        timestamp[offset+1] = '9';
        return;
    }

    while (i > 0) {
	    if (i >= 10) {
		    i -= 10;
		    timestamp[offset]++;
		
	    } else {
		    timestamp[offset+1] = '0' + i;
		    i=0;
	    }
    }
}

/**************************************************************************//**
 * @brief Konverterer 3 tall til en timestamp-string
 * timestamp-argumentet m være et array med plass til (minst) 7 elementer.
 * Det kan deklareres i funksjonen som kaller som "char timestamp[7];"
 * Kallet blir dermed:
 * char timestamp[7];
 * time_to_string(timestamp, h, m, s);
 *****************************************************************************/
void time_to_string(char *timestamp, int h, int m, int s) {
    timestamp[0] = '0';
    timestamp[1] = '0';
    timestamp[2] = '0';
    timestamp[3] = '0';
    timestamp[4] = '0';
    timestamp[5] = '0';
    timestamp[6] = '\0';

    int_to_string(timestamp, 0, h);
    int_to_string(timestamp, 2, m);
    int_to_string(timestamp, 4, s);
}


// Hentet fra kompendium 3.6.3: Memory Mapping
typedef struct {
  volatile word CTRL;
  volatile word MODEL;
  volatile word MODEH;
  volatile word DOUT;
  volatile word DOUTSET;
  volatile word DOUTCLR;
  volatile word DOUTTGL;
  volatile word DIN ;
  volatile word PINLOCKN;
} gpio_port_t;

typedef struct {
  volatile gpio_port_t port[6];
  volatile word unused_space [10];
  volatile word EXTIPSELL;
  volatile word EXTIPSELH;
  volatile word EXTIRISE;
  volatile word EXTIFALL;
  volatile word IEN;
  volatile word IF;
  volatile word IFS;
  volatile word IFC;
  volatile word ROUTE;
  volatile word INSENSE;
  volatile word LOCK;
  volatile word CTRL;
  volatile word CMD;
  volatile word EM4WUEN;
  volatile word EM4WUPOL;
  volatile word EM4WUCAUSE;
} gpio_t;

typedef struct {
  volatile word CTRL;
  volatile word LOAD;
  volatile word VAL;
  volatile word CALIB;
} tick_t;

enum State { second, minute, hour, countdown, alarm };

// Variabler for tilstanden:
int sec, min, hours;
enum State state;
volatile gpio_t* GPIO;

// Skru av og paa LED
void enable_LED()  { GPIO->port[LED_PORT].DOUTSET = 0b0100; }
void disable_LED() { GPIO->port[LED_PORT].DOUTCLR = 0b0100; }


void setup() {
  GPIO = (gpio_t*) GPIO_BASE;

  start_clock();

  // Oppsett av knapp og LED:
  GPIO->port[LED_PORT].DOUT    = (int) false;
  GPIO->port[LED_PORT].MODEL &= ~(0b1111 << 8);
  GPIO->port[LED_PORT].MODEL |= GPIO_MODE_OUTPUT << 8;

  GPIO->port[BUTTON_PORT].DOUT = (int) false;
  GPIO->port[BUTTON_PORT].MODEH &= ~(0b1111 << 4); // pb0
  GPIO->port[BUTTON_PORT].MODEH |= GPIO_MODE_INPUT << 4;

  // Velger en av disse:
  GPIO->EXTIPSELH &= ~(0b1111 << 4);
  GPIO->EXTIPSELH |= 0b0001 << 4;

  // "falling edge trigger"
  GPIO->EXTIFALL |= 1 << 9;

  // Handlingsflagg
  GPIO->IFC |= 1 << 9;
  GPIO->IEN |= 1 << 9;

  GPIO->port[BUTTON_PORT].MODEH &= ~(0b1111 << 8); // pb1
  GPIO->port[BUTTON_PORT].MODEH |= GPIO_MODE_INPUT << 8;

  GPIO->EXTIPSELH &= ~(0b1111 << 8);
  GPIO->EXTIPSELH |= 0b0001 << 8;

  GPIO->EXTIFALL |= 1 << 10;

  GPIO->IFC |= 1 << 10;
  GPIO->IEN |= 1 << 10;
}

// Haandter handling fra PB1 (Button 1)
void GPIO_EVEN_IRQHandler(void) {
  switch(state) {
    case hour:
      if (hours == 0 && min == 0 && sec == 0) {
        state = alarm;
        enable_LED();
      } else {
        state = countdown;
      }
      break;
    case alarm:
      state = second;
      disable_LED();
      break;
    case countdown:
      break;
    case second:
      state = minute;
      break;
    case minute:
      state = hour;
      break;
  }

  // Handling PB0 (Flagg)
  GPIO->IFC = 1 << 10;
}

// Haandter handling fra PB0
void GPIO_ODD_IRQHandler(void) {
  switch (state) {
    case second:
      sec++;
      break;
    case minute:
      min++;
      break;
    case hour:
      hours++;
      break;
    default:
      break;
  }

  GPIO->IFC = 1 << 9;
}

// Systick hentet fra forelsning
void SysTick_Handler(void) {
  if (state == countdown) {
    sec--;

    if (hours == 0 && min == 0 && sec == 0) {
      state = alarm;
      enable_LED();
    }

    if (sec < 0) {
      min--;
      sec = 59;

      if (min < 0) {
        hours--;
        min = 59;
      }
    }
  }
}

// Starter klokken
void start_clock() {
  volatile tick_t* sys_tick;
  sys_tick = (tick_t*) SYSTICK_BASE;
  sys_tick->CTRL = 7;
  sys_tick->LOAD = FREQUENCY;
}



// Maa ha en "uendelig" lokke som kjorer i bakgrunnen:
int main(void) {
    init();
    
    setup();

    sec = 0;
    min = 0;
    hours = 0;

    state = second;

    while (true) {
      char str[7];

      time_to_string(str, hours, min, sec);
      lcd_write(str);
    }

    return 0;
}

