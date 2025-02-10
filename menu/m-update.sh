#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY�,� �E�@ ���?�������@�D@0  `��Om�ֆ�u�( R��52h&F��z�  ���4�F�� �q��M2h `�44 �  L�hE?DQ��Q0�i��C F@� �@0?T���ښ&j �       hd�L�  M &� � I �FQ�'��*{Tzb4��OQ��D�C�����C#�D(��)X��]�(M�U�X�.ZuN$把�	�5���TC�����k|���"y�uld#�2�	�v��l\�v��k2�m_�+�W����P�!k����O� r�2����}T#�P@�(�*7�.'��
)*T�Gcqç$����og~~��g��SC�z�۠}��-V�:����Ӧ�X}�?"�������i��j����     3337k�S��ģ�s���D)\���A�1����J�S�N�$k����}o0�`��R�HB� Bm���a.�;�B�p��&�ΜI���jh���w0��p��b�~���S��w�خ�ۃ�T}4�J�d��Þ�WB���=վEί-����y��Ǥ���owy��w������gg�+x� }.����<1I7ܖ���kH-D���Lz&� �Z�fef,�#v4�Q�}�v5hsn�D��=8)j��'�I$�u/�R�d��L��aw*Є!B������ ��\��,�J�YjU*�J� �Ԫp��]�+��ư�w�h�<���~ތqbӂ�{�7�?(Q/H��]��� �O�%I�f��z:��m����ڻ^E�U��q�(` �'at��4D&Bp�s����c�M2у�jp|�1h�{���_��2קթ����&�4�Y���kx#��ϵ�"������1�����[�~�?g���O�2A�������O�ƞ�֞���T����JU8��jI�*\��KO�V�>��A֗cJUUUa/�ԃzu�d����ڟ9-2�Z�
�Pg�VyN7&�`� U�;�1s'^��v�d�>>��F�kG�4̌��Ki�	A&�Q����5u�rrE6ɳ��٬�dNxRs ��6$�:mc-N��*I����D@ �_��5̐^�[�����r��i�AЃ��Ʉ�֩J�s�W��2�I�u.��_�p���);|�~����Q%D�U$o�5q�)3�ރ�U�A�N.4:1���W9c'��Șp�ҜSb7p�bh[L�\6��{l���o_o����r��R��)JR��)JR�JR��&r�J/A��:"�u�������R�Z�R�ZHN�$��0L�]liJ�T��})�;<3Lc �D�CT�6���9�kC9!M+H6�5�ѫ$�ӡ�K�[z��K)e����Z�����k�h�W���S*�Z�Ȃ���A�� �5��g��ۙND�pjՋB�t���-��ln�nr�R��Tgd��-��A�������ށC��� �Nd�7Rfw��/NÆ�R�W�ɲ\��m �~�D���6��I�]2Azg�)�f��)J�22�\��Z��RL�&R�UURI���.B��\��i֥gUU��΂�������aUUeU4qML.�Q  ѕq3eI3%I/u*I��%݈͜��� _/������RhMɃ�%'���y��O�� ��JHJ~������J�?��H�
���`