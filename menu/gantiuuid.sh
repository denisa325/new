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
BZh91AY&SY���z  ���!����?�������@ f�    PY��cX��cji�1jhf�h�Ɉ 44i���F���2 "M=5��4 �4 hh i�@ H�Dhd��44�<�����0�(h�F��Rh�C��h���C!��h� �b ������ i� !� 4�/O���9���C�p~yc�:�m@b�Z��`�Ơ�z1��
g�@�J������s�8�Du�^��=E�����&��Q�$l+�j=%V&�_C'�2 ��TjB��m�6�=&��F֍�]�k���@T�L-�4�C�Q�;�񲮹���c���p�d�D0{؟�ž��"�u�Pno��GܚG�
@����m!!@�3y8���upǉ���l/��Ȫl�oJ��Th�ݱ$Z��J�|�"��il����[v�O��(= &�n~�Y�z��Fa�+�ޭ��CіM*�j�:���]�S���9\�����x&L���zbؑ�^�,;�M�I-�9Nf���)��e�$�e�����#3���Px�@�ӗ�{6�D���3,;J%������b����?��lK�a�|wr��@�K�.�j!gЙ�V��L��jW�ݕ���&�#l�ut�*Q�Z�"��mEK�*���8�$��	Ch$���jc���׽�#���v�LM�Q}�!u֒9�Au9ƭ���.]6��a��d��m��,���A+4�)�!�auJD��B!�Z��`��g�'���Z>zQ�4_�ꦵ�PY��*d���#a�ɏ؅��	1������e$Ho,.�T��1 ),'��6����0�5Ⱦ���#�e��Sf����Q턒K& �q}cGѳCd����@��@�@"�%���e���g�y�8�I�֜��.�	��*�KY�:S�Z)v�����&���]���[���o��F%=�gz��_Z �&�Wje
�uS&NC6A
M뉴�[$3p%,���Ի��2.vDm�_<ݕ��yC�$��H^��d�;�����n������Tuإ,啗Ɓ$��u��B��T��e3aPʮ �J��88���H�u"���,Ӎ�9
#)����T�����f`Bf���	�!	��R����I�D�� �G�F�\�@`��rE8P����z