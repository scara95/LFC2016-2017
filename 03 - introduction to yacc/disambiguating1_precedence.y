/*
	author Lorenzo Gramola
	on the precedence of operators, example 1

	NOTE: This time we give operators two different precedence
	what does happen if we have E + E * E

*/

%token id
%left '+'
%left '*'

%%

E 	:		E '+' E
	|		E '*' E
	|		id
	;
