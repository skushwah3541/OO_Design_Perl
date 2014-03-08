package Pizza;
use Moose::Role;

has name => (is => 'rw', isa => 'Str');
has sauce => (is => 'rw');
has dough => (is => 'rw');
has veggies => (
  is => 'rw',
  isa => 'ArrayRef',
  traits => ['Array'],
  handles =>{
    add_topping => 'push',
    get_topping => 'get',
    has_topping => 'count',
    all_toppings => 'elements',
    count_toppings => 'count'
  }
);

has cheese => (is => 'rw');
has pepperoni => (is => 'rw');
has clam => (is => 'rw');
has ingredient_factory => (is => 'rw');

requires 'prepare';

sub bake{
  my $self = shift;
  print STDERR "Bake for 25 minutes at 350\n";
}

sub cut{
  my $self = shift;
  print STDERR "Cutting the pizza into diagonal slices\n";
}

sub box{
  my $self = shift;
  print STDERR "Place pizza in official PizzaStore box\n";
}

1;
