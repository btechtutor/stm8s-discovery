#include "stm8s.h"
#include "stm8s_gpio.h"

static void delay(uint32_t t) {
  while(t--);
}

int main(void) {
  // Configure pins
  GPIOD->DDR |= GPIO_PIN_0;
  GPIOD->CR1 |= GPIO_PIN_0;
  GPIOD->ODR |= GPIO_PIN_0;

  // Loop
  for(;;) {
    GPIOD->ODR ^= GPIO_PIN_0;
    delay(30000);
  }

}

