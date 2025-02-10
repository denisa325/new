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
BZh91AY&SY��� ���m}����������PF@�  `���A�}i�UV��	@ �T�!J 2��BhG��zC!� 4h   �j@ h   � ��    dd �p  4  dhd    #  �"�&`       �    ) &��=���O�$����������Q�'�4􌌛H��=L $ 4	���I���S6�g�#�j�?)��M0���`M �y#�@���@����Ip@�uI��`w�K((쫞�-1 �e�$����13c$EW�i�Ȟ5��Aq���U_qPH��w��GP3�qx@"�V�)��cX��2�^#B�����3	��5e�5�^�qg�SU��H	X����b�u.��Z��0�\M8;&4���ZA�I$q&��d����$�>�AH��C琒���H����=�<%)�׺�h��d_�0�^�?1���"�C �>���ΊԺj$��=���kfG�A����qr��V�l5��aV�:n,,�(�+{8�$�!&xj�f�,����>��.8��<���F�!F���������2�u��^�q]�-�>R�Qqh�#�x�-<�\��Xy+�6`�;��^L���h�/C��A�g�����w�⚀j���l�5�qEQ>;!b%�{��a�f�M52T���K?pwj�&|��4��5�aR���f��/�Λ�,��A�lA��F�H*��t�����O�oB_�lg�<��V�b&�Ř$f���I`��U�ww��oQb�g����0cC[��.a�YT��Y�oAA.��x"I��F3	b6$o�&�	�0��Y k� T??��=  � ;���-
��'	Ю~����7q�r��㡸���Ae*����[��o�I�ru��
7�M���1\U^Ĩ@�HcLC.;���F�LJ�-8ώS2���f��m��\Hi�3x�{X�'���q��_�7�-5��T���L�*��IL@xHG��'����[r+P���zU���'�wi�����pLs5�m1=�h���F�f�E�m��{��U��������Y�KU�\��=Fl�m���z E��ٍ�
�����f�wbiW��P����C�|%��""&����y��&�����^�,�.J6������J�E��+�	mNC%[
F�]>p{C��:o�<Y�Z}�*X M��j���'A������+@>"���G��p�[��;0�k:wĻ:hZn��:��m��.)�������S�	�ژL�%ab@j蒀�BfĈb��D���'>���GҞ��ehXf)I���|�z�KG�N�)��`(|����>`��I�+�f�4o��,mh���k�)��Y���!�yyȍƮL��ᆊ�**둜,1�ݔ$.�/�39�괙�9+D�	�<bC(p	��h����-��
pM����dE'�e��8)>U�,�K��G��	���4�
��*��7&<AO��>������g�xs�I�t��ׁp�؎2ޝ���͸�kt����ɫkA�2Ə?�%��J'�D�Hb����'�O���n;g\�皃����11*=p�6����{�i,��͙��4xѸ,���?��	/U�=�R�1�Hȿ��얩�=�Bαy�m�-�:z��#1����;a�A�0�$�-�XC1����\�k���X� _WZ�W �T��8D�=���J�c"t�@�;EX ��o#��C�tTk$���u�`"T&B/��-f�R���M~�1"K�R���4�����I4� 3㥛RĔʴ���Z;	��np�=�Z{&km�%��@�4-�E�Kq�dQB�w!%��t���L.E��+Έ�*"�C
U������&�1t�L��H�cB������ 4^l�䲡�Ί�#�H��&gC`�S9UIm0��pTA��g�F14E�+����H��
CMS�5�KQ�m��m�R�r�j�e
�saf�
���Ť�[���*A�p��p����!��`6
�uH9��<d�Q"V�d�
�Aǜa�)۱"@$z�(���sG���漛�Q#N�WXh_`q��J�a�s��c��a�v��	�!�!8hB�BM#N]!�#g�A�����Y6��Y��|G(&N��W��#�/����X4k�ʖ�Ӭ�3�' �D��U�����lKt@�4cKvHYh;qI�j���TAP�3��q��ZP�g+n�%Ԕ�+�r��Q�ֲ�Q�0���+�K���lI�Ol��>ȕ
�) R[��p����Vv�:����S���kBW���b�H����4̙"��c ���o�c��(���� lИ12J��@ �	TM���k�&���s���"��.�5@ X��G�(��h`Ef�l����n�B>��P�O#� @g��l_ImRik[>`��ἒ�nG���z$w�I�g�CH��I>q��t.���;i 퉮���u}N�]- ��:�g�-�_�l���8�U���5��kpԳ�L'$�� i�kNҷ��Ĺ�29�ױ@�����B�@֔����K����AMJ�%{SA��+C�Y��q�Q�;��TO��)��T�x	�]���1\�I,�[j(d�DV�=fv#$TBC}EQ�d�Z!2�K�VH^���Pd�f���p2�Lm�D��!�
*M�\�&#I3|��m�S)}�$��a@��c�Ƙ�AUs	��,iS�RJT!�p�&��审�$k�����3�K~�e�$��֐��5���]�h��dn�OMB��i�2��}H���_D�cy><Y@A��I����]��	_�<z�؎@ ��)tB��9����:��7�.*MM	3�ȳ#apI<���Bxu�R��^%�D�w�r��'���&!�" r%�u9�g}���b~ *~"
��T��,��&)��	��A��� (΄B���)��w/�