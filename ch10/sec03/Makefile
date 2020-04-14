PC=fpc
PFLAGS=-Miso

clean:
	rm -rfv *.o *.exe

all: Dutch.exe

Dutch.exe: Dutch.pas
	$(PC) $(PFLAGS) -o$@ $<
