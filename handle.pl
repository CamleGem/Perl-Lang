#!/usr/bin/perl
use strict;
use warnings;
use Fcntl;
use IO::Handle;
no strict qw(subs);

sysopen(FH, 'larry_wall', O_WRONLY|O_CREAT) or die $!;
print FH "hello world!";

sysopen(FILE, "JOKER.txt", O_RDONLY|O_CREAT) or die $!;
print <FILE>;

sysopen(KING, "LARRY", O_WRONLY|O_CREAT|O_APPEND) or die $!;
print KING "I LOVE PERL!";
print KING "I LOVE PERL!\n";



