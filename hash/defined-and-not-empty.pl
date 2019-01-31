#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

my %test = (
	k1 => 'v1',
	k2 => 'v2',
);

my $ok = $test{k1} && $test{k2} && $test{k3};

my $hehey = $test{k1} && $test{k2};

print $ok ? "OK\n" : "NOT OK\n";

print $hehey ? "HEHEY\n" : "NOT HEHEY\n";
