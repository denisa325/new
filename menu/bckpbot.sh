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
BZh91AY&SYi�s  ���g�� ����������@F�  P;ջe;���t�(S)�<����MzLC(ژ��<���#C5 h�=FLJL�����0��M6��� �hF� z ��$d�F@P  4 Ѡ z�  p ���d 4� ѓ  �ЀiH��d2 ����d 44������T���4H�Z�z���\���,���e��1"i��8N���_o!�왲�R.rH�u�2&�1���w9U]�C�Q�=�6�����r���V�^"v�/��i�}Zs��2�9R
��}�Ɍ�K�T�1���($�#�ғ<���3�>��+��l�T���<K,��4��"<�Yд[�(������9�,-����3](��a�����!MQXUQT������n�y]��<��~l�	�t�ZY������i�י�q$�(��0z��&5ʪ���ʉ̙�!�Nfi��� �T�RL�@d�F�/��g\K0D�-�%��"2��hS`�54�O"]D� 8���\ڥ�����y$��#�����ߚC UU�#N$� w��k���ޭ�6�V��hv6�u��f�d&頾�7���*�J�e�9�Q�;���䮸hNl�"��G~P\ɴ��ȎA��Ц�� X�2��f�͜��o-��D�(�2����w/+X�PC��H��6���uF:�	���p*&xNcNK	���2ڴ�"��b�0\��.T�X^ w��혔m�A�����m$�^���%6���^�,�N��C�{
�I�3�r�uR�ț!e�2�����9Q
Ԙ�4�p���Nf�,rTF�aJu#)F#�0Y�I��L3�}o5D3�!A! /�%�T6�rITTy��5�YS��%Z�q�r���Tbe��{�H H�c� �A㔲���YZ+#(����A�v���³-���7[���N��u38ɲ�J�c����|�9B��uK�ʭ�-���FE�[�tN}��%0LR`�.�E�s��1�,ӎ���P�t���$h��9��-$����҆"�����9y��Ō�B��+ �u$cd�Fኝf4�u��Ƀ���q8C�8$	�8K{�D�A 0�q�  ��0��]��B@���