#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

use Data::Dumper;

my @arr = (
	['v11', 'v12', 'v13'],
	['v21', 'v22'],
	['v31']
);

sub cartesian {
	my ($arr) = @_;
	my @result = ();
	my $i = 0;
	for my $values (@$arr) {
		unless (scalar @$values) {
			next;
		}
		unless (scalar @result) {
			for my $value (@$values) {
				push @result, [$value];
			}
		} else {
			my @append = ();
			for my $product (@result) {
				$product->[$i] = shift @$values;
				my @copy = @$product;
				for my $item (@$values) {
					$copy[$i] = $item;
					push @append, \@copy;
				}
				unshift @$values, $product->[$i];
			}
			my @merge = (@result, @append);
			@result = @merge;
		}

	} continue {
		++$i;
	}
	return \@result;
}

my $cmb = cartesian(\@arr);

print Dumper($cmb) . "\n";
