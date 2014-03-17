package Stereo;
use Moose;

sub on{
  my $self = shift;
  print STDERR "Stereo is on\n";
}

sub off{
  my $self = shift;
  print STDERR "Stereo is off\n";
}

sub set_cd{
  my $self = shift;
  print STDERR "Stereo has set CD\n";
}

sub set_volume{
  my $self = shift;
  print STDERR "Volume of Stereo is set\n";
}

__PACKAGE__->meta->make_immutable;
1;
