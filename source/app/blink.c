#include <stdint.h>
#include "pico/time.h"
#include "hardware/gpio.h"

volatile uint8_t __attribute__((section(".heap"))) myheap[200];
volatile uint8_t *allocated_value;

int main()
{
    const uint32_t LED_PIN = 25;

    // allocate some memory
    allocated_value = malloc(10);
    *allocated_value = 55;

    // set the memory to a defined value
    memset(allocated_value, 0x05, 20);

    gpio_init(LED_PIN);
    gpio_set_dir(LED_PIN, GPIO_OUT);
    while (true) {
        gpio_put(LED_PIN, 1);
        sleep_ms(250);
        gpio_put(LED_PIN, 0);
        sleep_ms(250);
    }

    return 0;
}
