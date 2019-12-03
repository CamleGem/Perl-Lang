#!/usr/bin/perl
use strict;
use warnings;
use feature qw(say);
use English;

{
    local $_ = "string";
    print "\tmatched\n"
        if m/s/i;
}

{
    local $_ = 'yabba dabba doo';
    say $1 if m/y((.)(.)\3\2) d\1/;

}