PC=fpc
PFLAGS=-Miso

clean:
	rm -rfv *.o *.exe

all: RealLife.exe

RealLife.exe: RealLife.pas
	$(PC) $(PFLAGS) -o$@ $<
