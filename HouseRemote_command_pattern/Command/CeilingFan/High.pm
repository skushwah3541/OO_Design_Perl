package Command::CeilingFan::High;
use Moose;
extends 'Command::CeilingFan';


override 'execute' => sub{
  my $self = shift;
  super();
  $self->ceiling_fan->high;
};

__PACKAGE__->meta->make_immutable;
1;
