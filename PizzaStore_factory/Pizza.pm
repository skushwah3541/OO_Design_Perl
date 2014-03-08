package Pizza;
use Moose;

has name => (is => 'rw');
has sauce => (is => 'rw');
has dough => (is => 'rw');
has toppings => (
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

sub prepare{
  my $self = shift;
  print STDERR 'Preparing '.$self->name. "\n";
  print STDERR "Tossing Dough...\n";
  print STDERR "Adding sauce...\n";
  print STDERR "Adding toppings...\n";
  foreach my $topping($self->all_toppings){
    print STDERR "  ".$topping."\n";
  }
}

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

__PACKAGE__->meta->make_immutable;
1;
