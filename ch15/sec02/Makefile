PC=fpc
PFLAGS=-Miso

.PHONY: clean
clean:
	rm -rfv *.o *.exe

all: LinkEcho.exe Passage.exe

FreeList.exe: FreeList.pas
	$(PC) $(PFLAGS) -o$@ $<
LinkEcho.exe: LinkEcho.pas
	$(PC) $(PFLAGS) -o$@ $<
Passage.exe: Passage.pas
	$(PC) $(PFLAGS) -o$@ $<
