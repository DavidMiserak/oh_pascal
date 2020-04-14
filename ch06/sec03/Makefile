PC=fpc
PFLAGS=-Miso

clean:
	rm -rfv *.o *.exe

all: PiApprox.exe

GCD.exe: GCD.pas
	$(PC) $(PFLAGS) -o$@ $<
Newton.exe: Newton.pas
	$(PC) $(PFLAGS) -o$@ $<
PiApprox.exe: PiApprox.pas
	$(PC) $(PFLAGS) -o$@ $<
