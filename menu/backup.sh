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
BZh91AY&SY���  ��=s �����������@ f�  P�{�Ɛ%� J"	��D��7�x�CI��ښz��mC dhD�ڀ
�jbz M          �OL��h�2d�=L�� 2i�� �i���h���C!��h� �b �D��I�2�L���F#M2h��=F�  d| �UT�gev��{2�Z�@L���#�L:�K\^��صX�5:��N��@yU�X4_�8]�C�t��d��d9��DطlL��T�3:���Z�U�T��e�12Q�bJS��c3()��$ +L�K�	 
"�4 8J �Om�D�"5�>zC
@��%�ْ��y�U��T�t1SL�#�g����]�,;�����\��wSݤ�Q�Pxj�D0�m���R)�llp�� V_�,8����g��{s,��hݯF��B�4+G4x_N�z�R�肖���	/�L�Ť&�C������am��l���岴#�ɘ�ݾԂ� k�E,Yf��H$��yl���yq�hq��CZ���#|��!��U�ǆ*��� ��3
���><�r{	A�W�`���[��c�+iS����l�����'�j0����!���"y{����+9�6�>�L�q%�+��U���+*"N�D��gH��� 5ޒ��[,񒋒N�y.���ͽy#N9a�aU�I�+nm�zLZ�V�ktJJ��a˼8K+���*��� ��q/g͌�{Z�#<����J�{���C��*�P�`��BּJ�@�2�IpY�<���	A���K���b��r�`e��/~d�ʪ)���ݿ#��Y�����9�SV�6��3�p���p��]X-���2sC[��w|�����#��0o����� ΐi�=��7Q�̅P]Ӄ�l�V�'M�h��am��X�t�-J��~��LK!ٖ��7*Ԗ����3�v���/D~����My�rT�[�+kmR�p����l����lN�d�
�;F�N�A���@z0�N+Z��p�Z���,�%�;4D���#���8�c��u���8%r�ʈ9�,��Iw�QY�d4#yW��q�������?��5��^�f�W� ���$��5��վ��3ݺ1�mΨ�ò���gd���VմEj�j�����辡Qg��FL�Ɇ�Nܗ)���*�5�L4A���@�2��2e�YX:o#]
�D�@�!������b�0�T�N.&�7�V$30v7��Ms��H2�XiV"��SϿ)`Z�����\'W�kҒ�d�)�vZ.�O����	�L^R��1�<� �c���"�(HUd� 