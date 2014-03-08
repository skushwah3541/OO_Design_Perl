package Student;
use Moose;

has id => (is => 'rw');
has scores => (
  is => 'rw',
  traits => ['Array'],
  isa => 'ArrayRef[TestResult]',
  default => sub{[]},
  handles =>{
    all_scores => 'elements',
    add_score => 'push',
    get_score => 'get',
    count_scores => 'count'
  }
);

sub final_score{
  my $self = shift;
  
  my @sorted_scores = sort{$b->score <=> $a->score}$self->all_scores;
  ## Assume you will atleast get 5 scores
  my @highest_5_scores = splice(@sorted_scores,0,5);
  my $total = 0;
  $total += $_->score for @highest_5_scores;
  return $total/5; 
}

__PACKAGE__->meta->make_immutable;
1;
