use strict;
use warnings;

use WeatherStation;
use Subject::WeatherData;
use Display::CurrentCondition;

my $weather_data = Subject::WeatherData->new();

my $current_display = Display::CurrentCondition->new(id => 1, weather_data => $weather_data);

$weather_data->weather_station(WeatherStation->new(temperature => 80, humidity => 65, pressure=>'30.4f'));


