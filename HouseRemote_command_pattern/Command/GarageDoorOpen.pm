package Command::GarageDoorOpen;
use Moose;
with 'Command';
has garage_door => (is => 'rw', isa =>'GarageDoor');

sub execute{
  my $self = shift;
  $self->garage_door->up;
}

sub undo{
  my $self = shift;
  $self->garage_door->down;
}

__PACKAGE__->meta->make_immutable;
1;
