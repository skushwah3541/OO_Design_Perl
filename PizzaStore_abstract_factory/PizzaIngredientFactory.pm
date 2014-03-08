package PizzaIngredientFactory;
use Moose::Role;

requires 'create_dough';
requires 'create_sauce';
requires 'create_cheese';
requires 'create_veggies';
requires 'create_pepperoni';
requires 'create_clam';

1;

