PC=fpc
PFLAGS=-Miso

clean:
	rm -rfv *.o *.exe

all: MakeFile.exe ReadFile.exe

MakeFile.exe: MakeFile.pas
	$(PC) $(PFLAGS) -o$@ $<
ReadFile.exe: ReadFile.pas
	$(PC) $(PFLAGS) -o$@ $<
