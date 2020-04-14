PC=fpc
PFLAGS=-Miso

clean:
	rm -rfv *.o *.exe

all: Candles.exe LoopBed.exe LoveCon.exe RealAvg.exe

Candles.exe: Candles.pas
	$(PC) $(PFLAGS) -o$@ $<
LoopBed.exe: LoopBed.pas
	$(PC) $(PFLAGS) -o$@ $<
LoveCon.exe: LoveCon.pas
	$(PC) $(PFLAGS) -o$@ $<
RealAvg.exe: RealAvg.pas
	$(PC) $(PFLAGS) -o$@ $<
