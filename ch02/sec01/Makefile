PC=fpc
PFLAGS=-Miso

.PHONY: clean
clean:
	rm -rfv *.o *.exe

all: Caller.exe Conflict.exe Doggerel.exe ReverseInput.exe SplitUp.exe Switch.exe ValueArg.exe ValueBed.exe VarArg.exe WiseGuy.exe

Caller.exe: Caller.pas
	$(PC) $(PFLAGS) -o$@ $<

Conflict.exe: Conflict.pas
	$(PC) $(PFLAGS) -o$@ $<

Doggerel.exe: Doggerel.pas
	$(PC) $(PFLAGS) -o$@ $<

ParamBed.exe: ParamBed.pas
	$(PC) $(PFLAGS) -o$@ $<

ReverseInput.exe: ReverseInput.pas
	$(PC) $(PFLAGS) -o$@ $<

SplitUp.exe: SplitUp.pas
	$(PC) $(PFLAGS) -o$@ $<

Switch.exe: Switch.pas
	$(PC) $(PFLAGS) -o$@ $<

ValueArg.exe: ValueArg.pas
	$(PC) $(PFLAGS) -o$@ $<

ValueBed.exe: ValueBed.pas
	$(PC) $(PFLAGS) -o$@ $<

VarArg.exe: VarArg.pas
	$(PC) $(PFLAGS) -o$@ $<

WiseGuy.exe: WiseGuy.pas
	$(PC) $(PFLAGS) -o$@ $<
