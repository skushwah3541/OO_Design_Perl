package Beverage::CondimentDecorator::Mocha;
use Moose;
with 'Beverage::CondimentDecorator';

use constant RATE_PER_SIZE => {'TALL' => .10, 'GRANDE' => .15, 'VENTI' => .20};
sub BUILD{
  my $self = shift;
  $self->description($self->beverage->description. ', Mocha');
  $self->rate_per_size(RATE_PER_SIZE);
}

sub cost{
  my $self = shift;
  my $cost = $self->beverage->size ? $self->rate_per_size->{uc($self->beverage->size)} : .20; 
  return $self->beverage->cost + $cost;
}
 
__PACKAGE__->meta->make_immutable;
1;
