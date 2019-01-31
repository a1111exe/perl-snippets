#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

use Data::Dumper qw(Dumper);

my $test = {
	key1 => {}
};

my $params = [ 'p1', 'p2', 'p3' ];

@{$$test{key1}}{@$params} = map {
		{
			key1 => 'default1',
			key2 => 'default2'
		}
	} @$params;

print Dumper($test) . "\n";
