use strict;
use warnings;

use Beverage::DarkRoast;
use Beverage::HouseBlend;
use Beverage::Espresso;
use Beverage::CondimentDecorator::Mocha;
use Beverage::CondimentDecorator::Whip;
use Beverage::CondimentDecorator::Soy;

my $beverage = Beverage::Espresso->new();

print $beverage->description. ' $'. $beverage->cost;
print "\n";

my $beverage2 = Beverage::DarkRoast->new(size=> 'Tall');
$beverage2 = Beverage::CondimentDecorator::Mocha->new(beverage => $beverage2);
$beverage2 = Beverage::CondimentDecorator::Mocha->new(beverage => $beverage2);
$beverage2 = Beverage::CondimentDecorator::Whip->new(beverage => $beverage2);

print print $beverage2->description. ' $'. $beverage2->cost;
print "\n";

my $beverage_2 = Beverage::DarkRoast->new();
$beverage_2 = Beverage::CondimentDecorator::Mocha->new(beverage => $beverage_2);
$beverage_2 = Beverage::CondimentDecorator::Mocha->new(beverage => $beverage_2);
$beverage_2 = Beverage::CondimentDecorator::Whip->new(beverage => $beverage_2);

print print $beverage_2->description. ' $'. $beverage_2->cost;
print "\n";


my $beverage3 = Beverage::HouseBlend->new();
$beverage3 = Beverage::CondimentDecorator::Soy->new(beverage => $beverage3);
$beverage3 = Beverage::CondimentDecorator::Mocha->new(beverage => $beverage3);
$beverage3 = Beverage::CondimentDecorator::Whip->new(beverage => $beverage3);

print print $beverage3->description. ' $'. $beverage3->cost;
print "\n";
