CC      = gcc
CFLAGS  = -I$(IDIR)
LDFLAGS = 

SRCDIR  = src
IDIR    = include

SOURCES = $(wildcard $(SRCDIR)/*.c)

TARGET  = sudoku.exe

.PHONY: all run clean

all: $(TARGET)

$(TARGET): $(SOURCES)
	$(CC) $(SOURCES) $(CFLAGS) $(LDFLAGS) -o $(TARGET)

run: $(TARGET)
	.\$(TARGET)

clean:
	-del $(TARGET)
