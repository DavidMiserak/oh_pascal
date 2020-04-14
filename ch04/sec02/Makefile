PC=fpc
PFLAGS=-Miso

clean:
	rm -rfv *.o *.exe

all: Gauss.exe Project.exe Showtime.exe

Gauss.exe: Gauss.pas
	$(PC) $(PFLAGS) -o$@ $<
Project.exe: Project.pas
	$(PC) $(PFLAGS) -o$@ $<
Showtime.exe: Showtime.pas
	$(PC) $(PFLAGS) -o$@ $<
