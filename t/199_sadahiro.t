# This file is encoded in Char::Greek.
die "This file is not encoded in Char::Greek.\n" if q{��} ne "\x82\xa0";

use Char::Greek;
print "1..1\n";

my $__FILE__ = __FILE__;

# ��ǂ݌��� (�Ⴆ�� C<(?<=[A-Z])>) �����O�̓�o�C�g�����̑��o�C�g��
# ����ă}�b�`���邱�Ƃɂ͑Ώ�����Ă��܂���B
# �Ⴆ�΁A C<match("�A�C�E", '(?<=[A-Z])(\p{Kana})')> �� C<('�C')>
# ��Ԃ��܂����A���������ł��B

if ('�A�C�E' =~ /(?<=[A-Z])([�A�C�E])/) {
    print "ok - 1 $^X $__FILE__ ('�A�C�E' =~ /(?<=[A-Z])([�A�C�E])/)($1)\n";
}
else {
    print "not ok - 1 $^X $__FILE__ ('�A�C�E' =~ /(?<=[A-Z])([�A�C�E])/)()\n";
}

__END__
