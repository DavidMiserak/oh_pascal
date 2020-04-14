PC=fpc
PFLAGS=-Miso

clean:
	rm -rfv *.o *.exe

all: Switch1.exe Switch2.exe Switch3.exe Switch4.exe

Switch1.exe: Switch1.pas
	$(PC) $(PFLAGS) -o$@ $<

Switch2.exe: Switch2.pas
	$(PC) $(PFLAGS) -o$@ $<

Switch3.exe: Switch3.pas
	$(PC) $(PFLAGS) -o$@ $<

Switch4.exe: Switch4.pas
	$(PC) $(PFLAGS) -o$@ $<
