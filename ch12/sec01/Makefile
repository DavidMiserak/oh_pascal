PC=fpc
PFLAGS=-Miso

clean:
	rm -rfv *.o *.exe

all: TestRand.exe

TestRand.exe: TestRand.pas
	$(PC) $(PFLAGS) -o$@ $<
