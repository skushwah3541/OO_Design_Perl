package PizzaStore::ChicagoStyle;
use Moose;
with 'PizzaStore';

sub create_pizza{
  my ($self, $type) = @_;
  return Pizza::ChicagoStyle::Cheese->new() if uc($type) eq 'CHEESE';
  return Pizza::ChicagoStyle::Pepperoni->new() if uc($type) eq 'PEPPERONI';
  return Pizza::ChicagoStyle::Clam->new() if uc($type) eq 'CLAM';
  return Pizza::ChicagoStyle::Veggie->new() if uc($type) eq 'VEGGIE';
}

__PACKAGE__->meta->make_immutable;
1;

