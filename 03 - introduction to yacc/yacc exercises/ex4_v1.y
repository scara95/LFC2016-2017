

%token AND CART HORSE GOAT OX PLOW
%%

phrase 	: cart_animal CART
		| work_animal PLOW;

cart_animal : HORSE | GOAT;
work_animal : HORSE | OX;
