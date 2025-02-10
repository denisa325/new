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
BZh91AY&SYK�  V�A�@ ���������   @T�ى�L&'�a����z��4S&�	$��4��4��G��f�C���f��CP4�#��i�`��244P�y&��dz�=#G��ѐ �hp�V���Q�%[^��Ƈ�h)jY�o���+ 8Y����@��0����a���
t��9�t|��z�#HZf�B/|i%�8��Q����ґ��X�f&��
�d�P.�2�D�@�	娜��򣓘R��!2��('�X3�q8�)��,R[밭X��h㤤�P6�Ӗ�r��jG���Aw	��r�L�V����ղ�.?�Q
�����8+�0�A��!VUD&����[ 	�" �q�|��x�t#J���+X��Z�x��4�`�ι���<;��܅|�#yĕQ��1y��u�#d�[�7q2����!R�.�����Lp��[I������p��SĤzi�F��/⑂�E�E�s��L}Th	�dË~�A �F7�Gȏ.G�*
D))T�J���T�"0PUe\��˹���י;��W���R�rr*=K*���<r3�o�=p��+:-��qR���2)�+B�<q<�S�%p��&kX��p��v ����w$S�	��� 