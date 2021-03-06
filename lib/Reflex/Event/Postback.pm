package Reflex::Event::Postback;

use Moose;
extends 'Reflex::Event';

has context => (
	is       => 'ro',
	isa      => 'HashRef[Any]',
	required => 1,
);

has response => (
	is       => 'ro',
	isa      => 'ArrayRef[Any]',
	required => 1,
);

__PACKAGE__->make_event_cloner;
__PACKAGE__->meta->make_immutable;

1;
