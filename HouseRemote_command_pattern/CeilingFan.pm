package CeilingFan;
use Moose;

use constant {
  HIGH => 3,
  MEDIUM => 2,
  LOW => 1,
  OFF => 0
};

has speed => (is =>'rw');

sub BUILD{
  my $self = shift;
  $self->speed(OFF);
}

sub high{
  my $self = shift;
  $self->speed(HIGH);
  print STDERR "Ceiling fan is at high speed\n";
}

sub medium{
  my $self = shift;
  $self->speed(MEDIUM);
  print STDERR "Ceiling fan is at medium speed\n";
}

sub low{
  my $self = shift;
  $self->speed(LOW);
  print STDERR "Ceiling fan is at low speed\n";
}

sub off{
  my $self = shift;
  $self->speed(OFF);
  print STDERR "Ceiling fan is off\n";
}

__PACKAGE__->meta->make_immutable;
1;
