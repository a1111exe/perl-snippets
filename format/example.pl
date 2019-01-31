#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

my $name = 'Jhon Doe';
my $age = 00;
my $message = 'Hello world';
my $number = 234.48;

format HELLO =
============================
@<<<<<<<<<<<<<<<<<<<<<< @<<
$name, $age
@#####.##
$number
@||||||||||||||||||||||||||
$message
============================
.

select STDOUT;

local $~ = 'HELLO';

write();
