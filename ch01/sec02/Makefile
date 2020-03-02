PC=fpc
PFLAGS=-Miso

clean:
	rm -rfv *.o *.exe

all: BugMe.exe ReadTest.exe

BugMe.exe:
	$(PC) $(PFLAGS) -o$@ BugMe.pas

ReadTest.exe:
	$(PC) $(PFLAGS) -o$@ ReadTest.pas
