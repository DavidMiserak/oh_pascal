PC=fpc
PFLAGS=-Miso

.PHONY: clean
clean:
	rm -rfv *.o *.exe

all: 

AddAWord.exe: AddAWord.pas
	$(PC) $(PFLAGS) -o$@ $<
Decode.exe: Decode.pas
	$(PC) $(PFLAGS) -o$@ $<
InOrder.exe: InOrder.pas
	$(PC) $(PFLAGS) -o$@ $<
InspectTree.exe: InspectTree.pas
	$(PC) $(PFLAGS) -o$@ $<
