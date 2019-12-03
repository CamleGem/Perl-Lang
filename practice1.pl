use strict;
use warnings;
use Readonly;
use feature qw(say);
use local::lib;

my $x = 100;
print "Hello China ", $x + 42, "\n";

#get version
say local::lib->VERSION();


