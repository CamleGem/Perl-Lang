#!/usr/bin/perl
use strict;
use warnings;

use feature qw(say);
use v5.14;
# use if $ENV{DEBUG} => "Smart::Comments";

use FindBin qw($Bin);
use lib $Bin;
use Greet;
say ref Greet->new('larry');


# print Greet::date();
#
# exit 0;




# my %family = (
#     larry => 100,
#     wall  => 200,
#     perl  => [(5.28, 5.29)],
# );



__END__
sub new {
    &second();
}

new(1,2);

sub second {
    print "@_";
}





