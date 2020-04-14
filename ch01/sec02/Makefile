PC=fpc
PFLAGS=-Miso

clean:
	rm -rfv *.o *.exe

all: BugMe.exe ReadTest.exe

BugMe.exe: BugMe.pas
	$(PC) $(PFLAGS) -o$@ $< 

ReadTest.exe: ReadTest.pas
	$(PC) $(PFLAGS) -o$@ $< 
