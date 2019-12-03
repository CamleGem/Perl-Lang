#!/usr/bin/perl
use strict;
use warnings;
use v5.14;
use feature qw(signatures say);
no warnings qw(experimental::signatures);
no warnings qw(experimental);

my $input = *STDIN{IO};

open my $output, '>', 'output_file' or die $!;
select $output;
say "i love mae very much!";

# given (<$input>) {
#     when ( /kinbon/x  ) { say "kinbon not so good!"  }
#     when ( /mae  /x   ) { say 'i love mae very much!'}
# }

