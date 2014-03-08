package Command::Null;
use Moose;
with 'Command';

sub execute{};
sub undo{};

__PACKAGE__->meta->make_immutable;
1;
