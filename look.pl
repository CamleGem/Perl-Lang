#!/usr/bin/perl
use strict;
use warnings;
use feature qw(say);
use utf8;
say ord(0x4E00);

say chr(49);
say chr(0X4E01);


my $string;
open FILE, "<", 'password' or die "can not open the file:$!";

$string = *FILE;

say $string;

say <$string>
