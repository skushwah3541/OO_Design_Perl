use strict;
use warnings;

use Light;
use GarageDoor;
use Stereo;
use CeilingFan;

use Command::LightOff;
use Command::LightOn;
use Command::GarageDoorOpen;
use Command::GarageDoorClose;
use Command::StereoOnWithCD;
use Command::StereoOffWithCD;
use Command::CeilingFan::High;
use Command::CeilingFan::Medium;
use Command::CeilingFan::Low;
use Command::CeilingFan::Off;

use RemoteControl;

use constant {
  LIVING_ROOM_SLOT => 0,
  KITCHEN_SLOT => 1,
  GARAGE_DOOR_SLOT => 2,
  STEREO_SLOT => 3,
  CEILING_FAN_HIGH_SLOT => 4,
  CEILING_FAN_MEDIUM_SLOT => 5,
  CEILING_FAN_LOW_SLOT => 6
};

## Create all the devices in their proper locations
my $living_room_light = Light->new(room => 'Living Room');
my $kitchen_light = Light->new(room => 'Kitchen Room');
my $garage_door = GarageDoor->new;
my $stereo = Stereo->new;
my $ceiling_fan = CeilingFan->new;

## Create all the lights command objects
my $living_room_light_on = Command::LightOn->new(light => $living_room_light);
my $living_room_light_off = Command::LightOff->new(light => $living_room_light);
my $kitchen_light_on = Command::LightOn->new(light => $kitchen_light);
my $kitchen_light_off = Command::LightOff->new(light => $kitchen_light);

## Create up and down commands for the garage
my $garage_door_up = Command::GarageDoorOpen->new(garage_door => $garage_door);
my $garage_door_down = Command::GarageDoorClose->new(garage_door => $garage_door);

## Create Stereo On and off commands;
my $stereo_on = Command::StereoOnWithCD->new(stereo => $stereo);
my $stereo_off = Command::StereoOffWithCD->new(stereo => $stereo);

## Create Ceiling Fan Speed Commands;

my $ceiling_fan_high = Command::CeilingFan::High->new(ceiling_fan => $ceiling_fan);
my $ceiling_fan_medium = Command::CeilingFan::Medium->new(ceiling_fan => $ceiling_fan);
my $ceiling_fan_low = Command::CeilingFan::Low->new(ceiling_fan=> $ceiling_fan);
my $ceiling_fan_off = Command::CeilingFan::Off->new(ceiling_fan => $ceiling_fan);

## Load commands in remote slots

my $remote_control = RemoteControl->new();
$remote_control->set_command(LIVING_ROOM_SLOT, $living_room_light_on, $living_room_light_off);
$remote_control->set_command(KITCHEN_SLOT, $kitchen_light_on, $kitchen_light_off);
$remote_control->set_command(GARAGE_DOOR_SLOT, $garage_door_up, $garage_door_down);
$remote_control->set_command(STEREO_SLOT, $stereo_on, $stereo_off);

$remote_control->set_command(CEILING_FAN_HIGH_SLOT, $ceiling_fan_high, $ceiling_fan_off);
$remote_control->set_command(CEILING_FAN_MEDIUM_SLOT, $ceiling_fan_medium, $ceiling_fan_off);
$remote_control->set_command(CEILING_FAN_LOW_SLOT, $ceiling_fan_low, $ceiling_fan_off);

print STDERR "$remote_control";


## Lets push on & off buttons

$remote_control->on_button_pushed(LIVING_ROOM_SLOT);
$remote_control->off_button_pushed(LIVING_ROOM_SLOT);
$remote_control->undo_button_pushed;

$remote_control->on_button_pushed(KITCHEN_SLOT);
$remote_control->off_button_pushed(KITCHEN_SLOT);

$remote_control->on_button_pushed(GARAGE_DOOR_SLOT);
$remote_control->off_button_pushed(GARAGE_DOOR_SLOT);

$remote_control->on_button_pushed(STEREO_SLOT);
$remote_control->off_button_pushed(STEREO_SLOT);
$remote_control->undo_button_pushed;

$remote_control->on_button_pushed(CEILING_FAN_MEDIUM_SLOT);
$remote_control->off_button_pushed(CEILING_FAN_MEDIUM_SLOT);
$remote_control->undo_button_pushed;

$remote_control->on_button_pushed(CEILING_FAN_HIGH_SLOT);
$remote_control->on_button_pushed(CEILING_FAN_LOW_SLOT);
$remote_control->undo_button_pushed;

#lets on all slots
$remote_control->on;
#lets off specific slot
$remote_control->off_button_pushed(KITCHEN_SLOT);
#lets off all slots.
$remote_control->off;
