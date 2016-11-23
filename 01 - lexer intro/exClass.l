%{
  int sum = 0;
%}
%%
([1-9][0-9]*)|0   {sum+=atoi(yytext);}
%%

int main(){
  yylex();
  printf("sum = %d\n",sum);
}
