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
BZh91AY&SY �f  �_�qp����������@ F  P���t�m�ٮ	E2LS�ze���OS�~��ѓG����5��yCF�h�F�	�&�M� �@���h �@4#FTO�T�OSM����=@��2z�!A�Phh4  �    A��M4����F@ & 4�~�"����f�;-�� �����'�H�$58`�ia;mP%(+%���VAӴ��x�s�4`���+Y����{ބ@h*
3[Tڵ2����1�sn�r�oSv-�EېuC�&�1y�/ӊ��ź�HidRc	�Iܨ��<���j�L��琁B%H��EƢ3��ìLym���`cў=�K:� y3!����J�Y����'���&��:� �Tۚ߃'13c����G�[� �^�L �5q��<���5QWe.s�  S@�ڑ�^x��.�@�Ø���U+�/f-�\+ߩ�"�#��g���ˆ�k����b��	w��F�˧�0./
�RYZOg��0�h~���Վ�c'�9,��M���Q�r_��#r�ׂq�ď�r��v���'�b�'����]�j���E��N�6��V��Mopx�&EQAG{�����������]�o��:�X�ŕsӳ�Z:�����30=&�#KS��`H�$\]X�d�I��)��UR�3����Xz���#q��E��D�!R�b��(}�@ထ\����r�f�ZI��m9��u!��8�D�j2$Q#Q�s�/��ܱY;p���A�x����fke&x�a���:}	P���G>���wC��>f�ld4$|@0|8��,2�p[�d��ZjA��B����D:�g�՘(�W�0���ZCWg�-���5�(骞���G�X]��AlI�bB�]�y��S��������ӓ�RTbL��$�D��H6�����N�i,���E ���g S�F�iJ`Rb��k*JI�DaS�X�_ix��bF#
	ei�cQ����G
ێ�PD�	�A+"�5��d��o�@���r� �U�$,���rE8P� �f