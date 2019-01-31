#!usr/bin/perl
use strict;
use warnings FATAL => 'all';

use Data::Dumper;

my $h1 = {
	key1 => 'val1',
	key2 => ['val2', 'val2'],
	key3 => {key31 => 'val31', key32 => 'val32'}
};

my $h2 = {
	key1 => 'val1',
	key21 => ['val21', 'val22'],
	key2 => ['val2', 'val2'],
	key3 => {nana => 'lalala'},
	key4 => 'val4',
	asdf => 'asdf'
};

my @keys = grep {
	my $k1 = $_;
	if (grep { $k1 eq $_ } keys %$h1) {
		0;
	} else {
		1;
	}

} keys %$h2;

print Dumper(\@keys) . "\n";
