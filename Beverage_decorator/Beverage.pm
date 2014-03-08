package Beverage;
use Moose::Role;
use Moose::Util::TypeConstraints;

has description => (is => 'rw', default => 'Unknown Beverage');
has size =>(is => 'ro', isa => enum([qw[Tall Grande Venti]]));
requires 'cost';

1;
