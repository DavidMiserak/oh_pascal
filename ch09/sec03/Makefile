PC=fpc
PFLAGS=-Miso

clean:
	rm -rfv *.o *.exe

all: ChCounts.exe Magic.exe TestPals.exe

ChCounts.exe: ChCounts.pas
	$(PC) $(PFLAGS) -o$@ $<
Magic.exe: Magic.pas
	$(PC) $(PFLAGS) -o$@ $<
TestPals.exe: TestPals.pas
	$(PC) $(PFLAGS) -o$@ $<
