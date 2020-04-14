PC=fpc
PFLAGS=-Miso

clean:
	rm -rfv *.o *.exe

all: Coins.exe Daily.exe Describe.exe MrRogers.exe

Coins.exe: Coins.pas
	$(PC) $(PFLAGS) -o$@ $<
Daily.exe: Daily.pas
	$(PC) $(PFLAGS) -o$@ $<
Describe.exe: Describe.pas
	$(PC) $(PFLAGS) -o$@ $<
MrRogers.exe: MrRogers.pas
	$(PC) $(PFLAGS) -o$@ $<
