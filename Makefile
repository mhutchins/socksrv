EXE = server
OBJ = main.o	service.o

CFLAGS    = -O 
# for g++ compiler:
# CFLAGS= -Wall -ansi -pedantic -O -I./HDR

all     : $(OBJ)
	gcc -o $(EXE) $(OBJ)

#$(LIB)  : $(OBJ)
#	ar r library.a *.o
#	ranlib library.a
#	/bin/rm -f *.o
#	@echo "finished updating Library"
.c:
	$(CC) $(CFLAGS) $(LDFLAGS) $< $(LOADLIBES) -o $@

clean   :
	@/bin/rm -f *.a *.bak *.err $(OBJ) $(EXE)
