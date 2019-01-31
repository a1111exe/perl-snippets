#!/bin/env perl
# Syntax and Data (RU)
# https://sphere.mail.ru/materials/video/398/
#
# Some great reading:
#
# The Scalar Range Operator
# https://www.perlmonks.org/?node_id=377450
#
# Behavior of Flip-Flop Operators
# https://www.perlmonks.org/?node_id=1164447
#
# Flipin good, or a total flop?
# https://www.perlmonks.org/?node_id=525392
#
use strict;
# use warnings FATAL => 'all';
# use diagnostics;
use feature 'say';

my $divider = '=' x 80;

for $. (1..5) {
	say "$. : " . (2..4);
}

say $divider;

# This code requires to unFATAL warnings
# TODO why
for $. (1..5) {
	print "$. : ";
	do {
		print "L, ret @{[$. == 2 ? 'T' : 'F']}";
		$. == 2;
	} .. do {
		print "R, ret @{[$. == 4 ? 'T' : 'F']}";
		$. == 4;
	};
	say " : " . (2..4);
}

say $divider;

# This code requires to unFATAL warnings
# TODO why
for $. (1..5) {
	print "$. : ";
	do {
		print "L, ret @{[$. == 2 ? 'T' : 'F']}";
		$. == 2;
	} ... do {
		print "R, ret @{[$. == 4 ? 'T' : 'F']}";
		$. == 4;
	};
	say " : " . (2..4);
}
