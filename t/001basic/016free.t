#!/usr/bin/perl

use warnings;
use strict;
my $test_dir = $ENV{"DALE_TEST_DIR"} || ".";
$ENV{PATH} .= ":.";

use Data::Dumper;
use Test::More tests => 3;

my @res = `dalec $ENV{"DALE_TEST_ARGS"} $test_dir/t/src/free.dt -o free`;
is(@res, 0, 'No compilation errors');

@res = `./free`;
is($?, 0, 'Program executed successfully');

chomp for @res;

is_deeply(\@res, [ '0 1 99', '0' ], 'Got expected results');

`rm free`;

1;