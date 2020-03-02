PC=fpc
PFLAGS=-Miso

clean:
	rm -rfv *.o *.exe

all: Garbage.exe Multiply.exe Trader.exe

Garbage.exe:
	$(PC) $(PFLAGS) -o$@ Garbage.pas
Multiply.exe:
	$(PC) $(PFLAGS) -o$@ Multiply.pas
Trader.exe:
	$(PC) $(PFLAGS) -o$@ Trader.pas
