package MimicDuck;
use Moose;
use QuackBehavior::Quack;

has quack_behavior => (is => 'rw', isa=>'QuackBehavior');

sub BUILD{
  my $self = shift;
  $self->quack_behavior(QuackBehavior::Quack->new);
}

sub perform_quack{
  my $self = shift;
  $self->quack_behavior->quack;
}
__PACKAGE__->meta->make_immutable;
1;
