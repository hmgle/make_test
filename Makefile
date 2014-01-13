.PHONY: all clean
SRC := $(wildcard *.c)

all: foo

sinclude $(SRC:.c=.d)

%.d: %.c
	@set -e; rm -f $@; \
		$(CC) -MM $(CPPFLAGS) $< > $@.$$$$; \
		sed 's,\(.*\)\.o[:]*,\1.o $@:,' < $@.$$$$ > $@; \
		rm -f $@.$$$$

clean:
	-rm -f *.o foo
