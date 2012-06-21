all: build

build: lib

lib:
	make -C lib/ build

clean:
	make -C lib/ clean
	find -name "*.pyc" -delete

.PHONY: all build clean lib
