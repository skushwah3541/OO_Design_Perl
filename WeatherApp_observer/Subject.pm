package Subject;
use Moose::Role;

has subscribers => (
  is => 'rw',
  isa => 'ArrayRef',
  traits => ['Array'],
  handles => {
    all_subscribers => 'elements',
    add_subscriber => 'push',
    get_subscriber  => 'get',
    count_subscriber => 'count',
    remove_subscriber => 'delete',
    subscriber_index => 'first_index'
  }
);

requires 'subscribe';
requires 'unsubscribe';
requires 'notify';

1;
