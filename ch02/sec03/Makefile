PC=fpc
PFLAGS=-Miso

clean:
	rm -rfv *.o *.exe

all: Wattage.exe

Wattage.exe: Wattage.pas
	$(PC) $(PFLAGS) -o$@ Wattage.pas
