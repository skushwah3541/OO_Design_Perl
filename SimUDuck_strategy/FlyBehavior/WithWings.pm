package FlyBehavior::WithWings;
use Moose;
with 'FlyBehavior';

sub fly {
    my $self = shift;
    print STDERR "Duck is flying\n";
}
__PACKAGE__->meta->make_immutable;
1;
