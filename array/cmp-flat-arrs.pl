#!/usr/bin/perl
use strict;
use warnings;

my @expected = ('ABC', 'CDE', 'HKD', 'TCP');

my @received1 = ('ABC', 'CDE', 'HKD', 'TCP');

my @received2 = ('HKD', 'ABC', 'TCP', 'CDE');

my @received3 = ('HKD', 'NKM', 'TCP', 'ABC', 'CDE');

my $result1 = (join '', sort @expected) eq (join '', sort @received1);
my $result2 = (join '', sort @expected) eq (join '', sort @received2);
my $result3 = (join '', sort @expected) eq (join '', sort @received3);

print $result1 . "\n";
print $result2 . "\n";
print $result3 . "\n";
