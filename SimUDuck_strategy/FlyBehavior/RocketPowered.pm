package FlyBehavior::RocketPowered;
use Moose;

with 'FlyBehavior';

sub fly{
  my $self = shift;
  print STDERR "I'm flying with a rocket!\n";
}

__PACKAGE__->meta->make_immutable;
1;
