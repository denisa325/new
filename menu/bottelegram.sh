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
BZh91AY&SYM;��  ���1s�����������@ f�  P�\����s\mn��f��D�'���y2����G�?R� i��z�Q�P4z����	$S45M�$�C(i�zG�=@d 4@� �	�dOU?�hS����2SA�F����`�h��@h i� h� FL� H�4#I�2Q�zOLP� @��  �D&�?>�!ʬ�5�����1���E�}��h��!��,#�$�.�K:�E��|d���ֺR�dfuR�d���J���g~����vɰ�q&��p\�Ʋ_1�j ��ـ���2�͉
�U46�x�Ke=�19W�Θmꑸ<�[�SF��]ȭN��y`��v��ZnV��qOe5Y�d��вL�mE��5�{��t)�?>�]ה��'����;�ry�(�Z探��p�q�g|h:�WN�)�3f�����w(�=�Ӈ	��@�dˤg�w��?�|�1˞\��id.ڢV뺵���|�A�c^A���78W�ei�xb�'�(�[HM�p��mc��t�H��D��p(Ć:�2�2A���UFݲ�Bt�H�"�#A6A�HRGA=�V�*�.o�L��R��n
Q���O�׏� �"��ٰzCC�fǬh�0���дrf���z�%Ϗ��m)���RkTw��
�����l,9���&,ǣB�vO3|���~�5q�x��Q#�y;����n��k2�����~{&�6$VM%�Q��H!�����V��>��5c-��`��c�<���ڸQ��z�$�+NV��Ψk��;a�8��t��#8Ŏ�'��}ބAG��]~����9]�>�X�u��a��FJ���ބ�B�8FK�C-5$ʫ�.���c�n�5$�ɒ�+�?tO��Q0�j�o����-�B����
�)���^ۿ��	1��	svv���ε	ۯNx�\��nM	�]!�@a��N#��Bȩ
sA�Fc2�ۖ�-&�8�CqZyٶ��I
�Gz��N��
A�R�l�a��(y~�nI��IB9�s0�"r㫳�]<���U���k�F�O[���dXq�6���:��� h����]Av�L$���j���=x�32М�*P'�øi�R��Ʒ��~��6�ڊʋ��=Yza�G�����*4�-�F�*�so��F�@<Ҕ8J�� 㑹�=`�ᮤ^��D9n���:KFX��xP�2��ƁЙ��A2vg|�I	��4ae��S[Բ��6#���9�Np�ؠBkK�ߜ���U�aGQ�|��@`��3�6 b��h*F�ܤ�'�\��T����b�!Fi�am�O���a` 9e4��W{&�1A
ɭq~�ȠH��);�-N�l��%c�(��$�� ����"�5�됀L�i���ѣ<��&HR)�,��0��x�\ۺR�v�QB��8p�y����ܖb�@�}��6#�C�tm컼�tj4�!0������zMF� S�a�?��H�
	��