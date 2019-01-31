#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

print func1() . "\n";

sub func1 {
	my $caller_sub = (caller 1)[3];
	$caller_sub //= "not defined";
	my $msg = "Hey, I'm [func1], and I've been called by [$caller_sub]\n";
	return $msg . func2();
}

sub func2 {
	my $caller_sub = (caller 1)[3];
	my $msg = "Hey, I'm [func2], and I've been called by [$caller_sub]\n";
	return $msg;
}
