# This file is encoded in Char::Greek.
die "This file is not encoded in Char::Greek.\n" if q{‚ } ne "\x82\xa0";

use strict;
use Char::Greek;

my $__FILE__ = __FILE__;

my %uc = ();
@uc{qw(a b c d e f g h i j k l m n o p q r s t u v w x y z)} =
    qw(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z);
%uc = (%uc,
    "\xDC" => "\xB6", # Char::GREEK LETTER ALPHA WITH TONOS
    "\xDD" => "\xB8", # Char::GREEK LETTER EPSILON WITH TONOS
    "\xDE" => "\xB9", # Char::GREEK LETTER ETA WITH TONOS
    "\xDF" => "\xBA", # Char::GREEK LETTER IOTA WITH TONOS
    "\xE1" => "\xC1", # Char::GREEK LETTER ALPHA
    "\xE2" => "\xC2", # Char::GREEK LETTER BETA
    "\xE3" => "\xC3", # Char::GREEK LETTER GAMMA
    "\xE4" => "\xC4", # Char::GREEK LETTER DELTA
    "\xE5" => "\xC5", # Char::GREEK LETTER EPSILON
    "\xE6" => "\xC6", # Char::GREEK LETTER ZETA
    "\xE7" => "\xC7", # Char::GREEK LETTER ETA
    "\xE8" => "\xC8", # Char::GREEK LETTER THETA
    "\xE9" => "\xC9", # Char::GREEK LETTER IOTA
    "\xEA" => "\xCA", # Char::GREEK LETTER KAPPA
    "\xEB" => "\xCB", # Char::GREEK LETTER LAMDA
    "\xEC" => "\xCC", # Char::GREEK LETTER MU
    "\xED" => "\xCD", # Char::GREEK LETTER NU
    "\xEE" => "\xCE", # Char::GREEK LETTER XI
    "\xEF" => "\xCF", # Char::GREEK LETTER OMICRON
    "\xF0" => "\xD0", # Char::GREEK LETTER PI
    "\xF1" => "\xD1", # Char::GREEK LETTER RHO
    "\xF3" => "\xD3", # Char::GREEK LETTER SIGMA
    "\xF4" => "\xD4", # Char::GREEK LETTER TAU
    "\xF5" => "\xD5", # Char::GREEK LETTER UPSILON
    "\xF6" => "\xD6", # Char::GREEK LETTER PHI
    "\xF7" => "\xD7", # Char::GREEK LETTER CHI
    "\xF8" => "\xD8", # Char::GREEK LETTER PSI
    "\xF9" => "\xD9", # Char::GREEK LETTER OMEGA
    "\xFA" => "\xDA", # Char::GREEK LETTER IOTA WITH DIALYTIKA
    "\xFB" => "\xDB", # Char::GREEK LETTER UPSILON WITH DIALYTIKA
    "\xFC" => "\xBC", # Char::GREEK LETTER OMICRON WITH TONOS
    "\xFD" => "\xBE", # Char::GREEK LETTER UPSILON WITH TONOS
    "\xFE" => "\xBF", # Char::GREEK LETTER OMEGA WITH TONOS
);

printf("1..%d\n", scalar(keys %uc));

my $tno = 1;
for my $char (sort keys %uc){
    if (uc($char) eq $uc{$char}) {
        printf(qq{ok - $tno uc("\\x%02X") eq "\\x%02X" $^X $__FILE__\n}, ord($char), ord($uc{$char}));
    }
    else {
        printf(qq{not ok - $tno uc("\\x%02X") eq "\\x%02X" $^X $__FILE__\n}, ord($char), ord($uc{$char}));
    }
    $tno++;
}

__END__
