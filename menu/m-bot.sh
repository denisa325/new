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
BZh91AY&SY�x�c ���m}����������PF@�  `����KMU�RP)@
JA �L�	��4cPz���2 4 M� ��� � #C       d         ��  �  h  ���    F@ )�i�S�OI��mL����6�FF����b1�4$ hd&�d��Fԏ�!�PoF��ڧ��=M����CMb".X�A�)t1X#�,��
;(l,͸�Qt�`xM"9�;*�ELH?Id�+G,�,L��_���w�'�Fc�P@\j�Eź�W�T-����(}����^���@c;���%|�i�kd�Fo�3	��5e�5�^�o�T��We��1��dƂj�%ćt���t�f��a4� �$�5�> �d��Y$"H_ �H̑)@�FA\	��:i����Y#�4�4��g��v6E�2���l���G��1���Q����]<�y�\�&����H�0��M�����l#���a�7JD���$�!&x�f��u���>�yK���<����N
8$B���>�&[%�'��Pi�u��^y]���>b�Qqh��H�Yq���.�ú�sf
��v
�e'�ʋ��1\�$vv��������0*��8�@8⸂m��,I���8URrKn�Y��~�$ϛ���+ƪF�f�*Pr|�e�����~���H>��04�h����wJz^>�����Û��_���mLw�`�`J#Po	��@Z��$����*�ww�wj���t3{Cv�	����� ���%�;*�"5�#���ڒU�;$��$� Q�&�D���!Ha;��ښr#��a���z��8zeo8�'B��~?hk����ͬps�q&�9���ۼ4^��CF�d��BZ���,�5"{��!hI�bB��̰�(^ZCbq��-���Yc=R��.�>kV�L�UĆ��1������y��f����ƚ�F�H!���j���Ȃa8��w�kao�����^�.�G�R�/�8>�����8�7�c��f����1�����A��m����'��ȸe��_gd��bZ�*�?C�4f̡6ۈ���Ձn��`m��6Z	���KP�a��C�|%��""&��{v��"g�"����	h� 4���P�~�ڮX`@m0/h��t[������2P�U��k�����/�٪꣇֮ߕ,'�c�~��}$}u���`
��[_<j:j��!n�Zm@l��$��$�-V���8��*��9"z�hB17%G�#g��@�1?!���K�<�﫠��&��KXa*I�2���1�: �����E��m���I0p��E���WL��z���7ߔ���o�y��?�]'n5qӼ��h�H��������BB�~Q��>�I�Cg�!�F����ut�#��We��Vdr�ZP:��<����H�*ѧN�tY�����:��*��7x����?%����j��E�:'��t��k��E�G)oN�o�͸�kt����ɫkA�4�؏G�K+�<>��!���h��8D�z�MMch�啛Ӥ�({�L�=@��J���.�Ia^xQ
�B��b��]R��?�!�?2�E�P�82�"�#�u�Ji�9%�qx�t[�pr3�Kd;8GR{�C�L%��3>BG�l.~��E�4r+�Z�0�ĥ@$�9�"����dN���`����nq�1�F��rGb�З��A�r��+!���KYʊA�^�����$���i4�h-S5��4�iL.>�g��lKS*�9u7�h�';��´�Bi�L��@K��@�4-�E�Kq�4�P�F��Il|+�]-��=3�i�J��eDT�aJ�����qBiO�Ґ|�����&4!��񕕖���͚����q�C3yI{֖��&b h5ڗL a��ਃ��j.;������g%��)������!-DF��m�uNW�5�V�2�W0�l��gv
�0 d �pp��UVA��`6
�uH:�<!d�QQ+y�����r�qK�$H�|A�^g4{PkI.|	�0$e�ׯ�/P�g���?��f�K��; m������4!C!&������6�d=����������`Hd��L/Xv�c$n��dk<���{x��a�<B�|��;"��e->9F��1��ݥk-a��)0QS4*�*ts.R5K$����[�	xR��{�b���`ت1�^j3�	�@�a�ޒ���wt%3Gd���J�B�:�n�o�2ý�0*�KG`�����-�J��9��E�ɦid��M��Bcm�y��"SD��@CB`��*� �H%PE6+9�0a4�f19�r?��qVE����R�d#�WA�
�"�V�WXO÷h!��
PO���4W�X
�ix��!��s��X�h2�9�I|�#���x$w��i�g�CHȉ
�����02#�u�c,=D������՜�xQx��<::˃�0��@2VZ���&&��[���B`A9%04AP��F��BV�G�r��(�.]�D/�L��j�	�,d���Iw@�.�SR�үaj`A;�&���0`(\d(Ěж���]a�eRԒZH/�.8�u3��(E�K�BA�J�ص�)��AX��5�DC	��h�˵/Y!{F�5A�,5�Z����6�d�3"C(T��2rT�����N$]��()K�XX]@�'}W#
e@��&4ƒ
��L�-B��/�;�T���1�$�.Nuu�SH����W�ω.Mz�HIU�������J�@����#I��A<�m��F���h܄�7�.��zI��Ƀ2A�܌?EPp=�4J��H8
�1��~�q ��:u�~�QA-�Њ#�a٨(t.C�f��mBKH��s"eyŁ61��]�D��j�u�u�G�D��4�vc��jL�B ��w�@�Wv�����=@*z��"X=BL�Li�))�A���H �B!��H�
O�`