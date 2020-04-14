PC=fpc
PFLAGS=-Miso

clean:
	rm -rfv *.o *.exe

all: ForBed.exe ForTrial.exe

ForBed.exe: ForBed.pas
	$(PC) $(PFLAGS) -o$@ $<
ForTrial.exe: ForTrial.pas
	$(PC) $(PFLAGS) -o$@ $<
