# This file is encoded in Char::Greek.
die "This file is not encoded in Char::Greek.\n" if q{��} ne "\x82\xa0";

use Char::Greek;

print "1..12\n";

my $var = '';

# Char::Greek::eval $var has Char::Greek::eval "..."
$var = <<'END';
Char::Greek::eval " if ('��' =~ /[��]/i) { return 1 } else { return 0 } "
END
if (Char::Greek::eval $var) {
    print qq{ok - 1 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 1 $^X @{[__FILE__]}\n};
}

# Char::Greek::eval $var has Char::Greek::eval qq{...}
$var = <<'END';
Char::Greek::eval qq{ if ('��' =~ /[��]/i) { return 1 } else { return 0 } }
END
if (Char::Greek::eval $var) {
    print qq{ok - 2 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 2 $^X @{[__FILE__]}\n};
}

# Char::Greek::eval $var has Char::Greek::eval '...'
$var = <<'END';
Char::Greek::eval ' if (qq{��} =~ /[��]/i) { return 1 } else { return 0 } '
END
if (Char::Greek::eval $var) {
    print qq{ok - 3 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 3 $^X @{[__FILE__]}\n};
}

# Char::Greek::eval $var has Char::Greek::eval q{...}
$var = <<'END';
Char::Greek::eval q{ if ('��' =~ /[��]/i) { return 1 } else { return 0 } }
END
if (Char::Greek::eval $var) {
    print qq{ok - 4 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 4 $^X @{[__FILE__]}\n};
}

# Char::Greek::eval $var has Char::Greek::eval $var
$var = <<'END';
Char::Greek::eval $var2
END
my $var2 = q{ if ('��' =~ /[��]/i) { return 1 } else { return 0 } };
if (Char::Greek::eval $var) {
    print qq{ok - 5 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 5 $^X @{[__FILE__]}\n};
}

# Char::Greek::eval $var has Char::Greek::eval (omit)
$var = <<'END';
Char::Greek::eval
END
$_ = "if ('��' =~ /[��]/i) { return 1 } else { return 0 }";
if (Char::Greek::eval $var) {
    print qq{ok - 6 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 6 $^X @{[__FILE__]}\n};
}

# Char::Greek::eval $var has Char::Greek::eval {...}
$var = <<'END';
Char::Greek::eval { if ('��' =~ /[��]/i) { return 1 } else { return 0 } }
END
if (Char::Greek::eval $var) {
    print qq{ok - 7 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 7 $^X @{[__FILE__]}\n};
}

# Char::Greek::eval $var has "..."
$var = <<'END';
if ('��' =~ /[��]/i) { return "1" } else { return "0" }
END
if (Char::Greek::eval $var) {
    print qq{ok - 8 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 8 $^X @{[__FILE__]}\n};
}

# Char::Greek::eval $var has qq{...}
$var = <<'END';
if ('��' =~ /[��]/i) { return qq{1} } else { return qq{0} }
END
if (Char::Greek::eval $var) {
    print qq{ok - 9 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 9 $^X @{[__FILE__]}\n};
}

# Char::Greek::eval $var has '...'
$var = <<'END';
if ('��' =~ /[��]/i) { return '1' } else { return '0' }
END
if (Char::Greek::eval $var) {
    print qq{ok - 10 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 10 $^X @{[__FILE__]}\n};
}

# Char::Greek::eval $var has q{...}
$var = <<'END';
if ('��' =~ /[��]/i) { return q{1} } else { return q{0} }
END
if (Char::Greek::eval $var) {
    print qq{ok - 11 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 11 $^X @{[__FILE__]}\n};
}

# Char::Greek::eval $var has $var
$var = <<'END';
if ('��' =~ /[��]/i) { return $var1 } else { return $var0 }
END
my $var1 = 1;
my $var0 = 0;
if (Char::Greek::eval $var) {
    print qq{ok - 12 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 12 $^X @{[__FILE__]}\n};
}

__END__
