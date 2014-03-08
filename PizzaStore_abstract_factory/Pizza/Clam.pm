package Pizza::Clam;
use Moose;
with 'Pizza';

sub prepare{
  my $self = shift;
  print STDERR 'Preparing '. $self->name. "\n";
  my $ingredient_factory = $self->ingredient_factory;
  $self->dough($ingredient_factory->create_dough);
  $self->sauce($ingredient_factory->create_sauce);
  $self->cheese($ingredient_factory->create_cheese);
  $self->clam($ingredient_factory->create_clam);
}

__PACKAGE__->meta->make_immutable;
1;
