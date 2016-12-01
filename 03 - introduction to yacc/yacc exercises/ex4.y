

%token AND CART HORSE GOAT OX PLOW
%%

phrase 	: cart_animal AND CART
		| work_animal AND PLOW;

cart_animal : HORSE | GOAT;
work_animal : HORSE | OX;
