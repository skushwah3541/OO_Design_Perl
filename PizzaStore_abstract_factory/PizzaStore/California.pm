package PizzaStore::California;
use Moose;
use Class::Load qw(load_class);
with 'PizzaStore';

use PizzaIngredientFactory::California;

sub create_pizza{
  my ($self, $type) = @_;
  my $ingredient_factory = PizzaIngredientFactory::California->new;
  $type=~s/(.)/\u\L$1/;
  my $class = 'Pizza::'.$type;
  my $pizza_name = "California Style $type Pizza";
  my $pizza = load_class($class);
  return $pizza->new(name => $pizza_name, ingredient_factory => $ingredient_factory);
}
__PACKAGE__->meta->make_immutable;
1;

