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
BZh91AY&SY�9��  �_�qp����������@ F  P��e�d�í�	D����)��⧦$�&���zA���dƦF�'��� ����<��(z�H@��6�@    ЍM�2����S�SMh�����14 p�ѓF�hdd0�2 dh �2 �S)6S�=#@  4h4  �� � !��{�|M7���T�@?/{�Q9&n	<��4���t	J
%_����q�Lh �Nlg��8w�=q��N#���@�B����f�+�2�qQG4v�����{��w-�3{(:�ͷ������׋.R��ް᱗��^���1P��Y^�1(��J�i�2���O F3�0�iݼ[2��P�I�4!�Z5����BO&�>�ɘA�f/���iq�]����p��� i�+).�&�G�@˙����7�<Ŕ�,��A ����"(�<�Q38��L)pFfO�d[��n�L �H��N��s*u=68L�!3W��}W�R��]
E���D�>����^��O��Sn��䣬���q`	it8-W>�a1�^G�Zu�àP�N&���yiWݐ�jc	.>TT ���I����pQEΧ9�\]z9���riȦ�h�,h��������a����3��ȱ�
Q���R�U~g��{�+*	�^��u$=��JE!� �
�&�+�E@`��	&�� W;Lք>�H��͎lYΔFF�v%
⨠�-$�%� t\���ZѬ��pD5b�0���v�7�2�F��}g�"�_����0D��n���r�9u]��T�,�Y�Zi�	M%����QR�bp>�j�\����Xf��gb�WP��7t0I�ߤ2�9"��D@q��Q��{�
8|\/���P����ۏ8}߬�� �꿽��}	��1S+�QT¥cIT�*!&��0Ո��@6�r �����I�Q+��!u��l�-�LěR�A^�#0�Ja�
�J��h�
�DL�*V�i�	H�b�����@����b�-0�dBe�  �I� �� ��$ �_��H�
�8�