use strict;
use warnings;

use TestResult;
use Student;

my @test_results = ();
my @student_ids =map{rand(5)} (1..7);

sub create_score{
  return rand(2);
}

foreach my $student_id (@student_ids){
  my $score = create_score();
  my $result = TestResult->new(
     student_id => $student_id,
     score => $score,
     test_date => '2014-03-01'
  );
  push @test_results, $result;
}


sub final_score{
  my $test_reults = shift;
  
}


