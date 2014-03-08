package QuackBehavior::Squeak;
use Moose;
with 'QuackBehavior';

sub quack{
  my $self = shift;
  print STDERR "rubber duckie squeak\n";
}
__PACKAGE__->meta->make_immutable;
1;
