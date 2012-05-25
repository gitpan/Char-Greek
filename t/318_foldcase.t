# This file is encoded in Char::Greek.
die "This file is not encoded in Char::Greek.\n" if q{‚ } ne "\x82\xa0";

use Char::Greek;
print "1..30\n";

if (fc('ABCDEF') eq fc('abcdef')) {
    print qq{ok - 1 fc('ABCDEF') eq fc('abcdef')\n};
}
else {
    print qq{not ok - 1 fc('ABCDEF') eq fc('abcdef')\n};
}

if ("\FABCDEF\E" eq "\Fabcdef\E") {
    print qq{ok - 2 "\\FABCDEF\\E" eq "\\Fabcdef\\E"\n};
}
else {
    print qq{not ok - 2 "\\FABCDEF\\E" eq "\\Fabcdef\\E"\n};
}

if ("\FABCDEF\E" =~ /\Fabcdef\E/) {
    print qq{ok - 3 "\\FABCDEF\\E" =~ /\\Fabcdef\\E/\n};
}
else {
    print qq{not ok - 3 "\\FABCDEF\\E" =~ /\\Fabcdef\\E/\n};
}

if ("\Fabcdef\E" =~ /\FABCDEF\E/) {
    print qq{ok - 4 "\\Fabcdef\\E" =~ /\\FABCDEF\\E/\n};
}
else {
    print qq{not ok - 4 "\\Fabcdef\\E" =~ /\\FABCDEF\\E/\n};
}

if ("\FABCDEF\E" =~ /\Fabcdef\E/i) {
    print qq{ok - 5 "\\FABCDEF\\E" =~ /\\Fabcdef\\E/i\n};
}
else {
    print qq{not ok - 5 "\\FABCDEF\\E" =~ /\\Fabcdef\\E/i\n};
}

if ("\Fabcdef\E" =~ /\FABCDEF\E/i) {
    print qq{ok - 6 "\\Fabcdef\\E" =~ /\\FABCDEF\\E/i\n};
}
else {
    print qq{not ok - 6 "\\Fabcdef\\E" =~ /\\FABCDEF\\E/i\n};
}

my $var = 'abcdef';
if ("\FABCDEF\E" =~ /\F$var\E/i) {
    print qq{ok - 7 "\\FABCDEF\\E" =~ /\\F\$var\\E/i\n};
}
else {
    print qq{not ok - 7 "\\FABCDEF\\E" =~ /\\F\$var\\E/i\n};
}

$var = 'ABCDEF';
if ("\Fabcdef\E" =~ /\F$var\E/i) {
    print qq{ok - 8 "\\Fabcdef\\E" =~ /\\F\$var\\E/i\n};
}
else {
    print qq{not ok - 8 "\\Fabcdef\\E" =~ /\\F\$var\\E/i\n};
}

my %fc = ();
@fc{qw(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)} =
    qw(a b c d e f g h i j k l m n o p q r s t u v w x y z);
%fc = (%fc,
    "\xB6" => "\xDC",     # Char::GREEK CAPITAL LETTER ALPHA WITH TONOS --> Char::GREEK SMALL LETTER ALPHA WITH TONOS
    "\xB8" => "\xDD",     # Char::GREEK CAPITAL LETTER EPSILON WITH TONOS --> Char::GREEK SMALL LETTER EPSILON WITH TONOS
    "\xB9" => "\xDE",     # Char::GREEK CAPITAL LETTER ETA WITH TONOS --> Char::GREEK SMALL LETTER ETA WITH TONOS
    "\xBA" => "\xDF",     # Char::GREEK CAPITAL LETTER IOTA WITH TONOS --> Char::GREEK SMALL LETTER IOTA WITH TONOS
    "\xBC" => "\xFC",     # Char::GREEK CAPITAL LETTER OMICRON WITH TONOS --> Char::GREEK SMALL LETTER OMICRON WITH TONOS
    "\xBE" => "\xFD",     # Char::GREEK CAPITAL LETTER UPSILON WITH TONOS --> Char::GREEK SMALL LETTER UPSILON WITH TONOS
    "\xBF" => "\xFE",     # Char::GREEK CAPITAL LETTER OMEGA WITH TONOS --> Char::GREEK SMALL LETTER OMEGA WITH TONOS
    "\xC1" => "\xE1",     # Char::GREEK CAPITAL LETTER ALPHA --> Char::GREEK SMALL LETTER ALPHA
    "\xC2" => "\xE2",     # Char::GREEK CAPITAL LETTER BETA --> Char::GREEK SMALL LETTER BETA
    "\xC3" => "\xE3",     # Char::GREEK CAPITAL LETTER GAMMA --> Char::GREEK SMALL LETTER GAMMA
    "\xC4" => "\xE4",     # Char::GREEK CAPITAL LETTER DELTA --> Char::GREEK SMALL LETTER DELTA
    "\xC5" => "\xE5",     # Char::GREEK CAPITAL LETTER EPSILON --> Char::GREEK SMALL LETTER EPSILON
    "\xC6" => "\xE6",     # Char::GREEK CAPITAL LETTER ZETA --> Char::GREEK SMALL LETTER ZETA
    "\xC7" => "\xE7",     # Char::GREEK CAPITAL LETTER ETA --> Char::GREEK SMALL LETTER ETA
    "\xC8" => "\xE8",     # Char::GREEK CAPITAL LETTER THETA --> Char::GREEK SMALL LETTER THETA
    "\xC9" => "\xE9",     # Char::GREEK CAPITAL LETTER IOTA --> Char::GREEK SMALL LETTER IOTA
    "\xCA" => "\xEA",     # Char::GREEK CAPITAL LETTER KAPPA --> Char::GREEK SMALL LETTER KAPPA
    "\xCB" => "\xEB",     # Char::GREEK CAPITAL LETTER LAMDA --> Char::GREEK SMALL LETTER LAMDA
    "\xCC" => "\xEC",     # Char::GREEK CAPITAL LETTER MU --> Char::GREEK SMALL LETTER MU
    "\xCD" => "\xED",     # Char::GREEK CAPITAL LETTER NU --> Char::GREEK SMALL LETTER NU
    "\xCE" => "\xEE",     # Char::GREEK CAPITAL LETTER XI --> Char::GREEK SMALL LETTER XI
    "\xCF" => "\xEF",     # Char::GREEK CAPITAL LETTER OMICRON --> Char::GREEK SMALL LETTER OMICRON
    "\xD0" => "\xF0",     # Char::GREEK CAPITAL LETTER PI --> Char::GREEK SMALL LETTER PI
    "\xD1" => "\xF1",     # Char::GREEK CAPITAL LETTER RHO --> Char::GREEK SMALL LETTER RHO
    "\xD3" => "\xF3",     # Char::GREEK CAPITAL LETTER SIGMA --> Char::GREEK SMALL LETTER SIGMA
    "\xD4" => "\xF4",     # Char::GREEK CAPITAL LETTER TAU --> Char::GREEK SMALL LETTER TAU
    "\xD5" => "\xF5",     # Char::GREEK CAPITAL LETTER UPSILON --> Char::GREEK SMALL LETTER UPSILON
    "\xD6" => "\xF6",     # Char::GREEK CAPITAL LETTER PHI --> Char::GREEK SMALL LETTER PHI
    "\xD7" => "\xF7",     # Char::GREEK CAPITAL LETTER CHI --> Char::GREEK SMALL LETTER CHI
    "\xD8" => "\xF8",     # Char::GREEK CAPITAL LETTER PSI --> Char::GREEK SMALL LETTER PSI
    "\xD9" => "\xF9",     # Char::GREEK CAPITAL LETTER OMEGA --> Char::GREEK SMALL LETTER OMEGA
    "\xDA" => "\xFA",     # Char::GREEK CAPITAL LETTER IOTA WITH DIALYTIKA --> Char::GREEK SMALL LETTER IOTA WITH DIALYTIKA
    "\xDB" => "\xFB",     # Char::GREEK CAPITAL LETTER UPSILON WITH DIALYTIKA --> Char::GREEK SMALL LETTER UPSILON WITH DIALYTIKA
    "\xF2" => "\xF3",     # Char::GREEK SMALL LETTER FINAL SIGMA --> Char::GREEK SMALL LETTER SIGMA
);
my $before_fc = join "\t",               sort keys %fc;
my $after_fc  = join "\t", map {$fc{$_}} sort keys %fc;

if (fc("$before_fc") eq "$after_fc") {
    print qq{ok - 9 fc("\$before_fc") eq "\$after_fc"\n};
}
else {
    print qq{not ok - 9 fc("\$before_fc") eq "\$after_fc"\n};
}

if (fc("$after_fc") eq "$after_fc") {
    print qq{ok - 10 fc("\$after_fc") eq "\$after_fc"\n};
}
else {
    print qq{not ok - 10 fc("\$after_fc") eq "\$after_fc"\n};
}

if (fc("$before_fc") eq fc("$after_fc")) {
    print qq{ok - 11 fc("\$before_fc") eq fc("\$after_fc")\n};
}
else {
    print qq{not ok - 11 fc("\$before_fc") eq fc("\$after_fc")\n};
}

if ("\F$before_fc\E" eq "$after_fc") {
    print qq{ok - 12 "\\F\$before_fc\\E" eq "\$after_fc"\n};
}
else {
    print qq{not ok - 12 "\\F\$before_fc\\E" eq "\$after_fc"\n};
}

if ("\F$after_fc\E" eq "$after_fc") {
    print qq{ok - 13 "\\F\$after_fc\\E" eq "\$after_fc"\n};
}
else {
    print qq{not ok - 13 "\\F\$after_fc\\E" eq "\$after_fc"\n};
}

if ("\F$before_fc\E" eq "\F$after_fc\E") {
    print qq{ok - 14 "\\F\$before_fc\\E" eq "\\F\$after_fc\\E"\n};
}
else {
    print qq{not ok - 14 "\\F\$before_fc\\E" eq "\\F\$after_fc\\E"\n};
}

if ("$after_fc" =~ /\F$before_fc\E/) {
    print qq{ok - 15 "\$after_fc" =~ /\\F\$before_fc\\E/\n};
}
else {
    print qq{not ok - 15 "\$after_fc" =~ /\\F\$before_fc\\E/\n};
}

if ("$after_fc" =~ /\F$after_fc\E/) {
    print qq{ok - 16 "\$after_fc" =~ /\\F\$after_fc\\E/\n};
}
else {
    print qq{not ok - 16 "\$after_fc" =~ /\\F\$after_fc\\E/\n};
}

if ("\F$before_fc\E" =~ /$after_fc/) {
    print qq{ok - 17 "\\F\$before_fc\\E" =~ /\$after_fc/\n};
}
else {
    print qq{not ok - 17 "\\F\$before_fc\\E" =~ /\$after_fc/\n};
}

if ("\F$before_fc\E" =~ /\F$before_fc\E/) {
    print qq{ok - 18 "\\F\$before_fc\\E" =~ /\\F\$before_fc\\E/\n};
}
else {
    print qq{not ok - 18 "\\F\$before_fc\\E" =~ /\\F\$before_fc\\E/\n};
}

if ("\F$before_fc\E" =~ /\F$after_fc\E/) {
    print qq{ok - 19 "\\F\$before_fc\\E" =~ /\\F\$after_fc\\E/\n};
}
else {
    print qq{not ok - 19 "\\F\$before_fc\\E" =~ /\\F\$after_fc\\E/\n};
}

if ("\F$after_fc\E" =~ /$after_fc/) {
    print qq{ok - 20 "\\F\$after_fc\\E" =~ /\$after_fc/\n};
}
else {
    print qq{not ok - 20 "\\F\$after_fc\\E" =~ /\$after_fc/\n};
}

if ("\F$after_fc\E" =~ /\F$before_fc\E/) {
    print qq{ok - 21 "\\F\$after_fc\\E" =~ /\\F\$before_fc\\E/\n};
}
else {
    print qq{not ok - 21 "\\F\$after_fc\\E" =~ /\\F\$before_fc\\E/\n};
}

if ("\F$after_fc\E" =~ /\F$after_fc\E/) {
    print qq{ok - 22 "\\F\$after_fc\\E" =~ /\\F\$after_fc\\E/\n};
}
else {
    print qq{not ok - 22 "\\F\$after_fc\\E" =~ /\\F\$after_fc\\E/\n};
}

if ("$after_fc" =~ /\F$before_fc\E/i) {
    print qq{ok - 23 "\$after_fc" =~ /\\F\$before_fc\\E/i\n};
}
else {
    print qq{not ok - 23 "\$after_fc" =~ /\\F\$before_fc\\E/i\n};
}

if ("$after_fc" =~ /\F$after_fc\E/i) {
    print qq{ok - 24 "\$after_fc" =~ /\\F\$after_fc\\E/i\n};
}
else {
    print qq{not ok - 24 "\$after_fc" =~ /\\F\$after_fc\\E/i\n};
}

if ("\F$before_fc\E" =~ /$after_fc/i) {
    print qq{ok - 25 "\\F\$before_fc\\E" =~ /\$after_fc/i\n};
}
else {
    print qq{not ok - 25 "\\F\$before_fc\\E" =~ /\$after_fc/i\n};
}

if ("\F$before_fc\E" =~ /\F$before_fc\E/i) {
    print qq{ok - 26 "\\F\$before_fc\\E" =~ /\\F\$before_fc\\E/i\n};
}
else {
    print qq{not ok - 26 "\\F\$before_fc\\E" =~ /\\F\$before_fc\\E/i\n};
}

if ("\F$before_fc\E" =~ /\F$after_fc\E/i) {
    print qq{ok - 27 "\\F\$before_fc\\E" =~ /\\F\$after_fc\\E/i\n};
}
else {
    print qq{not ok - 27 "\\F\$before_fc\\E" =~ /\\F\$after_fc\\E/i\n};
}

if ("\F$after_fc\E" =~ /$after_fc/i) {
    print qq{ok - 28 "\\F\$after_fc\\E" =~ /\$after_fc/i\n};
}
else {
    print qq{not ok - 28 "\\F\$after_fc\\E" =~ /\$after_fc/i\n};
}

if ("\F$after_fc\E" =~ /\F$before_fc\E/i) {
    print qq{ok - 29 "\\F\$after_fc\\E" =~ /\\F\$before_fc\\E/i\n};
}
else {
    print qq{not ok - 29 "\\F\$after_fc\\E" =~ /\\F\$before_fc\\E/i\n};
}

if ("\F$after_fc\E" =~ /\F$after_fc\E/i) {
    print qq{ok - 30 "\\F\$after_fc\\E" =~ /\\F\$after_fc\\E/i\n};
}
else {
    print qq{not ok - 30 "\\F\$after_fc\\E" =~ /\\F\$after_fc\\E/i\n};
}

__END__

