#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
use diagnostics;
use feature 'say';

sub context {
	my $context = wantarray;
	say defined $context
		? $context
			? 'list'
			: 'scalar'
		: 'void';
	return 0;
}

my @list_slice = (1, 2, 3)[context()];
my @array_slice = @list_slice[context()];
my $array_index = $array_slice[context()];

say context(); # list context

context(); # void context
