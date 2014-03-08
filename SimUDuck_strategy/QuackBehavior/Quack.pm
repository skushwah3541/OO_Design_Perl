package QuackBehavior::Quack;
use Moose;
with 'QuackBehavior';

sub quack{
  my $self = shift;
  print STDERR "Duck quacking...\n";
}

__PACKAGE__->meta->make_immutable;
1;
