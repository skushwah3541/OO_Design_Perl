package Display::CurrentCondition;
use Moose;
with qw(Observer Display);

has id =>(is => 'rw');
has weather_data => (is => 'rw', isa => 'Subject');
has temperature => (is => 'rw');
has humidity => (is => 'rw');
has pressure => (is => 'rw');

sub BUILD{
  my $self = shift;
  $self->weather_data->subscribe($self);
}

sub update{
  my ($self,$temp, $hum, $pressure) =@_;
  $self->temperature($temp);
  $self->humidity($hum);
  $self->pressure($pressure);
  $self->display();
}

sub display{
  my $self = shift;
  printf("Current conditions: %.2fF degrees and %02d humidity", $self->temperature, $self->humidity);
  print "\n";
}
__PACKAGE__->meta->make_immutable;
1;
