PC=fpc
PFLAGS=-Miso

clean:
	rm -rfv *.o *.exe

all: ArrayAvg.exe Average.exe OneDBed.exe Reversal.exe StringIn.exe TwoDBed.exe

ArrayAvg.exe: ArrayAvg.pas
	$(PC) $(PFLAGS) -o$@ $<
Average.exe: Average.pas
	$(PC) $(PFLAGS) -o$@ $<
Dump.exe: Dump.pas
	$(PC) $(PFLAGS) -o$@ $<
Multiply.exe: Multiply.pas
	$(PC) $(PFLAGS) -o$@ $<
OneDBed.exe: OneDBed.pas
	$(PC) $(PFLAGS) -o$@ $<
Reversal.exe: Reversal.pas
	$(PC) $(PFLAGS) -o$@ $<
StringIn.exe: StringIn.pas
	$(PC) $(PFLAGS) -o$@ $<
TwoDBed.exe: TwoDBed.pas
	$(PC) $(PFLAGS) -o$@ $<
