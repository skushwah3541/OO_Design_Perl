use strict;
use warnings;
use PizzaStore::NY;
use PizzaStore::California;

my $ny_pizza_store = PizzaStore::NY->new();
my $cal_pizza_store = PizzaStore::California->new();


my $pizza = $ny_pizza_store->order_pizza('Cheese');

print STDERR "Ethan ordered a ". $pizza->name. "\n\n";

$pizza = $cal_pizza_store->order_pizza('cheese');

print STDERR "Sandeep ordered a ". $pizza->name. "\n";
