PC=fpc
PFLAGS=-Miso

clean:
	rm -rfv *.o *.exe

all: Common.exe HandIn.exe Merger.exe Splitter.exe

Common.exe: Common.pas
	$(PC) $(PFLAGS) -o$@ $<
HandIn.exe: HandIn.pas
	$(PC) $(PFLAGS) -o$@ $<
Merger.exe: Merger.pas
	$(PC) $(PFLAGS) -o$@ $<
Splitter.exe: Splitter.pas
	$(PC) $(PFLAGS) -o$@ $<
