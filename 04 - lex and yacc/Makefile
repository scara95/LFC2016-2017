
LEX = lex
YACC = yacc -d
# LEX = flex
# YACC = bison -d

# We assume that your C-compiler is called cc

CC = cc

calc: y.tab.o lex.yy.o
	$(CC) -o calc y.tab.o lex.yy.o -ll -lm



lex.yy.o: lex.yy.c y.tab.h

y.tab.c y.tab.h: grammar.y
	$(YACC) -v grammar.y


lex.yy.c: lexer.l
	$(LEX) lexer.l

clean:
	-rm -f *.o lex.yy.c *.tab.*  calc *.output
