package Command::GarageDoorClose;
use Moose;
with 'Command';
has garage_door => (is => 'rw', isa =>'GarageDoor');

sub execute{
  my $self = shift;
  $self->garage_door->down;
}

sub undo{
  my $self = shift;
  $self->garage_door->up;
}

__PACKAGE__->meta->make_immutable;
1;
