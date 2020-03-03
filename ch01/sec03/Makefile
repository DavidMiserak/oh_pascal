PC=fpc
PFLAGS=-Miso

clean:
	rm -rfv *.o *.exe

all: Garbage.exe Multiply.exe Trader.exe

Garbage.exe: Garbage.pas
	$(PC) $(PFLAGS) -o$@ Garbage.pas
Multiply.exe: Multiply.pas
	$(PC) $(PFLAGS) -o$@ Multiply.pas
Trader.exe: Trader.pas
	$(PC) $(PFLAGS) -o$@ Trader.pas
