.PHONY : clean help

CC := gcc
OUTFILE := ./build/q4.out
SOURCEFILE := ./src/q4.c
CFLAGS := -o $(OUTFILE)
CPPFLAGS :=
LDFLAGS :=
LDLIBS :=

$(OUTFILE) : $(SOURCEFILE)
	$(CC) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS) $(LDLIBS) $(SOURCEFILE)

clean :
	rm -f $(OUTFILE)

help :
	@echo "option"
	@echo "(default) : compile"
	@echo "    clean : Romove files"
	@echo "     help : this"
