#!/usr/bin/perl
use strict;
use warnings;
use feature qw(say);
use Data::Dumper;

say Dumper [map { [1, /(a)/] } qw(fred larry wall)];

