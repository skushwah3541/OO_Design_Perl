use strict;
use warnings;

use Duck::Mallard;
use Duck::Model;
use FlyBehavior::RocketPowered;

my $mallard = Duck::Mallard->new();
$mallard->perform_quack;
$mallard->perform_fly;

my $model = Duck::Model->new();
$model->perform_fly;
$model->fly_behavior(FlyBehavior::RocketPowered->new);
$model->perform_fly;
