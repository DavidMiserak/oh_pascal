PC=fpc
PFLAGS=-Miso

clean:
	rm -rfv *.o *.exe

all: Test.exe

Test.exe: Test.pas
	$(PC) $(PFLAGS) -o$@ $<
