package Beverage::HouseBlend;
use Moose;

with 'Beverage';

sub BUILD{
  my $self = shift;
  $self->description('House Blend Coffee');
}

sub cost{
  my $self = shift;
  return .89;
}

__PACKAGE__->meta->make_immutable;
1;
