PC=fpc
PFLAGS=-Miso

.PHONY: clean
clean:
	rm -rfv *.o *.exe

all: Permute.exe Threader.exe

Permute.exe: Permute.pas
	$(PC) $(PFLAGS) -o$@ $<
Quicksort.exe: Quicksort.pas
	$(PC) $(PFLAGS) -o$@ $<
Threader.exe: Threader.pas
	$(PC) $(PFLAGS) -o$@ $<
