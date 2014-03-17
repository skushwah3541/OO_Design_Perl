package Light::LivingRoom;
use Moose;
extends 'Light';

sub on{
  my $self = shift;
  print STDERR "Living Room Light is on\n";
}

sub off{
  my $self = shift;
  print STDERR "Living Room light is off\n";
}

__PACKAGE__->meta->make_immutable;
1;
