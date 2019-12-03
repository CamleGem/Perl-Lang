#!/usr/bin/perl
use strict;
use warnings ;
use File::Find;
use feature qw(say);
use Data::Dumper;

my %h_files = ();
sub what_to_do {
    $h_files{$_} = -s $_;
}

my @files =  q(/Users/liuyang/PycharmProjects/Perlhouse);

find(\&what_to_do, @files);

no warnings qw(uninitialized);
say map { "date: " . localtime((stat($_))[-3]) . " $_ => $h_files{$_}\n" }
    sort { $h_files{$a} <=> $h_files{$b} }
        grep { m/.pl$/} keys %h_files;
