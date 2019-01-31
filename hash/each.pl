#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

use Data::Dumper;

my $href = {
	key1 => { key11 => 'val11', key12 => 'val12' },
	key2 => { key21 => 'val21', key22 => 'val22' }
};

keys %$href;
while (my ($key, $val) = each %$href) {
	print "Key: $key, val: " . Dumper($val) . "\n";
}
