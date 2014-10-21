# This file is encoded in Char::Greek.
die "This file is not encoded in Char::Greek.\n" if q{��} ne "\x82\xa0";

use strict;
use Char::Greek;
print "1..3\n";

my $__FILE__ = __FILE__;

if("\x0A" =~ /\R/){
    print qq{ok - 1 "\\x0A" =~ /\\R/ $^X $__FILE__\n};
}
else{
    print qq{not ok - 1 "\\x0A" =~ /\\R/ $^X $__FILE__\n};
}

if("\x0D" =~ /\R/){
    print qq{ok - 2 "\\x0D" =~ /\\R/ $^X $__FILE__\n};
}
else{
    print qq{not ok - 2 "\\x0D" =~ /\\R/ $^X $__FILE__\n};
}

if("\x0D\x0A" =~ /\R/){
    print qq{ok - 3 "\\x0D\\x0A" =~ /\\R/ $^X $__FILE__\n};
}
else{
    print qq{not ok - 3 "\\x0D\\x0A" =~ /\\R/ $^X $__FILE__\n};
}

__END__
