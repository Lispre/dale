#!/usr/bin/perl

use warnings;
use strict;
my $test_dir = $ENV{"DALE_TEST_DIR"} || ".";
$ENV{PATH} .= ":.";

use Data::Dumper;
use Test::More tests => 4;

my @res = `dalec -O0 $test_dir/t/src/dtm-inc.dt -o ./t.dt.o -c -m ./dtm-inc`;
is_deeply(\@res, [], 'no compilation errors');

@res = `dalec $ENV{"DALE_TEST_ARGS"} $test_dir/t/src/dtm-inc-user.dt -o dtm-inc-user`;
chomp for @res;
is_deeply(\@res, 
          [ ], 
          'no compilation errors');

@res = `./dtm-inc-user`;
is($?, 0, 'Program executed successfully');

chomp for @res;

is_deeply(\@res, 
          [ 'Hello', 'Hello' ],
          'Got expected results');

`rm libdtm-inc.so`;
`rm libdtm-inc-nomacros.so`;
`rm libdtm-inc.dtm`;
`rm libdtm-inc.bc`;
`rm libdtm-inc-nomacros.bc`;
`rm dtm-inc-user`;

1;