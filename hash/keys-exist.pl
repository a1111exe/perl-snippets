#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

use Data::Dumper qw(Dumper);

my $hashref = {
	key1 => 'val1',
	key2 => 'val2',
	key9 => 'val9',
};

my @keys_to_check = ('key1', 'key2', 'key3', 'key4');

my @exist;
my @not_exist;

for (@keys_to_check) {
	push @exist, $_
		if exists $$hashref{$_};
	push @not_exist, $_
		unless exists $$hashref{$_};
}

print "EXIST: @exist\n";
print "NOT EXIST: @not_exist\n";
