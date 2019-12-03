#!/usr/bin/perl
use strict;
use warnings;

my $ltotal = 0;
my $ctotal = 0;
my $wtotal = 0;
for my $file (@ARGV) {
    my $l = 0;
    my $c = 0;
    my $w = 0;
    eval {
        open my $filehand, "<", $file or die $!;
        while (<$filehand>) {
            $l += 1;
            $c += length($_);
            my @snippets = split /\s+/, $_;
            $w += scalar(@snippets);
            $ltotal += $l;
            $ctotal += $c;
            $wtotal += $w;
        }
        printf "%s %d %d %d %s\n", $file, $l, $c, $w, "Total";
    };
}
printf "%d %d %d %s\n",, $ltotal, $ctotal, $wtotal, "Total";

