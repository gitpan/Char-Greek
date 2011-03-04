# This file is encoded in Char::Greek.
die "This file is not encoded in Char::Greek.\n" if q{‚ } ne "\x82\xa0";

use strict;
use Char::Greek;

my $__FILE__ = __FILE__;

my %lc = ();
@lc{qw(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)} =
    qw(a b c d e f g h i j k l m n o p q r s t u v w x y z);
%lc = (%lc,
    "\xB6" => "\xDC", # Char::GREEK LETTER ALPHA WITH TONOS
    "\xB8" => "\xDD", # Char::GREEK LETTER EPSILON WITH TONOS
    "\xB9" => "\xDE", # Char::GREEK LETTER ETA WITH TONOS
    "\xBA" => "\xDF", # Char::GREEK LETTER IOTA WITH TONOS
    "\xBC" => "\xFC", # Char::GREEK LETTER OMICRON WITH TONOS
    "\xBE" => "\xFD", # Char::GREEK LETTER UPSILON WITH TONOS
    "\xBF" => "\xFE", # Char::GREEK LETTER OMEGA WITH TONOS
    "\xC1" => "\xE1", # Char::GREEK LETTER ALPHA
    "\xC2" => "\xE2", # Char::GREEK LETTER BETA
    "\xC3" => "\xE3", # Char::GREEK LETTER GAMMA
    "\xC4" => "\xE4", # Char::GREEK LETTER DELTA
    "\xC5" => "\xE5", # Char::GREEK LETTER EPSILON
    "\xC6" => "\xE6", # Char::GREEK LETTER ZETA
    "\xC7" => "\xE7", # Char::GREEK LETTER ETA
    "\xC8" => "\xE8", # Char::GREEK LETTER THETA
    "\xC9" => "\xE9", # Char::GREEK LETTER IOTA
    "\xCA" => "\xEA", # Char::GREEK LETTER KAPPA
    "\xCB" => "\xEB", # Char::GREEK LETTER LAMDA
    "\xCC" => "\xEC", # Char::GREEK LETTER MU
    "\xCD" => "\xED", # Char::GREEK LETTER NU
    "\xCE" => "\xEE", # Char::GREEK LETTER XI
    "\xCF" => "\xEF", # Char::GREEK LETTER OMICRON
    "\xD0" => "\xF0", # Char::GREEK LETTER PI
    "\xD1" => "\xF1", # Char::GREEK LETTER RHO
    "\xD3" => "\xF3", # Char::GREEK LETTER SIGMA
    "\xD4" => "\xF4", # Char::GREEK LETTER TAU
    "\xD5" => "\xF5", # Char::GREEK LETTER UPSILON
    "\xD6" => "\xF6", # Char::GREEK LETTER PHI
    "\xD7" => "\xF7", # Char::GREEK LETTER CHI
    "\xD8" => "\xF8", # Char::GREEK LETTER PSI
    "\xD9" => "\xF9", # Char::GREEK LETTER OMEGA
    "\xDA" => "\xFA", # Char::GREEK LETTER IOTA WITH DIALYTIKA
    "\xDB" => "\xFB", # Char::GREEK LETTER UPSILON WITH DIALYTIKA
);

printf("1..%d\n", scalar(keys %lc));

my $tno = 1;
for my $char (sort keys %lc){
    if (lc($char) eq $lc{$char}) {
        printf(qq{ok - $tno lc("\\x%02X") eq "\\x%02X" $^X $__FILE__\n}, ord($char), ord($lc{$char}));
    }
    else {
        printf(qq{not ok - $tno lc("\\x%02X") eq "\\x%02X" $^X $__FILE__\n}, ord($char), ord($lc{$char}));
    }
    $tno++;
}

__END__
