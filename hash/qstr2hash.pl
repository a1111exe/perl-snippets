#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

use Data::Dumper qw(Dumper);

my $h1 = qstr2hash('k1=v1&k2=v2&k3=v3');
my $h2 = qstr2hash('k1=v1&k2=v2&k3=v3&');
my $h3 = qstr2hash('&k1=v1&k2=v2&k3=v3');
my $h4 = qstr2hash('&k1=v1&k2=v2&k3=v3&');
my $h5 = qstr2hash('v0&k1=v1&k2=v2&k3=v3&v4');
my $h6 = qstr2hash('=v0&k1=v1&k2=v2&k3=v3&k4=');
my $h7 = qstr2hash('k1=&k2=');
my $h8 = qstr2hash('asdf');
my $h9 = qstr2hash('=asdf&');
my $h10 = qstr2hash('&asdf=');

sub qstr2hash {
	my ($qstr) = @_;

	print "QSTR: $qstr\n";

	my %hash;
	eval {
		%hash = map { my ($key, $val) = split /=/; $key => $val } split /&/, $qstr;
	};
	if (my $err = $@) {
		print "ERROR: $err\n";
	}

	print "HASH: @{[Dumper(\%hash)]}\n";

	return \%hash;
}
