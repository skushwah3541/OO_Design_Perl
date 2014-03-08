package PizzaStore::NYStyle::Cheese;
use Moose;

extends 'Pizza';

sub BUILD{
  my $self = shift;
  $self->name('NY Style sauce and cheese pizza');
  $self->dough('Thin crust Dough');
  $self->sauce('Marinara Sauce');
  $self->add_topping('Grated Reggiano Cheese');
}

__PACKAGE__->meta->make_immutable;
1;

