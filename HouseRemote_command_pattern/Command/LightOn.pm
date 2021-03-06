package Command::LightOn;
use Moose;
with 'Command';

has light => (is => 'rw', isa => 'Light');

sub execute{
  my $self = shift;
  $self->light->on;
}

sub undo{
  my $self = shift;
  $self->light->off;
}

__PACKAGE__->meta->make_immutable;
1;
