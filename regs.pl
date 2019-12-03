#!/usr/bin/perl
use strict;
use warnings;
use IO::Prompt;
use lib q{/Users/liuyang/PycharmProjects/Perlhouse};
use Hello;

__END__
# while(<STDIN>) {
#     chomp;
#     print "\tMatched!\n"
#         if /fred/i;
# }

# CMD:
# while (my $cmd = prompt "cmd: ") {
#     chomp $cmd;
#     last CMD if $cmd =~ m/\A (?: q(?:uit)? | bye ) \z/xms;
# }

sub timing {
    wantarray ? localtime : localtime;
}

my @s = timing;
print "@s\n";
my $s = timing;
print "$s\n";


{


    # local $\ = ":";
    # my @array = (1..6);
    # print join "$,", @array;

    local $SIG{__WARN__} = sub {
        print "hello world!\n";
    };




}







