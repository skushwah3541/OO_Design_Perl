package Duck::Model;
use Moose;
with 'Duck';

use FlyBehavior::NoWay;
use QuackBehavior::Quack;

sub BUILD{
  my $self = shift;
  $self->fly_behavior(FlyBehavior::NoWay->new);
  $self->quack_behavior(QuackBehavior::Quack->new);
}

sub display{
  my $self = shift;
  print STDERR "I'm a model duck\n";
}

__PACKAGE__->meta->make_immutable;
1;
