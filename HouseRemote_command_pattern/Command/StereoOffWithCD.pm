package Command::StereoOffWithCD;
use Moose;
with 'Command';

has stereo => (is => 'rw');

sub execute{
  my $self = shift;
  $self->stereo->off;
}

sub undo{
  my $self = shift;
  $self->stereo->on;
}

__PACKAGE__->meta->make_immutable;
1;
