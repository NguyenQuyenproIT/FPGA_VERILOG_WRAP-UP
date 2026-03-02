//==================================================
// Tang Nano 20K – VALID Physical Constraints
// Chip: GW2AR-LV18QN88C8
//==================================================

//
//==================================================
// CLOCK (27MHz)
//==================================================

// IO_LOC "clk" 4;
// IO_PORT "clk" PULL_MODE=UP IO_TYPE=LVCMOS33 BANK_VCCIO=3.3;

// IO_LOC  "rst" 87;   // MODE1_KEY2
// IO_PORT "rst" IO_TYPE=LVCMOS33 PULL_MODE=UP BANK_VCCIO=3.3;

// IO_LOC "led" 15;
// IO_PORT "led" PULL_MODE=UP DRIVE=8 IO_TYPE=LVCMOS33 BANK_VCCIO=3.3;

// IO_LOC "led" 16;
// IO_PORT "led" PULL_MODE=UP DRIVE=8 IO_TYPE=LVCMOS33 BANK_VCCIO=3.3;

// IO_LOC "led" 17;
// IO_PORT "led" PULL_MODE=UP DRIVE=8 IO_TYPE=LVCMOS33 BANK_VCCIO=3.3;

// IO_LOC "led" 18; // có thể gán UART
// IO_PORT "led" PULL_MODE=UP DRIVE=8 IO_TYPE=LVCMOS33 BANK_VCCIO=3.3;

// IO_LOC "led" 19; // có thể gán UART
// IO_PORT "led" PULL_MODE=UP DRIVE=8 IO_TYPE=LVCMOS33 BANK_VCCIO=3.3;

// IO_LOC "led" 20;
// IO_PORT "led" PULL_MODE=UP DRIVE=8 IO_TYPE=LVCMOS33 BANK_VCCIO=3.3;

// IO_LOC  "i2c_scl" 42;   // IOB42B
// IO_PORT "i2c_scl" IO_TYPE=LVCMOS33 PULL_MODE=UP BANK_VCCIO=3.3;

// IO_LOC  "i2c_sda" 41;   // IOB43A
// IO_PORT "i2c_sda" IO_TYPE=LVCMOS33 PULL_MODE=UP BANK_VCCIO=3.3;

///////////////////////////////////////

// OPTION 2:

//==================================================
// Tang Nano 20K – Full Physical Constraints
// Chip: GW2AR-LV18QN88C8
//==================================================

//
//==================================================
// CLOCK (SYS_CLK)
//==================================================
// IO_LOC  "clk" 4; // PIN04_SYS_CLK 27MHz
// IO_PORT "clk" IO_TYPE=LVCMOS33 PULL_MODE=UP BANK_VCCIO=3.3;

//
//==================================================
// BUTTONS / RESET
//==================================================
// IO_LOC  "rst" 87; // PIN87_MODE1_KEY2
// IO_PORT "rst" IO_TYPE=LVCMOS33 PULL_MODE=UP BANK_VCCIO=3.3;

// IO_LOC  "btn1" 88; // PIN88_MODE0_KEY1
// IO_PORT "btn1" IO_TYPE=LVCMOS33 PULL_MODE=UP BANK_VCCIO=3.3;

//
//==================================================
// ONBOARD LEDs (ACTIVE LOW)
//==================================================
// IO_LOC  "led[0]" 15; // SYS_LED0
// IO_PORT "led[0]" IO_TYPE=LVCMOS33 PULL_MODE=UP BANK_VCCIO=3.3;

// IO_LOC  "led[1]" 16; // SYS_LED1
// IO_PORT "led[1]" IO_TYPE=LVCMOS33 PULL_MODE=UP BANK_VCCIO=3.3;

// IO_LOC  "led[2]" 17; // SYS_LED2
// IO_PORT "led[2]" IO_TYPE=LVCMOS33 PULL_MODE=UP BANK_VCCIO=3.3;

// IO_LOC  "led[3]" 18; // SYS_LED3
// IO_PORT "led[3]" IO_TYPE=LVCMOS33 PULL_MODE=UP BANK_VCCIO=3.3;

// IO_LOC  "led[4]" 19; // SYS_LED4
// IO_PORT "led[4]" IO_TYPE=LVCMOS33 PULL_MODE=UP BANK_VCCIO=3.3;

// IO_LOC  "led[5]" 20; // SYS_LED5
// IO_PORT "led[5]" IO_TYPE=LVCMOS33 PULL_MODE=UP BANK_VCCIO=3.3;

//
//==================================================
// UART (ONBOARD USB-UART) - UART-VIRTUAL
//==================================================
// IO_LOC  "uart_tx" 69; // PIN69_SYS_TX
// IO_PORT "uart_tx" IO_TYPE=LVCMOS33 BANK_VCCIO=3.3;

// IO_LOC  "uart_rx" 70; // PIN70_SYS_RX
// IO_PORT "uart_rx" IO_TYPE=LVCMOS33 PULL_MODE=UP BANK_VCCIO=3.3;

//
//==================================================
// SPI FLASH (CONFIG FLASH - DO NOT REUSE)
//==================================================
// IO_LOC  "flash_cs_n" 60; // MSPI_CS
// IO_PORT "flash_cs_n" IO_TYPE=LVCMOS33 PULL_MODE=NONE BANK_VCCIO=3.3;

// IO_LOC  "flash_clk" 59; // MSPI_CLK
// IO_PORT "flash_clk" IO_TYPE=LVCMOS33 PULL_MODE=NONE BANK_VCCIO=3.3;

// IO_LOC  "flash_mosi" 61; // MSPI_DI
// IO_PORT "flash_mosi" IO_TYPE=LVCMOS33 PULL_MODE=NONE BANK_VCCIO=3.3;

// IO_LOC  "flash_miso" 62; // MSPI_DO
// IO_PORT "flash_miso" IO_TYPE=LVCMOS33 PULL_MODE=NONE BANK_VCCIO=3.3;

//
//==================================================
// SDIO (MICRO SD CARD)
//==================================================
// IO_LOC "sd_clk"     83; // SDIO_CLK
// IO_PORT "sd_clk" IO_TYPE=LVCMOS33 BANK_VCCIO=3.3;

// IO_LOC "sd_cmd"     82; // SDIO_CMD
// IO_PORT "sd_cmd" IO_TYPE=LVCMOS33 PULL_MODE=UP BANK_VCCIO=3.3;

// IO_LOC "sd_dat[0]"  84; // SDIO_D0
// IO_PORT "sd_dat[0]" IO_TYPE=LVCMOS33 PULL_MODE=UP BANK_VCCIO=3.3;

// IO_LOC "sd_dat[1]"  85; // SDIO_D1
// IO_PORT "sd_dat[1]" IO_TYPE=LVCMOS33 PULL_MODE=UP BANK_VCCIO=3.3;

// IO_LOC "sd_dat[2]"  80; // SDIO_D2
// IO_PORT "sd_dat[2]" IO_TYPE=LVCMOS33 PULL_MODE=UP BANK_VCCIO=3.3;

// IO_LOC "sd_dat[3]"  81; // SDIO_D3
// IO_PORT "sd_dat[3]" IO_TYPE=LVCMOS33 PULL_MODE=UP BANK_VCCIO=3.3;

//
//==================================================
// I2C (USER – OLED / SENSOR)
//==================================================
// IO_LOC  "i2c_scl" 46;
// IO_PORT "i2c_scl" IO_TYPE=LVCMOS33 PULL_MODE=UP BANK_VCCIO=3.3;

// IO_LOC  "i2c_sda" 47;
// IO_PORT "i2c_sda" IO_TYPE=LVCMOS33 PULL_MODE=UP BANK_VCCIO=3.3;

//
//==================================================
// SPI USER (NOT SPI FLASH)
//==================================================
// IO_LOC "spi_sck"  48;
// IO_PORT "spi_sck" IO_TYPE=LVCMOS33 BANK_VCCIO=3.3;

// IO_LOC "spi_mosi" 49;
// IO_PORT "spi_mosi" IO_TYPE=LVCMOS33 BANK_VCCIO=3.3;

// IO_LOC "spi_miso" 50;
// IO_PORT "spi_miso" IO_TYPE=LVCMOS33 BANK_VCCIO=3.3;

// IO_LOC "spi_cs"   51;
// IO_PORT "spi_cs" IO_TYPE=LVCMOS33 PULL_MODE=UP BANK_VCCIO=3.3;

//
//==================================================
// GPIO DEBUG / GENERAL PURPOSE
//==================================================
// IO_LOC "gpio[0]" 52;
// IO_PORT "gpio[0]" IO_TYPE=LVCMOS33 BANK_VCCIO=3.3;

// IO_LOC "gpio[1]" 53;
// IO_PORT "gpio[1]" IO_TYPE=LVCMOS33 BANK_VCCIO=3.3;

// IO_LOC "gpio[2]" 54;
// IO_PORT "gpio[2]" IO_TYPE=LVCMOS33 BANK_VCCIO=3.3;

// IO_LOC "gpio[3]" 55;
// IO_PORT "gpio[3]" IO_TYPE=LVCMOS33 BANK_VCCIO=3.3;

//==================================================
// END OF FILE
//==================================================