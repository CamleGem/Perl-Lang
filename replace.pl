#!/usr/bin/perl
use strict;
use warnings;
use feature qw(say);

my $from = shift @ARGV;
my $to = shift @ARGV;
# die "Usage error!" if @ARGV <= 3;
foreach my $file (@ARGV) {
    open my $fh, '+<', $file or die "can not open the file!:$!";
    my $begin = <$fh>;
    chomp $begin;
    next if $begin ne "#!/usr/bin/perl" or $begin ne "#!/usr/bin/perl";
    seek($fh, 0, 0);
    truncate($fh, 0);
    say $fh $to;
    close($fh) or die "can not close the file!:$!";
}
