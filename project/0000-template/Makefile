CC=sdcc
CFLAGS=-lstm8 -mstm8 --out-fmt-ihx
INCLUDEPATH=../../lib/STM8S_StdPeriph_Lib_V2.1.0/Libraries/STM8S_StdPeriph_Driver/inc/
DEFINES=STM8S105 # Select device for stm8s.h
OBJECT=main.ihx
OUTPUT_DIR=build/
FLASH=stm8flash

all: $(OBJECT)

%.ihx: %.c
	mkdir -p $(OUTPUT_DIR)
	$(CC) $(CFLAGS) -I $(INCLUDEPATH) -D $(DEFINES) -o $(OUTPUT_DIR) $<

burn: $(OBJECT)
	$(FLASH) -c stlink -p stm8s105 -w ./$(OUTPUT_DIR)/$(OBJECT)

clean:
	rm -rf $(OUTPUT_DIR)


.PHONY: all burn clean
