package PizzaIngredientFactory::California_old;
use Moose;

use Ingredient::ThickCrustDough;
use Ingredient::PlumTomatoSauce;
use Ingredient::MozzarellaCheese;
use Ingredient::Spinach;
use Ingredient::EggPlant;
use Ingredient::BlackOlives;
use Ingredient::SlicedPepperoni;
use Ingredient::FrozenClams;

with 'PizzaIngredientFactory';

sub create_dough{
  my $self = shift;
  return Ingredient::ThickCrustDough->new;
}

sub create_sauce{
  my $self = shift;
  return Ingredient::PlumTomatoSauce->new;
}

sub create_cheese{
  my $self = shift;
  return Ingredient::MozzarellaCheese->new;
}

sub create_veggies{
  my $self = shift;
  return [Ingredient::Spinach->new, Ingredient::EggPlant->new, Ingredient::BlackOlives->new];
}

sub create_pepperoni{
  my $self = shift;
  return Ingredient::SlicedPepperoni->new;
}

sub create_clam{
  my $self = shift;
  return Ingredient::FrozenClams->new;
}

__PACKAGE__->meta->make_immutable;
1;
