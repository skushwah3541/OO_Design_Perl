package Beverage::DarkRoast;
use Moose;
with 'Beverage';


sub BUILD{
  my $self = shift;
  $self->description('Dark Roast Coffee');
}

sub cost{
  my $self = shift;
  return .99;
}

__PACKAGE__->meta->make_immutable;
1;

