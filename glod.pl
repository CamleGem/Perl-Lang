#!/usr/bin/perl
use strict;
use warnings;
use FindBin qw($Bin);
/Users/liuyang/PycharmProjects/Perlhouse;

open my $file, "+<",  glob"~/PycharmProjects/Perlhouse/larry_wall"
    or die "can not open the file:$!";
print <$file>;

