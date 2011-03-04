# This file is encoded in Char::Greek.
die "This file is not encoded in Char::Greek.\n" if q{あ} ne "\x82\xa0";

use Char::Greek;
print "1..1\n";

my $__FILE__ = __FILE__;

$a = "アソア";
if ($a !~ s/(アイ|イウ)//) {
    print qq{ok - 1 "アソア" !~ s/(アイ|イウ)// \$1=() $^X $__FILE__\n};
}
else {
    print qq{not ok - 1 "アソア" !~ s/(アイ|イウ)// \$1=($1) $^X $__FILE__\n};
}

__END__
