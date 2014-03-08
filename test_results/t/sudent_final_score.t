use strict;
use warnings;
use Test::More tests=> 3;
use_ok('TestResult');
use_ok('Student');

my $student = Student->new();

$student->add_score(TestResult->new(student_id => 1, test_date => '2014-03-01', score => 60));

$student->add_score(TestResult->new(student_id => 1, test_date => '2014-03-01', score => 54));

$student->add_score(TestResult->new(student_id => 1, test_date => '2014-03-01', score => 99));

$student->add_score(TestResult->new(student_id => 1, test_date => '2014-03-01', score => 99.97));

$student->add_score(TestResult->new(student_id => 1, test_date => '2014-03-01', score => 56));

$student->add_score(TestResult->new(student_id => 1, test_date => '2014-03-01', score => 80));

$student->add_score(TestResult->new(student_id => 1, test_date => '2014-03-01', score => 54));

my $final_score = $student->final_score;

is $final_score,78.994,'Final score is correct';
