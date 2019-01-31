#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

use Data::Dumper;

my $keys_to_add = [ 'k1', 'k3', 'k9', 'k5' ];

my $souce_hash = { k1 => 'v1', k2 => 'v2', k5 => 'v5' };

my $res_hash = {};

@$res_hash{@$keys_to_add} = @$souce_hash{@$keys_to_add};

print "res_hash: @{[Dumper($res_hash)]}\n";
