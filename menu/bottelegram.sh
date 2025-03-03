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
BZh91AY&SY��  ���1s�����������@ f�  P�Wd�3���U6�;��!6�������	<���b��BP��y'����@H��~��P4z@ =@A�   h �	�54jm##&�	��j=4��6�C�  ��hCM2��L���$H�=4Ѫ��=���mA�F��1��=@d �A�!Lg�O6�e\�5���i�F���ME礠�դZh��7�i���	/>��t3�P�8�ց��>���P����J���Jt�B�6}��݀rUTq�kթ��,AK�n�9E-P�@�n>D�+M�^�l����z�cD���oK�6�Ҋ��rA;���j�cM���β7ak�Kg��yȞF<��BH����	������<���8��v���QNv3r)Vf-�C!�u�l�ԙɐ�S������DY�m8p�>p��F]S����2t��a��]�#2�.%D�c�^��&�T��]��_����4Ú�6� :�Rj�KHM�`��/80������U�n�:�k ��F_:"�e״/��qjBz� kl�܋ɲ*B�:	�i5jB�R��T�Ne1�apR���|�OR����D e�b߆rr@(�oW+zǇ!���崅�ɛa2E#�gɒ��
ݫ��&�������XI���c��N,ǟB�xD���-�eR�M���KCf�*�� � �^��s�r@��e9U���i�Q���
v 3���A�zιly�@��٭�5�G2�zK0HU����4���Xp�f/��_���6�pIw�F���]���S��<�)�X�e��a���:�����hQ��s��M	p�t�n�4��n�4$�ɒ�_��J�A��;J�$�0�K��w,S\l�����d��k!.N�N̦��kMϳ�ƀg��dSA�NH0��''�&Bڬ7FN1A�v�Nc�.	�7�㡶��7�;��)�Z�d�XT��h�׼q���"������R��y���,<Vl�l1'�����s>8ǿ�Fc��e4�,7�S�:�ugS�����4L��޾f
g��;U�8�x����؁%b	��}��T���]�L�^��m!h��^bq�����I&hq�0$$�H�e	J��0��bW@<R�8J�� �#F�� ���Ƭ�Jr�$.$���i�V��L@�xɊ�5ʲ�����H�7,��T�OyDK�%,��-W�F��3 �ᏻDBt��nN|M扅Fa,d�@�fK!�o��=8�ѽ�B�X��u�V��,J��BH-�"�-��#�(�`Q�Q�]~b�&��2W��r�8e�T�`�"�$�}8���gL"�8��C�<R �`�X����+P���Ae����Yaa�$,�sI�+mf����!^a��),���CAXIW���kU��H8Xq�=s�d�[��g��'@	L/�����:@T	���ܑN$- �F 