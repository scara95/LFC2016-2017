/*
	author Lorenzo Gramola
	on the precedence of operators, example 1

	NOTE: we give + and * the very same precedence, but we are telling the parser that they are left associative
	no conflict this time BUT THEY HAVE THE SAME PRECEDENCE, WHICH IS NOT WHAT WE REALLY WANT

	if we have E + E * E we do not obtain what we want

*/

%token id
%left '+' '*'
%%

E 	:		E '+' E
	|		E '*' E
	|		id
	;
