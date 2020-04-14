PC=fpc
PFLAGS=-Miso

clean:
	rm -rfv *.o *.exe

all: AddMe.exe AssignMe.exe Chatty.exe

AddMe.exe: AddMe.pas
	$(PC) $(PFLAGS) -o$@ $< 

AssignMe.exe: AssignMe.pas
	$(PC) $(PFLAGS) -o$@ $< 

Chatty.exe:  Chatty.pas
	$(PC) $(PFLAGS) -o$@ $< 
