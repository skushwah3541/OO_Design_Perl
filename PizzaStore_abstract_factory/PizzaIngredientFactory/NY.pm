package PizzaIngredientFactory::NY;
use Moose;
with 'PizzaIngredientFactory';

use Ingredient::ThinCrustDough;
use Ingredient::MarinaraSauce;
use Ingredient::ReggianoCheese;
use Ingredient::Garlic;
use Ingredient::Onion;
use Ingredient::Mushroom;
use Ingredient::RedPepper;
use Ingredient::SlicedPepperoni;
use Ingredient::FreshClams;

sub create_dough{
  my $self = shift;
  return Ingredient::ThinCrustDough->new;
}

sub create_sauce{
  my $self = shift;
  return Ingredient::MarinaraSauce->new;
}

sub create_cheese{
  my $self = shift;
  return Ingredient::ReggianoCheese->new;
}

sub create_veggies{
  my $self = shift;
  return [Ingredient::Garlic->new, Ingredient::Onion->new, Ingredient::Mushroom->new, Ingredient::RedPepper->new];
}

sub create_pepperoni{
  my $self = shift;
  return Ingredient::SlicedPepperoni->new;
}

sub create_clam{
  my $self = shift;
  return Ingredient::FreshClams->new;
}

__PACKAGE__->meta->make_immutable;
1;
