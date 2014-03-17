package Light;
use Moose;

has room => (is => 'rw');

sub on{
  my $self = shift;
  print STDERR $self->room." light is on\n";
}

sub off{
  my $self = shift;
  print STDERR $self->room." light is off\n";
}

1;
