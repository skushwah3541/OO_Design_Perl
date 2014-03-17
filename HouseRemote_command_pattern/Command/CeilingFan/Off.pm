package Command::CeilingFan::Off;
use Moose;
extends 'Command::CeilingFan';


override 'execute' => sub{
  my $self = shift;
  super();
  $self->ceiling_fan->off;
};

__PACKAGE__->meta->make_immutable;
1;
