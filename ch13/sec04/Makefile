PC=fpc
PFLAGS=-Miso

clean:
	rm -rfv *.o *.exe

all: Disappears.exe DoesntRewrite.exe

Disappears.exe: Disappears.pas
	$(PC) $(PFLAGS) -o$@ $<
DoesntRewrite.exe: DoesntRewrite.pas
	$(PC) $(PFLAGS) -o$@ $<
