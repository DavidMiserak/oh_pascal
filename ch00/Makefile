PC=fpc
PFLAGS=-Miso

clean:
	rm -rfv *.o *.exe

all: FirstRun.exe Second.exe

FirstRun.exe: FirstRun.pas
	$(PC) $(PFLAGS) -o$@ FirstRun.pas

Second.exe: Second.pas
	$(PC) $(PFLAGS) -o$@ Second.pas
