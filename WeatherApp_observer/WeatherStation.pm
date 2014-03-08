package WeatherStation;
use Moose;

has temperature =>(is => 'rw');
has humidity => (is => 'rw');
has pressure => (is => 'rw');
__PACKAGE__->meta->make_immutable;
1;
