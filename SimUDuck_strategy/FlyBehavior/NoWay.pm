package FlyBehavior::NoWay;
use Moose;

with 'FlyBehavior';

sub fly {
    my $self = shift;
    print STDERR "Sorry! You can't fly\n";
}
__PACKAGE__->meta->make_immutable;
1;
