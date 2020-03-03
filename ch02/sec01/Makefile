PC=fpc
PFLAGS=-Miso

clean:
	rm -rfv *.o *.exe

all: Caller.exe Conflict.exe Doggerel.exe ReverseInput.exe SplitUp.exe Switch.exe ValueArg.exe ValueBed.exe VarArg.exe WiseGuy.exe

Caller.exe: Caller.pas
	$(PC) $(PFLAGS) -o$@ Caller.pas

Conflict.exe: Conflict.pas
	$(PC) $(PFLAGS) -o$@ Conflict.pas

Doggerel.exe: Doggerel.pas
	$(PC) $(PFLAGS) -o$@ Doggerel.pas

ParamBed.exe: ParamBed.pas
	$(PC) $(PFLAGS) -o$@ ParamBed.pas

ReverseInput.exe: ReverseInput.pas
	$(PC) $(PFLAGS) -o$@ ReverseInput.pas

SplitUp.exe: SplitUp.pas
	$(PC) $(PFLAGS) -o$@ SplitUp.pas

Switch.exe: Switch.pas
	$(PC) $(PFLAGS) -o$@ Switch.pas

ValueArg.exe: ValueArg.pas
	$(PC) $(PFLAGS) -o$@ ValueArg.pas

ValueBed.exe: ValueBed.pas
	$(PC) $(PFLAGS) -o$@ ValueBed.pas

VarArg.exe: VarArg.pas
	$(PC) $(PFLAGS) -o$@ VarArg.pas

WiseGuy.exe: WiseGuy.pas
	$(PC) $(PFLAGS) -o$@ WiseGuy.pas

