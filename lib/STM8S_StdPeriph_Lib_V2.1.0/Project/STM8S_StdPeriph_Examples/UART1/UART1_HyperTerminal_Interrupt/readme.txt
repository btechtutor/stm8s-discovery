/** @page UART1_HyperTerminal_Interrupt Communication between UART1 and hyperterminal using interrupts

  @verbatim
  ******************** (C)COPYRIGHT 2011 STMicroelectronics *******************
  * @file    UART1/UART1_HyperTerminal_Interrupt/readme.txt 
  * @author  MCD Application Team
  * @version V2.1.0
  * @date    18-November-2011
  * @brief   Description of the UART1 HyperTherminal interrupts Example.
  ******************************************************************************
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  ******************************************************************************
   @endverbatim

  @par Example description

  This example provides a description of how to use the UART1 interrupts to 
  communicate with the HyperTerminal.
  The UART1 sends a predefined buffer to the HyperTerminal and keep waiting 
  data to be entered by user and toggling infinitely LD1..LD4, each byte 
  received is sent back to the HyperTerminal. 
  The communication is managed by Transmit and Receive interrupts. 

  UART1 is configured as follow:
    - BaudRate = 115200 baud  
    - Word Length = 8 Bits (Word Length = 7 data bit + 1 parity bit  
    - One Stop Bit
    - Odd parity
    - Receive and transmit enabled
    - UART1 Clock disabled
  @note When the parity is enabled, the computed parity is inserted at the MSB
          position of the transmitted data.

    
  @par Directory contents

    - UART1\UART1_HyperTerminal_Interrupt\main.c           Main file containing the "main" function
    - UART1\UART1_HyperTerminal_Interrupt\stm8s_conf.h     Library Configuration file
    - UART1\UART1_HyperTerminal_Interrupt\stm8s_it.c       Interrupt routines source
    - UART1\UART1_HyperTerminal_Interrupt\stm8s_it.h       Interrupt routines declaration
    

  @par Hardware and Software environment
  
  - This example runs on STM8S High density and Low density devices and on STM8A
    High density devices.    
  
  - This example has been tested with STMicroelectronics STM8/128-EVAL evaluation 
    board and can be easily tailored to any other development board.

  - STM8/128-EVAL Set-up
     - Connect a null-modem female/female RS232 cable between the DB9 connector 
       CN13 and PC serial port.  
  - HyperTerminal configuration:
     - Word Length = 7 Bits
     - One Stop Bit
     - Odd parity
     - BaudRate = 115200 baud


  @par How to use it ?

  In order to make the program work, you must do the following :

  - Copy all source files from this example folder to the template folder under
    Project\Template
  - Open your preferred toolchain 
  - Rebuild all files and load your image into target memory
  - Run the example

  @note
  - High-Density STM8A devices are the STM8AF52xx STM8AF6269/8x/Ax,
    STM8AF51xx, and STM8AF6169/7x/8x/9x/Ax microcontrollers where the Flash memory
    density ranges between 32 to 128 Kbytes
  - Medium-Density STM8A devices are the STM8AF622x/4x, STM8AF6266/68,
    STM8AF612x/4x, and STM8AF6166/68 microcontrollers where the Flash memory 
    density ranges between 8 to 32 Kbytes
  - High-Density STM8S devices are the STM8S207xx, STM8S007 and STM8S208xx microcontrollers
    where the Flash memory density ranges between 32 to 128 Kbytes.
  - Medium-Density STM8S devices are the STM8S105x and STM8S005 microcontrollers
    where the Flash memory density ranges between 16 to 32-Kbytes.
  - Low-Density STM8S devices are the STM8S103xx, STM8S003 and STM8S903xx microcontrollers
    where the Flash density is 8 Kbytes.
 
 * <h3><center>&copy; COPYRIGHT 2011 STMicroelectronics</center></h3>
 */
