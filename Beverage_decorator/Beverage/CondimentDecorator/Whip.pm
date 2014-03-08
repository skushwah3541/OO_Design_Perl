package Beverage::CondimentDecorator::Whip;
use Moose;
with 'Beverage::CondimentDecorator';

sub BUILD{
  my $self = shift;
  $self->description($self->beverage->description. ', Whip');
}

sub cost{
  my $self = shift;
  return $self->beverage->cost + .10;
}

__PACKAGE__->meta->make_immutable;
1;

