#!/usr/bin/perl
use strict;
use warnings;

package First {
    sub first {
        return 'hello'
    }
}

package Second {
    sub second {
        return "world"
    }
}

package Three {
    our @ISA = qw(First Second);
    sub three {
        return  Three->first, " ",  Three->second
    }
}


print Three->three