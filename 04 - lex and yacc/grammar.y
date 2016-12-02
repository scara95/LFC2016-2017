%{
    #include <stdio.h>
    int yylex(void);
    void yyerror(char *);
%}

%token NUMBER
%left '+' '-'

%%

 p: expr '\n' p       {printf("reduced\n");}
  | /*empty*/
  ;

expr : NUMBER
      | expr '+' expr
      | expr '-' expr
      ;

%%

void yyerror(char * s){
  fprintf(stderr, "%s\n",s);
}
int main(void){
  yyparse();
  return 0;
}
