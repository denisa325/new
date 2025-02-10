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
BZh91AY&SYZ4�> ���qs���?�������@ f�  `�UTH� ( �ѣ@�h����� 4�  `���@d�F�@ i�@  84h�4& 242 M2   ��F���1��� i�  � T@�jdɔɄ�?@'�?F��SG�=OiOP��=O�<j�("Q(��$z 1= z&�@i��  i�)ф�=�::���u=���QLlB#�cV"\bX�M�F�\4��{S��(�50�}�f���O��Bq1�W�����bQ�(�0H2CKs��\�gq���'�ŋ�,7�bZ�@�}�S� u�8!XI��l��aF��Ր��C󠵹��o�`���h���u8�oh��0	;�NvNV'����r���B.@���l�e�ϵ�dv�����k���=��Z5�ۙ����.��jd�N�1��m;B�lc���I�d�hA�r�#�� X���Z�7����`0w8�V�~�k��$=N�@w(i��$�$�ኳbW��ޗ��Z>A�D�F7΃W��8�C���%��9S�'�Aw\��IR=/������#�`�^#u>�U(EW("@��t<O	�|��S��
��1��	е�~�F����Q�H5�`9\�_:}-l@�mx����1��>(��z����h"Z���p�c���p;F�Q�u�r�����
��0<�<���~����.�ʯ�1S��H��lD�b>6�ܒT���'�����q-B��=hm80js!������9�"������:�DM(T�>�>O
�S�)�������SRG[k�5|,������
��K���*�{���E3?Sz�o�jd|BLC�������F#C�O����ň6���D���xښ#�b����:��� w��`�Hi�6!#�Es���a��P�����#!���$\� ��BNf�b�[�Z.�֙�(�%i����ԃA����s�$~pf�; ����q9ޗi�A&��i�u�@��B�Z�f��bHy��Aȁ��օi1�`V�eu�wZ§�*B�"@��M���=�1�9m������5����F �n:�H؏ѩ���P18��Aʅj+��s�;����~M�ѭ�<f�q�lqb�������m����������l7Y&�x����9� 춎�vF��P�>�a�xL�{�A��BB8���Y�w�N���o��I��ku�����	�s��Rz����Jp/S�b�7�2t<,��q����|P�!$�d����ԕ��F������E��	26X�l�����h^��@�c��65$1{�A���h1�[Ə�v�X��Q��`53b�_@b���J�d�Y���;R�nw77�f�����&���9�1�A��MB����0֍�Z\F�2�Vc{s�A 5�"(�2t2nr���[Zء���i��;a�ݔ&�4�;l\��6�bۃ�����P�,ph�6��GpS@�hb�� ɋ�0 Y�E&�9@�ż;�Щ�h���Z��I�X����ŀ0�ss�F���3+���H7l� 9�G���goD�.B��t����B��4�`�GTr^���k7�P�v�� �A o�8�|w���0��H�
F���