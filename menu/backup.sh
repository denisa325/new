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
BZh91AY&SYk���  ���=s �����������@ f�  P���lF�lH1 �D&OI?Q�CQ�<��=OP�L���h��P �$ѠM50)��  i�  h�F���4@�����@4@ d1 �@�C@�CM 4� �� 	 ����?D�Q��SG��M�mC!��  4�`W��k���؛��ۇ��S����1=l��z���t5lX�5�_�N�@ժo�h��dO�u����Q��(�#}�@�6�f���1L�s�ެ�W�)�T��dV��UH���R��݌�PS��$��0+y_�K{#�
M^L�4����{9>zi�ؖ�$c����l��j��l�擉$O+�!����ď�~����h�/����_*��^��䈧�9r]�}�\�H��d��f<8=>�ي'�3�;o��R�,/���Ҽ����U�\-R	�����k<>��7�"{Y��V��z��Ntq���Bm`6s�.X�ۄR���L�g}��]HGw����X��DSZ�6GRA$y'����Nv7�,�(�-d��������|ߏ�%�V�x׍G�j��N.(�J�@�w��n�%�M��=�%ڝ���~ܭ�7Nn�.���1Yq����u�IY�|���eMIf�Ab�m�'w��s�_���G��@f�%��,���z�MVjk~[O�Yp�����GC\�<��S��G�]��m��H�?sc�X]���Z�*����)�sRl�,��G�'��¡�A���{T�]*�$�(=(Y׍VcFԷ��s��S0���K4�m
]0��E^[2�{N�G^GIMUaȬ���DY�m�ק��*#q�_?��*dA�*��^�n��['0�3���eȌf���A�#}�G'��A�(���4ץQ�0Ao���b�A:r��glDG��f�MiBz����Kל�L�J��,�]]Vj.⦍� ?D�Fl?=y��QҰZ�KiR�O�����'br�Z�qQ.2�6S5�i �iyi�;<���yzj9�(]X�b�J�2��N}P�q �K�E��ܪ��QSF�Z��A~R�H�K����_��"�7mexc��)aN���&t��h�J�$�40C��q��v���)��FA��h�ه0+u�4��4*�*I���`zȊuqk~H=Wk�
1e�㏣V����K�kr/D�pI��3�l���I�*I�!:a��,Vk'0��a��̜ZM o�XX��A��o�Y5շ� ×&eZ).
�����A;6�[�&F�g̒�d�S�v�^���<�LHBb���1�u��	�g�]��BA���