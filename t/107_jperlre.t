# This file is encoded in Char::Greek.
die "This file is not encoded in Char::Greek.\n" if q{あ} ne "\x82\xa0";

use Char::Greek;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('あいあいう' =~ /(あいう)/) {
    if ("$1" eq "あいう") {
        print "ok - 1 $^X $__FILE__ ('あいあいう' =~ /あいう/).\n";
    }
    else {
        print "not ok - 1 $^X $__FILE__ ('あいあいう' =~ /あいう/).\n";
    }
}
else {
    print "not ok - 1 $^X $__FILE__ ('あいあいう' =~ /あいう/).\n";
}

__END__
