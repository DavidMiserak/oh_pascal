PC=fpc
PFLAGS=-Miso

clean:
	rm -rfv *.o *.exe

all: Counter.exe EchoBug.exe EchoText.exe

Counter.exe: Counter.pas
	$(PC) $(PFLAGS) -o$@ $<
EchoBug.exe: EchoBug.pas
	$(PC) $(PFLAGS) -o$@ $<
EchoText.exe: EchoText.pas
	$(PC) $(PFLAGS) -o$@ $<
ReadInteger.exe: ReadInteger.pas
	$(PC) $(PFLAGS) -o$@ $<
