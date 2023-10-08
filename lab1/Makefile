.PHONY:test,clean
test:
	arm-linux-gnueabihf-gcc Factorial.s -o Factorial.out
	qemu-arm -L /usr/arm-linux-gnueabihf ./Factorial.out
clean:
	rm -fr Factorial.out