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
BZh91AY&SYv��  ���!����?�������@ f�    PY�'�8�5��pdQ��I��~��M5S=SO���4d�=#A� 4�z�P2@��b�OԚCM44�F� �A�h  ѵ  H�
zi=M$6�&��54 #@� � A����A��4� �� ���    � �  6��{={s+�3P�N�����l� M�m�bE���jȃ�pH>��?�
$�y=���iM�q��~������)a�ff&�jԨH���J_�H�p�¡��yi���9#�A�˫�]��Y�~�|�� )T".�l�����]�z�3&��V�/��c�֢����?36�)��i�C.YT�6)��썴L�Z��Zp1K���wZ�c�����V^}����������{n&�A�������:�!.Ik�a��J3�(6P@�%�h0S�h��C/�H�I�T-Rb��/e­  �Y3ЊEh�3���x�Á	�kƖ�L�	�i6P�Z�)U�c$��E�<�[5��ƍ��DNEViG���W�M�{�Ǔ+��<��QK�U�s���h[�o��z��#}v����APN7�����9C`�Y������v��0��<�xN᳊J?5��+�*kdT�bC<Z��v� 丒)p�H�$�p�r䄧w6�KQ���.�{tj�������b#�^��̑et�q[`6�o�-ɓ�i�ƔT���l��-� ��`5��k������x�$�a�ED�%��V/{`�+�!h !�Z���8WbZ{a`3cP-�D�2��ƲXH
KĒ�hU��(�L��[}��7鑫UAx�{��uX섵-ѝ]�;�P��ͨ�&��T�:zV9�%!�� �]n]�"k�'�~� �^&�D�#m�C.������`��S4a�°��T�v<.#knm�5���Q2�a\�oj4�*1y4��z1Q4�q&�)�ҦL�6�agQ7|M�^�&i��sn�6��w1q)HY�^�q�m)��� �褳9m��hu*"�Yqt>!��Y�0*�k9F��1d˃_p}�Z��N�St���L"�@T5+��z+\8�|�<£~D�q��e���C`j^y�{u_C9
2 �4@�|�0�NL�L�%� ���/�$��BF�"RQ
0P b�KE�@

��H�
�א�