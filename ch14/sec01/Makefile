PC=fpc
PFLAGS=-Miso

clean:
	rm -rfv *.o *.exe

all: Groucho.exe

Groucho.exe: Groucho.pas
	$(PC) $(PFLAGS) -o$@ $<
