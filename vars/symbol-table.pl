#!/usr/bin/perl
#
# Of Symbol Tables and Globs
# https://www.perlmonks.org/?node_id=211441
#
# Assigning to the CODE slot of a GLOB whose REF is held in a lexical?
# https://www.perlmonks.org/?node_id=408048
#
use strict;
use warnings FATAL => 'all';
use feature 'say';

use Data::Dumper qw(Dumper);

{
	package My::Package;
	our $var = 500;
	our @var = (1, 2, 3);
	our %func = (k1 => 'v1', k2 => 'v2');
	sub func { return 'hello' }

	*func = \"TEST";

	*var = sub { return "I'M SUB" };
	*var = { K1 => 'V1', K2 => 'V2' };
}

eval {
	*My::Package::func = ['e1', 'e2', 'e3'];
	
	say Dumper \%My::Package::;
	
	say ${*My::Package::var};
	say $My::Package::var;
	
	say @{*My::Package::var};
	say @My::Package::var;
	
	say "bla";
	say %{*My::Package::var{HASH}};
	
	say &{*My::Package::var{CODE}};
	
	say %{*My::Package::func};
	say %My::Package::func;
	
	say &{*My::Package::func};
	say &My::Package::func;
	
	say @{*My::Package::func};
	say $My::Package::func;
};
if (my $err = $@) {
	say $err;
}
