package Command::CeilingFan::Low;
use Moose;
extends 'Command::CeilingFan';


override 'execute' => sub{
  my $self = shift;
  super();
  $self->ceiling_fan->low;
};

__PACKAGE__->meta->make_immutable;
1;
