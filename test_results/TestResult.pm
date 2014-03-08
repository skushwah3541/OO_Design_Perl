package TestResult;
use Moose;

has test_date => (is => 'rw');
has student_id => (is => 'rw');
has score => (is => 'rw');

__PACKAGE__->meta->make_immutable;
1;
