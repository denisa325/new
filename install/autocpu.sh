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
BZh91AY&SY��j Q��!x���?�������@D@  P�]��%( `�S4�#T��M�Sɩ��"�cI����=@OM&�9�M�# ���h�@@� �ҍMMb  �     P�M42 �� � b�M @H�4�L�S�D�h�6�M�F@h�@
��3@ǝ����|~ƨ���~�)�0# =���^��U��z:Ug�d�dXP����gO[��cP�X�Z�Vy�������;$�oߒ��7�.�6��F�7GZ.#�B��#��C.܍��l=o����b��#�6T������p�t�k�����D�������Z�Y}����V>�T�q��
��i��dC��?Y�`�����R B�:A} ���
�s�K3 ��7����
{��w���5�m>���,�@���b!��wg�a��C�˧�nox��)q�>7p�&a�@��;�d��®K�����x6\�Jy�2���6xA�P��-��̔�^x�@��FꢄQJ���1��|��e'$�%��Mz����N�t�v>�XRv�!��s��=���b9��*��A�q��MW>�o�Q�.dH�>�L�O�*Z��l���.��e�r�H��R�KOx�'E�7f���s!��r��_T=}�X�ݯ�q-�y����a��>;�!�7_R�\U�3V�P��&.�-�a���D��$r�qd��W�ZĳQк�����t���C���C��Qq+9�ꄉU�n����=J��Va���z����nT�l��8��4�{�q=�2D~Ӹ-���퇘���Y��x�q�o�� ֣��M2_*�u���A�^&Ⱥd%�9�5ǖ�	$�|�9,Ft���]�LhB4D�JZ���u֔�n"�/Y�RyR���٣��@��U�v��>`+�DY�v�&���2� �-ANW/ �$$*�Z�x����R⸇u��5}��A P6�l����a
�P�&L��4#��+L�I2AMP�UO0�b4Q�朁@(͇F��}�a�'�『-R����D9�Ad�.#�y����q��/��EQ���	�I�; a�Y���̓���0y5�\�F$��+v�a�&�����^T�TFHڋY�,*S!(�J�e9�pL"�"��s )����!��.q�}a��Y��pm� Y2l�9[ �ob#6�����r�0�Tmc��/��^�,;�wdE��j�*��B���@ܙ>�-���K����6@[M[8�a�aQ��L���̀�0�	ү4��b:�5���"l��"�hK����D�B���� �@�ň,
�*R��uB	%�Q���I�C�䢖7�2	�So�`�����`�i�R "��f�ci�4R�k4��d{�2F�����C!�#�S����Rb %�l�'^3 ����W)��FF @B�.�p�!�7�