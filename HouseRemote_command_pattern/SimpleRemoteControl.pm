package SimpleRemoteControl;
use Moose;

## set this slot with the command we will get at the time of instantiation.
has command =>(is => 'rw', isa => 'Command');

sub button_was_pressed{
  my $self = shift;
  $self->command->execute;
}


__PACKAGE__->meta->make_immutable;
1;
