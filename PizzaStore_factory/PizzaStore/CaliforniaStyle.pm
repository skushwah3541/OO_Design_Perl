package PizzaStore::CaliforniaStyle;
use Moose;
use Class::Load qw(load_class);
with 'PizzaStore';

sub create_pizza{
  my ($self, $type) = @_;
  $type =~ s/(.)/\u\L$1/;
  my $class = __PACKAGE__.'::'.$type;
  my $pizza = load_class($class);
  return $pizza->new();
}

__PACKAGE__->meta->make_immutable;
1;

