#!/usr/bin/perl
use strict;
use warnings;
use utf8;
use feature qw(say);
use File::Basename;

my $string = "/home/yang/file";
say basename($string);
say dirname($string);



