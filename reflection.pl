#!/usr/bin/perl
use strict;
use warnings;
use lib '/Users/liuyang/PycharmProjects/Perlhouse';
use Reflection;
use feature qw(say);




__END__
my @array = qw(2 3 4);
my @array2 = qw(1 5 2);
my %hash;
my @odd;
my @even;
for (@array2) {
    push @even, $_  if $_ % 2;
    push @odd, $_ if not $_ % 2;
}

say "@even" if @even == 1;
say "@odd" if @odd == 1;

say map { "$_ => $hash{$_}\n" } keys %hash;



__END__
say  scalar localtime(time());
say  localtime(time()) . "\n";

my @array = qw(fred larry wall perl);

say 5 * (1 + 2);
splice @array, 2, 0, 'ruby';

say  "@array";



__END__
print FH "hello world!\n";
# while (1) {
#     my $input = <STDIN>;
#     last if $input eq $Testing;
# }
# my $obj = Get->new;
# $obj->set('larry');
# say $obj->get;


