#!/usr/bin/perl
use strict;
use warnings;
use feature qw(say);


{
    local $_ = 'helloworld';
    s/(?<=\w)(?=(\w\w\w)+$)/,/gi;
    say;
}

{
    local $_ = "kinbon is so bad";
    s/(?<=kin)(?=bon)/'/ig;
    say;
}

{
    local $_ = "larry_wall 12345678";
    s/(?<=\d)(?=(?:\d\d\d)+$)/_/gi;
    say;
}

{
    local $_ = "larry wall has 19862345 created Perl!";
    s/(\d)(?=(\d\d\d)+(?!\d))/$1_/gi;
    say;
}

{
    local $_ = "larry wall has 19862345 created Perl!";
    s/(\d)((\d\d\d)+\b)/$1_$2/gi;
    say;
}

{
    local $_ = <<EOF;
    larry wall

    jason is good

    i love mae
EOF
    s/^[.\t\r]*$/<p>/gmi;
    say;
}

{
    local $_  = 'root@qq.com';
    m/(\b\w+)\@/;
    say $1;
}

{
    local $_  = 'root@qq.com';
    s/[-a-z0-9]+\@([-a-z0-9]+)\.(com|japan|uk|ua)/$1.$2/i;
    say;
}


{
    local $/ = 0;
    open my $file, "<", "larry_wall" or die $!;
    my $text = <$file>;
    $text =~ s{
        \b
        (^[-\w0-9]+)
        \@
        ([-\w0-9]+)
        \.
        (?:com|us|uk|jp)!
    }{$1-$2}xmig;
    say $text;
}

no warnings;
say chr(0xC0B5);
say chr(48333);
say ord(chr(0xC0B5));
say chr(0x2029);