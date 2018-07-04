CC = gcc
LD = gcc
STRIP = strip

CFLAGS = -Wall
LDLIBS =

OBJS = hello.o
TARGET = hello

all: $(TARGET)

.c.o:
	$(CC) $(CFLAGS) -c $< -o $@
	
$(TARGET): $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $(OBJS) $(LDLIBS)
	$(STRIP) $@

clean:
	rm -f $(OBJS) $(TARGET)


