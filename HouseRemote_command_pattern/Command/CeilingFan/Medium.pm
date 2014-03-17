package Command::CeilingFan::Medium;
use Moose;
extends 'Command::CeilingFan';


override 'execute' => sub{
  my $self = shift;
  super();
  $self->ceiling_fan->medium;
};

__PACKAGE__->meta->make_immutable;
1;
