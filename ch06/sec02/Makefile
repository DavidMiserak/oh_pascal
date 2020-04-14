PC=fpc
PFLAGS=-Miso

clean:
	rm -rfv *.o *.exe

all: Pervade.exe Tutor.exe

ChCount.exe: ChCount.pas
	$(PC) $(PFLAGS) -o$@ $<
Pervade.exe: Pervade.pas
	$(PC) $(PFLAGS) -o$@ $<
SkipToNumber.exe: SkipToNumber.pas
	$(PC) $(PFLAGS) -o$@ $<
Tutor.exe: Tutor.pas
	$(PC) $(PFLAGS) -o$@ $<
