package Beverage::CondimentDecorator::Soy;
use Moose;
with 'Beverage::CondimentDecorator';

sub BUILD{
  my $self = shift;
  $self->description($self->beverage->description. ', Soy');
}

sub cost{
  my $self = shift;
  return $self->beverage->cost + .15;
}

__PACKAGE__->meta->make_immutable;
1;

