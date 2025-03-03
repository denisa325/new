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
BZh91AY&SYP��j ���qs���?�������@ f�  ` T��
 ( C�F�A�2b#C  4�  � 4h� ��   �ѣ@�h����� 4�  `���@d�F�@ i�@  H� F�������&Q��m)�Ḩ�� "�!O�=0Қi�jO���Ph =@�R��1 �~�\ߓ�9���3�(�6mBC�Xf�%�!{����PXp�?Fn�3�{���r��Bt37X�}� a��2f��|��~b(�J=,$3Ca��~6����!���L�l2a�l��[1�7�$�!Gi t�wP��u��d��&:����>��;c��6���4s�w�nV�&0����f�dv�\� ���$����jjv�K߃�f|��,57:�����c���7Y<eu?�[7��ja����a	�à!�!��Ї���N����{#�sc7���;,�&�����N�u]�������ƚ�L$C�d�L���>w��Zգ�0�!a��q�8\�Ho����w[�n��Oh� �����J��}h��4d��X��I)"\�!
��Z���p6(R�a]���:�pMŬ1����m0onĆƌ>�@�2�k���5��ҏ�>��s��L�J�!{ga�euju\�fq�����؛��H|�t�����OA���u���1��o2I������+`D�$ʐ�kM�/��7��r9��q���C+���Q�B)����4fQ���6��<�p(58�M�\�= ��ĊA����ԯi�a����h�oK��ԁG����#7ΒL��17Hkfs�d�fI6#�G���)W
q�m� n~��Bm����[Z6#�d����?�Q�92{�6!��%��m�G�9��khv���7�Z0	'�2<�����(��pc0ؙ� �%��f5�?jCA��a�������
�~N�(���.@����4d�4h�XZ�)&�������t��7y���hX�uv�w��V��B@L�N���0>6ms�_3p@4�\H�����0 �p�3�ja�kd=g��� �<X��vXk��jRC V�����k�x��#��78�2t6����m���d���'���}�������ɓ�̓���K�jovG��r���x�M&#���*d�ޠ��֓ײ��m�����|Z{������7�/��Y;��cn���6�mml!'��f$���K�֕��Xɱ��f����E����3 �:����^�C`B�8�\M;�pkHf��B���T���6���C�
R��e��
05�2BOu�2B=GaX{l��;�e�Z0����C��vf�5����MC@���)�\l9��Fļ	�d{�C�{���62$ �����H������w���#P{(T�4�9�8�Jx��B[87�5/
@7!rT�h�7�����H52um f���-B�J�� 8R����,�m�{a6m�4+�+ ����	�=� �=���P\��8�c��l��K��+O���C�oN��6��]�B<C����!�r7��d�#�P� 7�Q�:H� .�00?�w$S�	�6�