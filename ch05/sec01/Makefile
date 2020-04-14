PC=fpc
PFLAGS=-Miso

clean:
	rm -rfv *.o *.exe

all: Gradient.exe Shopper.exe

Gradient.exe: Gradient.pas
	$(PC) $(PFLAGS) -o$@ $<
Shopper.exe: Shopper.pas
	$(PC) $(PFLAGS) -o$@ $<
