package Command::LightOff;
use Moose;
with 'Command';

has light => (is => 'rw');

sub execute{
  my $self = shift;
  $self->light->off;
}

sub undo{
  my $self = shift;
  $self->light->on;
}

__PACKAGE__->meta->make_immutable;
1;
