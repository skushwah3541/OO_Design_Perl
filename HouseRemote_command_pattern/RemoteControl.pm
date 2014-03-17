package RemoteControl;
use Moose;
use Command::Null;

use overload '""' => 'as_string', fallback => 1;

has on_commands => (
  is => 'rw',
  isa => 'ArrayRef[Command]',
  traits => ['Array'],
  default => sub{[]},
  handles =>{
    add_on_command => 'push',
    get_on_command => 'get',
    all_on_commands => 'elements',
    count_on_commands => 'count'
  },
);

has off_commands => (
  is => 'rw',
  isa => 'ArrayRef[Command]',
  traits => ['Array'],
  default => sub{[]},
  handles =>{
    add_off_command => 'push',
    get_off_command => 'get',
    all_off_commands => 'elements',
    count_off_commands => 'count'
  },
);

has undo_command => (is => 'rw', isa =>'Command');

sub BUILD{
  my $self = shift;
  #initialize on and off commands to on
  for (0..6){
    $self->add_on_command(Command::Null->new);
    $self->add_off_command(Command::Null->new);
  }
  $self->undo_command(Command::Null->new);
}

sub set_command{
  my ($self, $slot, $on_command, $off_command) = @_;
  $self->on_commands->[$slot]= $on_command;
  $self->off_commands->[$slot] = $off_command;
}

sub on_button_pushed{
  my ($self, $slot) = @_;
  my $command = $self->get_on_command($slot);
  $command->execute();
  $self->undo_command($command);
}

sub off_button_pushed{
  my ($self, $slot) = @_;
  my $command = $self->get_off_command($slot);
  $command->execute();
  $self->undo_command($command);
}

sub undo_button_pushed{
  my $self = shift;
  $self->undo_command->undo;
}


sub on{
  my $self = shift;
  $_->execute for $self->all_on_commands;
}

sub off{
  my $self = shift;
  $_->execute for $self->all_off_commands;
}

sub as_string{
  my $self = shift;
  my $string = "\n-----Remote Control----\n";
  for (my $i = 0; $i < $self->count_off_commands; $i++){
    $string .= "[slot $i] ". ref($self->get_on_command($i)). '   '. ref($self->get_off_command($i))."\n";
  }
  return $string;
}

__PACKAGE__->meta->make_immutable;
1;
