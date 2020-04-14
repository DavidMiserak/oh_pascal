PC=fpc
PFLAGS=-Miso

.PHONY: clean
clean:
	rm -rfv *.o *.exe

all: NodeBed.exe PointBed.exe Pointers.exe

NodeBed.exe: NodeBed.pas
	$(PC) $(PFLAGS) -o$@ $<
PointBed.exe: PointBed.pas
	$(PC) $(PFLAGS) -o$@ $<
Pointers.exe: Pointers.pas
	$(PC) $(PFLAGS) -o$@ $<
