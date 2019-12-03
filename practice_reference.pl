#!/usr/bin/perl
use strict;
use warnings;
use feature qw(say);

my %family = (
    larry => 100,
    wall  => 200,
    perl  => [(5.28, 5.29)],
);

say $family{perl}[0];

use autodie qw(open);

open my $file, '<', 'password';
my %user_info;
while(<$file>) {
    chomp;
    my ($user, $password) = split / /;
    $user_info{$user} = $password;
}

say map { "$_ => $user_info{$_}\n" } keys %user_info;

require Data::Dumper;
say Data::Dumper::Dumper([\%user_info]);

my $ar_info = [{%user_info}];

say map { "$_ => $user_info{$_}\n" } sort { $a cmp $b  } keys %{$ar_info->[0]};
