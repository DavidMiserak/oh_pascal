PC=fpc
PFLAGS=-Miso

clean:
	rm -rfv *.o *.exe

all: Menu.exe

Compare.exe: Compare.pas
	$(PC) $(PFLAGS) -o$@ $<
Menu.exe: Menu.pas
	$(PC) $(PFLAGS) -o$@ $<
NextWork.exe: NextWork.pas
	$(PC) $(PFLAGS) -o$@ $<
TypeIn.exe: TypeIn.pas
	$(PC) $(PFLAGS) -o$@ $<
TypeOut.exe: TypeOut.pas
	$(PC) $(PFLAGS) -o$@ $<
