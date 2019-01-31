#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
use feature qw(say);

use Term::ANSIColor;

print color('rgb500');

say "Line $_" for 0..9;

print color('rgb005');

say "Line $_" for 10..19;

print color('reset');
