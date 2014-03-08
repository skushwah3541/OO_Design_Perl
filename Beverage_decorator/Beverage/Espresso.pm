package Beverage::Espresso;
use Moose;

with 'Beverage';

sub BUILD{
  my $self = shift;
  $self->description('Espresso Coffee');
}

sub cost{
  my $self = shift;
  return 1.99;
}

__PACKAGE__->meta->make_immutable;
1;

