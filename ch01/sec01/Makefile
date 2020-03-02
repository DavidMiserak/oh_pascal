PC=fpc
PFLAGS=-Miso

clean:
	rm -rfv *.o *.exe

all: AddMe.exe AssignMe.exe Chatty.exe

AddMe.exe:
	$(PC) $(PFLAGS) -o$@ AddMe.pas
AssignMe.exe:
	$(PC) $(PFLAGS) -o$@ AssignMe.pas
Chatty.exe: 
	$(PC) $(PFLAGS) -o$@ Chatty.pas
