PC=fpc
PFLAGS=-Miso

clean:
	rm -rfv *.o *.exe

all: AddMe.exe AssignMe.exe Chatty.exe

AddMe.exe: AddMe.pas
	$(PC) $(PFLAGS) -o$@ AddMe.pas
AssignMe.exe: AssignMe.pas
	$(PC) $(PFLAGS) -o$@ AssignMe.pas
Chatty.exe:  Chatty.pas
	$(PC) $(PFLAGS) -o$@ Chatty.pas
