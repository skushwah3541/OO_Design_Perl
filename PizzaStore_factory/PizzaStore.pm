package PizzaStore;
use Moose::Role;

requires 'create_pizza';

sub order_pizza{
  my ($self, $type) = @_;
  my $pizza = $self->create_pizza($type);
  $pizza->prepare();
  $pizza->bake();
  $pizza->cut();
  $pizza->box();
  return $pizza;
}

1;
