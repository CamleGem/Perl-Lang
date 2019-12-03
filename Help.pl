#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long;
use Pod::Usage;
use FindBin qw($Bin);
use lib $Bin;
use Greet;


# pod2usage() unless GetOptions('help|h' => sub { pod2usage(-exitval => 0)}) and @ARGV;
greet();

__END__

=head1 NAME foo - Do some foo

=head1 SYNOPSIS foo [-h|--help] NAME...

=head1 DESCRIPTION The B<foo> tool is powerfool. :)

=head1 OPTIONS

=over

=item B<-h>|B<--help> Output this short help

=back



