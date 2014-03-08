package Subject::WeatherData;
use Moose;
with 'Subject';

has weather_station =>(
  is => 'rw',
  isa => 'WeatherStation',
  trigger => \&notify
);
sub subscribe{
  my ($self, $observer) = @_;
  $self->add_subscriber($observer);
}

sub unsubscribe{
  my ($self, $observer) = @_;
  my $index = $self->subscriber_index(sub{$_->id == $observer->id});
  $self->remove_subscriber($index);
}

sub notify{
  my $self = shift;
  foreach my $subscriber ($self->all_subscribers){
    $subscriber->update($self->weather_station->temperature,$self->weather_station->humidity, $self->weather_station->pressure);
  }
}
__PACKAGE__->meta->make_immutable;
1;
