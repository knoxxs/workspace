obj-m := helloWorld.o withParameters.o startstop.o
KDIR := /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)

startstop-objs := spanningMultipleFile_start.o spanningMultipleFile_stop.o

all:
	$(MAKE) -C $(KDIR) M=$(PWD) modules
 
clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean
