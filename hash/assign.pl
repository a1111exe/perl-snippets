#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

use Data::Dumper qw(Dumper);

my $params_ref = [
	'kk1'
];

my $source_ref = {
	k1 => {
		kk1 => 'vv1'
	}
};

my $result_ref = {};

@$result_ref{@$params_ref} = @{$source_ref->{k1}}{@$params_ref};

print Dumper($result_ref);
