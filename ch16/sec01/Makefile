PC=fpc
PFLAGS=-Miso

.PHONY: clean
clean:
	rm -rfv *.o *.exe

all: Fibonacci.exe Hanoi.exe IterativeReverse.exe Power.exe Print.exe Recur.exe Summer.exe UnDigit.exe

Fibonacci.exe: Fibonacci.pas
	$(PC) $(PFLAGS) -o$@ $<
Hanoi.exe: Hanoi.pas
	$(PC) $(PFLAGS) -o$@ $<
IterativeReverse.exe: IterativeReverse.pas
	$(PC) $(PFLAGS) -o$@ $<
Power.exe: Power.pas
	$(PC) $(PFLAGS) -o$@ $<
Print.exe: Print.pas
	$(PC) $(PFLAGS) -o$@ $<
Recur.exe: Recur.pas
	$(PC) $(PFLAGS) -o$@ $<
Summer.exe: Summer.pas
	$(PC) $(PFLAGS) -o$@ $<
UnDigit.exe: UnDigit.pas
	$(PC) $(PFLAGS) -o$@ $<
