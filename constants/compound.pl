#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
use Data::Dumper qw(Dumper);

use constant {
	CONSTANT1 => {
		key1 => 'val1', key2 => 'val2'
	},
	CONSTANT2 => {
		key3 => 'val3', key4 => 'val4'
	},
};
use constant {
	CONSTANT3 => { %{&CONSTANT1}, %{&CONSTANT2} }
};

print Dumper(CONSTANT1) . "\n";
print Dumper(CONSTANT2) . "\n";
print Dumper(CONSTANT3) . "\n";
