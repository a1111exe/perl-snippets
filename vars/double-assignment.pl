#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;

my $thashref1 = {
	'key00' => 'val00',
	'key01' => 'val01'
};

my $thashref2 = {
	'key10' => 'val10',
	'key11' => 'val11'

};

my $theball = 'theball';

($thashref1->{'key00'}, $thashref2->{'key11'}) = ($theball, $theball);

print "thashref1: " . Dumper($thashref1) . "\n";
print "thashref2: " . Dumper($thashref2) . "\n";
print "theball: " . Dumper($theball) . "\n";
