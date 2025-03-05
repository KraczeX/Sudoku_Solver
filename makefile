###############################################################################
# MAKEFILE DLA WINDOWS (np. MinGW/MSYS) Z OBSŁUGĄ WILDCARD
###############################################################################

# Kompilator i flagi
CC      = gcc
CFLAGS  = -I$(IDIR)
LDFLAGS = 

# Katalogi źródeł i nagłówków
SRCDIR  = src
IDIR    = include

# Zbiór wszystkich plików .c w katalogu src:
SOURCES = $(wildcard $(SRCDIR)/*.c)

# Nazwa wynikowego pliku wykonywalnego (Windows: .exe)
TARGET  = sudoku.exe

# Cele "phony", czyli nie-plikowe
.PHONY: all run clean

###############################################################################
# Domyślny cel: kompilacja programu
###############################################################################
all: $(TARGET)

# Kompilacja i linkowanie
$(TARGET): $(SOURCES)
	$(CC) $(SOURCES) $(CFLAGS) $(LDFLAGS) -o $(TARGET)

###############################################################################
# Uruchomienie programu
###############################################################################
run: $(TARGET)
	.\$(TARGET)

###############################################################################
# Czyszczenie: usunięcie pliku wykonywalnego
###############################################################################
clean:
	-del $(TARGET)
