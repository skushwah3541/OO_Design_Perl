package Duck;
use Moose::Role;

has fly_behavior   => ( is => 'rw', isa => 'FlyBehavior' );
has quack_behavior => ( is => 'rw', isa => 'QuackBehavior' );

requires 'display';
sub perform_quack {
    my $self = shift;
    $self->quack_behavior->quack();
}

sub swim {
    my $self = shift;
    print STDERR "Duck is swiming\n";
}

sub perform_fly {
    my $self = shift;
    $self->fly_behavior->fly();
}

1;
