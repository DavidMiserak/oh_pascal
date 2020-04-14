PC=fpc
PFLAGS=-Miso

clean:
	rm -rfv *.o *.exe

all: FindS.exe Numbers.exe Words.exe

FindS.exe: FindS.pas
	$(PC) $(PFLAGS) -o$@ $<
Numbers.exe: Numbers.pas
	$(PC) $(PFLAGS) -o$@ $<
Words.exe: Words.pas
	$(PC) $(PFLAGS) -o$@ $<
