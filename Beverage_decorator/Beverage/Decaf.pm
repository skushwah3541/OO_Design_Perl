package Beverage::Decaf;
use Moose;

with 'Beverage';

sub BUILD{
  my $self = shift;
  $self->description('Decaf Coffee');
}

sub cost{
  my $self = shift;
  return 1.05;
}

__PACKAGE__->meta->make_immutable;
1;

