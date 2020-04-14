PC=fpc
PFLAGS=-Miso

clean:
	rm -rfv *.o *.exe

all: KeyTypes.exe Tracker.exe

KeyTypes.exe: KeyTypes.pas
	$(PC) $(PFLAGS) -o$@ $<
Tracker.exe: Tracker.pas
	$(PC) $(PFLAGS) -o$@ $<
