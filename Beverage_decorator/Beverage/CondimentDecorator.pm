package Beverage::CondimentDecorator;
use Moose::Role;

with 'Beverage';

has beverage => (is => 'rw', isa=>'Beverage');
has rate_per_size => (is => 'rw', isa => 'HashRef', default=>sub{{}});
1;
