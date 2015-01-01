# This file is encoded in Char::Greek.
die "This file is not encoded in Char::Greek.\n" if q{ } ne "\x82\xa0";

use Char::Greek;

print "1..12\n";

# Char::Greek::eval qq{...} has Char::Greek::eval "..."
if (Char::Greek::eval qq{ Char::Greek::eval " if ('้ม' =~ /[แ]/i) { return 1 } else { return 0 } " }) {
    print qq{ok - 1 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 1 $^X @{[__FILE__]}\n};
}

# Char::Greek::eval qq{...} has Char::Greek::eval qq{...}
if (Char::Greek::eval qq{ Char::Greek::eval qq{ if ('้ม' =~ /[แ]/i) { return 1 } else { return 0 } } }) {
    print qq{ok - 2 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 2 $^X @{[__FILE__]}\n};
}

# Char::Greek::eval qq{...} has Char::Greek::eval '...'
if (Char::Greek::eval qq{ Char::Greek::eval ' if (qq{้ม} =~ /[แ]/i) { return 1 } else { return 0 } ' }) {
    print qq{ok - 3 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 3 $^X @{[__FILE__]}\n};
}

# Char::Greek::eval qq{...} has Char::Greek::eval q{...}
if (Char::Greek::eval qq{ Char::Greek::eval q{ if ('้ม' =~ /[แ]/i) { return 1 } else { return 0 } } }) {
    print qq{ok - 4 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 4 $^X @{[__FILE__]}\n};
}

# Char::Greek::eval qq{...} has Char::Greek::eval $var
my $var = q{q{ if ('้ม' =~ /[แ]/i) { return 1 } else { return 0 } }};
if (Char::Greek::eval qq{ Char::Greek::eval $var }) {
    print qq{ok - 5 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 5 $^X @{[__FILE__]}\n};
}

# Char::Greek::eval qq{...} has Char::Greek::eval (omit)
$_ = "if ('้ม' =~ /[แ]/i) { return 1 } else { return 0 }";
if (Char::Greek::eval qq{ Char::Greek::eval }) {
    print qq{ok - 6 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 6 $^X @{[__FILE__]}\n};
}

# Char::Greek::eval qq{...} has Char::Greek::eval {...}
if (Char::Greek::eval qq{ Char::Greek::eval { if ('้ม' =~ /[แ]/i) { return 1 } else { return 0 } } }) {
    print qq{ok - 7 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 7 $^X @{[__FILE__]}\n};
}

# Char::Greek::eval qq{...} has "..."
if (Char::Greek::eval qq{ if ('้ม' =~ /[แ]/i) { return "1" } else { return "0" } }) {
    print qq{ok - 8 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 8 $^X @{[__FILE__]}\n};
}

# Char::Greek::eval qq{...} has qq{...}
if (Char::Greek::eval qq{ if ('้ม' =~ /[แ]/i) { return qq{1} } else { return qq{0} } }) {
    print qq{ok - 9 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 9 $^X @{[__FILE__]}\n};
}

# Char::Greek::eval qq{...} has '...'
if (Char::Greek::eval qq{ if ('้ม' =~ /[แ]/i) { return '1' } else { return '0' } }) {
    print qq{ok - 10 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 10 $^X @{[__FILE__]}\n};
}

# Char::Greek::eval qq{...} has q{...}
if (Char::Greek::eval qq{ if ('้ม' =~ /[แ]/i) { return q{1} } else { return q{0} } }) {
    print qq{ok - 11 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 11 $^X @{[__FILE__]}\n};
}

# Char::Greek::eval qq{...} has $var
my $var1 = 1;
my $var0 = 0;
if (Char::Greek::eval qq{ if ('้ม' =~ /[แ]/i) { return $var1 } else { return $var0 } }) {
    print qq{ok - 12 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 12 $^X @{[__FILE__]}\n};
}

__END__
