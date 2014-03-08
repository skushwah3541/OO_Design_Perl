package GarageDoor;
use Moose;

sub up{
  my $self = shift;
  print STDERR "Garage Door is up!\n";
}

sub down{
  my $self = shift;
  print STDERR "Garage Door is down!\n";
}

__PACKAGE__->meta->make_immutable;
1;
