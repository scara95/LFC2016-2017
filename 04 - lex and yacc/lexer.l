%{
  //lex + yacc
  #include "y.tab.h"
  #include <stdio.h>
  void yyerror(char *);
%}

%%

[0-9]+        {
          yylval = atoi(yytext);
        return NUMBER;

}
[-+\n]       {return *yytext;}
.            yyerror("Unknown char");


%%

int yywrap(void){
  return 1;
}
