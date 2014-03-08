package Duck::Mallard;
use Moose;
with 'Duck';
use QuackBehavior::Quack;
use FlyBehavior::WithWings;

sub BUILD {
    my $self = shift;
    $self->quack_behavior( QuackBehavior::Quack->new() );
    $self->fly_behavior( FlyBehavior::WithWings->new() );
}

sub display {
    my $self = shift;
    print STDERR "I'm a real Mallard duck\n";
  }
  __PACKAGE__->meta->make_immutable;
1;
