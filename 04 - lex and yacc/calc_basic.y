/** calculator calc.y
 * origin source by Tom Niemann at epaperpress.com/lexandyacc
 * revision Lorenzo Massimo Gramola (2014)
 * revision Lorenzo Massimo Gramola (2015)
 * revision Lorenzo Massimo Gramola (2016)
 */

%{
    #include <stdio.h>
    int yylex(void);
    void yyerror(char *);
%}

%token INTEGER VARIABLE

%{
    void yyerror(char *);
    int yylex(void);
%}

%left '-' '+'
%%


program:
        expr '\n'                 {printf("%d\n", $1);}
        |
        ;

expr:
        INTEGER
        | expr '+' expr           { $$ = $1 + $3; }
        | expr '-' expr           { $$ = $1 - $3; }
        ;

%%

void yyerror(char *s) {
    fprintf(stderr, "%s\n", s);
}

int main(void) {
    yyparse();
    return 0;
}
