package Command::StereoOnWithCD;
use Moose;
with 'Command';

has stereo => (is => 'rw');

sub execute{
  my $self = shift;
  $self->stereo->on;
  $self->stereo->set_cd;
  $self->stereo->set_volume;
}

sub undo{
  my $self = shift;
  $self->stereo->off;
}

__PACKAGE__->meta->make_immutable;
1;
