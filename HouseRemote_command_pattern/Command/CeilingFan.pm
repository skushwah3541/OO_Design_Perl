package Command::CeilingFan;
use Moose;
use CeilingFan;
with 'Command';

has prev_speed =>(is => 'rw');
has ceiling_fan =>(is=>'rw', isa =>'CeilingFan');

sub execute{
  my $self = shift;
  $self->prev_speed($self->ceiling_fan->speed);
  ## Set speed in respective commands
}


sub undo{
  my $self = shift;
  if ($self->prev_speed == CeilingFan->HIGH){
    $self->ceiling_fan->high;
  }
  elsif($self->prev_speed == CeilingFan->MEDIUM){
    $self->ceiling_fan->medium;
  }
  elsif($self->prev_speed == CeilingFan->LOW){
    $self->ceiling_fan->low;
  }
  elsif($self->prev_speed == CeilingFan->OFF){
    $self->ceiling_fan->off;
  }
}
__PACKAGE__->meta->make_immutable;
1;
