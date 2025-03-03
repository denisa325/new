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
BZh91AY&SY���  ���g�� ����������@F�  P>u�i����;[CHM)��=MMꞓ�4�?I��@ 5�   4 II�ژ4��a)����Ѡ�h����� 	"i
Oj���@h6�=Ci�mG����� �#M4 �   �dh 4h�	�	��2���A�@ 6�F h� h�q���'���ÀQg������F^(���o��I���8N�	e�^"`��T8�{D�{�7�}fmu���t�t+�3�ͦ�8�qh���)&����bC4�F+������[�'1fmZ�@B����h6J|�`hJ�TIhn9���=o��7��+��\�T���<K$��4��"<�ٯh��Q�;ES�B9c2o�f�5F�2��� 5���$�9`c����Oi�M�?�Z�D���<�<��lz5�S2�wٱ��U�T9�2nD�c��s��11���U]-�"�cYHbS4�
-N�	�m�YT��D�F�W�S�w
�c�D�=�:	#��D��ߔ�4�n^��̕j�
�����3�0x�2y��`�F"t�LݲB|�6����&�P�,���j��Fgbm�^�:�f�Bo��.�`���i�MaϺ� �ۼ,p�%u�0�v�GA-B����u��a*<��?i�mT��+�mcS.�/���k�A,�k2���V�o��td�W�v��(��.]^Z�Ȅŉ!�uo#3<'CMF&����u�Tg|b��{���A|�HؔHg!��H�:�5���0q�U�<b1�`��,��&0�t��("Q&���4�J�l���!1!��i9ѕ�aajLBr��7��KIԨ@�iʡ�-�=�[:�ݟx�𷙁��HR
����R;���BT���o����c�N�RՀ�H���9_�
(S��Q
�
0�A����0��Y$r"�0�%��+a�p_X+.�H>���]S"�+-�i��a)��Ԣ�G2`��`&]B����a��XHȵKqΉ���!�	L�	���z�jc�*���jrL҇�R�:E���$h�iC�YV�O��u�C	S�~�a�����)�e��wdW�wn$�-(�,����N�}����B?��N ��	a�ҽ�2R �c �� +c����)���eH