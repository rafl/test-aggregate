#!/usr/bin/perl

use strict;
use warnings;

use lib 'lib', 't/lib';
use Test::Aggregate::Nested;

use Test::More;
plan skip_all => 'Need Test::More::subtest() for this test'
    unless Test::More->can('subtest');

my $tests = Test::Aggregate::Nested->new(
    {   verbose         => 2,
        dirs            => 'aggexception',
    }
);
$tests->run;
