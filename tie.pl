#!/usr/bin/perl
use strict;
use warnings;
use DB_File;
use feature qw(say);

tie my %hash => 'DB_File', 'data_dbm';
say  "invocation: ", ++$hash{user};
say  "invocation: ", ++$hash{user};

package Scalar::Persist {
    use Modern::Perl;

    sub TIESCALAR {
        my ($class, $file) = @_;
        open my $fh, "+>>", $file or die $!;
        $fh->autoflush(1);
        bless \$fh, $class;
    }

    sub FETCH {
        my $self = shift;
        $$self->seek(0, 0) or die $!;
        local $/ = undef;
        $$self->getline;
    }

    sub STORE {
        my $self = shift;
        my $value = shift;
        $$self->truncate(0) or die $!;
        $$self->print($value);
    }


    sub DESTROY {
        my $self = shift;
        say "Good Bye!";
        $$self->close() or die $!;
    }

    tie my $foo => 'Scalar::Persist', 'larry_wall';
    say "Used: ", ++$foo;
    say "invocation: ", ++$foo;
}

