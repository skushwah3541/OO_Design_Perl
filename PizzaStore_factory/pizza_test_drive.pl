use strict;
use warnings;
use PizzaStore::NYStyle;
use PizzaStore::CaliforniaStyle;

my $ny_pizza_store = PizzaStore::NYStyle->new();
my $cal_pizza_store = PizzaStore::CaliforniaStyle->new();


my $pizza = $ny_pizza_store->order_pizza('Cheese');

print STDERR "Ethan ordered a ". $pizza->name. "\n";

$pizza = $cal_pizza_store->order_pizza('cheese');

print STDERR "Sandeep ordered a ". $pizza->name. "\n";
