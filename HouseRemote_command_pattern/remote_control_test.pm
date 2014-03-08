use strict;
use warnings;

use Light::LivingRoom;
use Command::LightOn;
use SimpleRemoteControl;

use Command::GarageDoorOpen;
use GarageDoor;


my $light_on = Command::LightOn->new(light => Light::LivingRoom->new);
my $remote = SimpleRemoteControl->new(command => $light_on);
$remote->button_was_pressed;

my $garage_door_open = Command::GarageDoorOpen->new(garage_door => GarageDoor->new);
$remote->command($garage_door_open);
$remote->button_was_pressed;
