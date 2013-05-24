#!/usr/bin/perl

use warnings;
use strict;
my $test_dir = $ENV{"DALE_TEST_DIR"} || ".";
$ENV{PATH} .= ":.";

use Data::Dumper;
use Test::More tests => 3;

my @res = `dalec $ENV{"DALE_TEST_ARGS"} $test_dir/t/src/namespace-nested.dt -o namespace-nested  `;
is(@res, 0, 'No compilation errors');

@res = `./namespace-nested`;
is($?, 0, 'Program executed successfully');

chomp for @res;

is_deeply(\@res, [ 
    '0 1 2 3 4'
], 'Got expected results');

`rm namespace-nested`;

1;