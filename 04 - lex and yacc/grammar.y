%{
    #include <stdio.h>
    int yylex(void);
    void yyerror(char *);
%}

%token NUMBER
%left '+' '-'

%%

 p: expr '\n' p       { printf("%d\n", $1);}
  | /*empty*/
  ;

expr : NUMBER
      | expr '+' expr   {$$=$1+$3;}
      | expr '-' expr   {$$=$1-$3;}
      ;

%%

void yyerror(char * s){
  fprintf(stderr, "%s\n",s);
}
int main(void){
  yyparse();
  return 0;
}
