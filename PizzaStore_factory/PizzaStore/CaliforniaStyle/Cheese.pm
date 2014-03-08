package PizzaStore::CaliforniaStyle::Cheese;
use Moose;

extends 'Pizza';

sub BUILD{
  my $self = shift;
  $self->name('California Style Deep Dish Cheese Pizza');
  $self->dough('Extra Thin crust Dough');
  $self->sauce('Plum Tomato Sauce');
  $self->add_topping('Shredded Mozzarella Cheese');
}

override 'cut' =>sub {
  my $self = shift;
  print STDERR "Cutting the pizza into square slices\n";
};

__PACKAGE__->meta->make_immutable;
1;

