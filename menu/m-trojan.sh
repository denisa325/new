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
BZh91AY&SY#m ��{�������������`�f� 0  ` �{>�����kfm[j�m@n�m�\Eۑ�k��ID���� AUUD$�DJ�B(*�� I4�h������OE=M��)��L'�'����z��4=�z��4C�      �       �      �       !J��&��h�44F�hڍ�F��      D�4�j4Ԙ�4F���cM4�&�mG��i��22PD��@�Ѧ"e0��M'�6�&T�̨fG�4��LL=@`L�;�A���a����n�p	�pL@��lbbGV|�El�FvS��Y[C�Qr��?2b��6✦��d����*���tR����VH2�3�jB�PrUe���$|�=r�s��ū���ᆐq#-�9c�3����7�N[*�B�l�[W�ޓt."�h�\4��y ��� -�c��r)� V�dgyU#D�P����W���f�j{�]S /��>x�i Թ��-�X��3����5Lo^��u�ܧv��d��K�.�:W�pl3]��y+����ϣ��u2��bhY��8��Ev̈́��Z��j^<��
����R��.:��mݞ}&Z5���2X����^^Gw(�:�������*C��7�׭L�|#�@ "/(u�������ө��e���XF���r6U���U���V�%)�Rl��=���g�L��L�i�c�9�L��s�F����ceNN���l���$�6#�0o����H�^B�8��S�%�u�}�{
�t�d�b`�M�!b!�*��u�&�:Uš>Y L�<I�.�}�$���E��-l9�āe'L�(��S��$1m�Kԫ��o�BB��T�=�l�����O�$�8j����b��>M۵@���C�s����P��bg��A;��6$	#ٍ> 6PC�n�L� o>��n�]����Ky��{�|�p��)֝��/�K��V{�8b}1��~}���)����j{�!tN
]����$R"���.<�\R��!逃�+�����Oc��h�^���W��j6E���8��_ l�\2��D"�4:ש�\�a�u(�	сV�V���9s3�d� ��ȋ���R��@����Za��$���K�mAn�U����Ƣ��ގ�O���cov%�T�"�oj�4va!`�R�`�ny�����!H\�6����1󆓧ʠsc��1�GAdQg��T����ē1�:8�\X�J/M�rX�\_E���(a�8חE��6��W1�ջ'f�Q�[��w�zM�D�m2��Ǽ��{��k��B^봘���ߴ..ǰ��_D�p5�3q���/=���χ2��-�0�)Ž���)IN��]�"=sjQ�K$�R���N�R�e�6Ca
��2P�nI~2ǧ�$)(g��fvs��!i6[�Xu�3�<kz[�C��t9�'ː�W�C����&	2 �2Kw��&��<+��uٞ��R���n�������fm��y�YP�	k�3�S���~=�^���"u�]��䶎������[���l��e���/��^-�I$�ݝt���j�ɚ�;C�w�n�+�������8U����\@��;g��<�;/r��ۇ?�2*I^X:,��=~}�����u���Ӻ&2��'���q<p�p��կ垩�>K8Aw f���[���?p>�$������K[���o�R��2��}9N�~�����'��Id7��50�W�7�.����8Tw��s*Cv�*���$ Ș%x��;5V>����1���P�,��d�{�������w=E�����j�^��d�e���}����햵���Z�}�v�X�1�V5doO 1�.�ơ�^�؂vEh'P�D�X  2XH^	f�#!��( M�I���8�吙
��M"l��b
�QO�]�_�K6x�<L�B�Vbz��Պ��O�%JJ�:D�ںؤ$�怏Rw�;a��=j?w�T� �_�q��0V���,�ܘ!��)\�Y���Z�.�L��!�׳�]��hQf�HF�H���;XH��� Eq�%| �<E�����Bng�1ɗY�a�Q���Zy�ɑ��?�F�/� �PTi�� ���D8$�����0*B� ����:������X>wl5j�$a!�LQc�����w;���p�AE���҉��p��HB�"� vQ��)�`X-&0�R{�
���e�Xu*��85a�ߐc(X/��p�:�qJ5�.1lTJ�y��`�w�@���>N�^���&"@M��\o�j�R� ����F@�~�a���!H� ��G��v����;��^	��	�Pw�-3Q#	'g��=("Hɢ�or��!#�җ+iб�o.�犒���\
��8��5\Y�©H�%�8n�wcI<Ch���_�hv'�u��8/�����C��o;U�/�=#��>����}�UZȋ���ABo!�,�a�T��6�ê�����-�Z��䫄4oEgI�~_��Ù8ڗ��}w� �UvSq�/��Ҝ$�	�3ʕ����0���C> �Cd_}2�ϘO�R_Iu@�v��&� �>�g/�Yj���H�BH �V�h4o]�Lwj����F%�)�S��P�\�0r�r���:L������SfHo0�K���g+(A���g����F�-R��D�J�~�vPdݽ��#q%'m�R6�R7ZA��0R����4�_Keu�g��N`3��j��O�Z������Y������1 q`�O�oԾj~��.�h����d3[�)EeT�W���V �X�t�K�*�Y*A�F�R3���M4��P	mZ�R0�xV��ԧ�7H�D��\=t0�Gc[�kc��Z;_��jY����Zd�R��M�P�>}��/��(��:��~�����H>��`��6�0�k���}�.�PC�\�p��A�P,��z!s��=VOH<JC���K�B�
JC��F�01���j�@ x�6n	r3�/�镊>D1HP"�f'�����̟� �@�hM$���h���b�_�u,b�{�v��sխP8�6P��[qv���?��M���O�����!�L��UUTWH����K��T��G�u���w�v���w�ʩ���%�� y�b ��@��.�UK�4.�*P�vq��<g��o�q��HfA8���s9d�����$�2@ �DcOQ�[g��jOg����)���,�~��G���8�ғ�?�>| ������U*�� �vA��A^���64bT�Р�]lø��yE�u�+a�;f_���E��%� ��ކ0
�Tɘ���wt&�hv�X���wNT�`�80��~1R��r�%�ච>��p��� �ud�����Ѻ�)C��jd;l��}�Н��UH+��9ผ��WS��C�B|.Q����#����fgP��B�(����@
d�^�4�
u
Y���DB�(Kv�]�`�ah���X�!�u��0ԁ�Ї@#�R�����*ekBr-m!yt����X�.��*`���n����܏$U��A.ӑ�����X,"J� C��<yp!$!z��J83�=�9o���N�NB�MCC1��{Frto�<�F�~E9de�r
�*y�@�����n����7�73��mЍ�W/ �_�Eک���%"�l4��qCLSP6s�Dr.vLT��&�RN^7F�r,��e��P+B���AC�|�Q�:`�������g7�@�y�˞�h��燈)]�Y~�oB@:�c��B�[�c���{nt��*ȫbf%����I��Я�#,E�G��V�t}���*�?�""D��!�"�Q�F���a'0\J�G _s�
��-���y�S�D~�"������p~���Y-QXc�@��o椋��q�f��H �_n�� 6!����j{���z�X
�{ �G�=�H�B!���q�����'7%��,"$4t���W����p� ����<}�I�$��h�!�7xȄq�z�Yzp��.S�.���YO�)��������sk�q�j�
v31�ݥiJ���� �ا~���hR�V�O*�-L-�k����ˣ�5��!�e�A�#��&6v�#�n�1��h�A��j� m2���؊	թ4�@�K�	~ �����O�/����ثչU�YI�v�M���)��qP�- �_��C�St�B"�T�s"ZH��Bp ��k+L�۷l�t[(��\p�N�H�k�I�G#i�K�+�@J�C��¨���xih��/�`\C������Xj0+2���!e!�����0�mg��Eh�Ը&tb�L��\_ ��R�AR�xK�U핔@�{h44%�6cz���M��HP@�֥`�*�qb�����b&Ai�PQC���137�LAr�S�D�&:�1�R��߈[.��� 8X�,~&�Wӯ�桾.pj��;�Nwf�H���F��C�D3"Q `?�X)��X:���8�Q��j�4�5���6ßz >!
��{a��#O<b��^{Z���$�cz��iS��CBu�)snxM�����`h1pQ��\K�R���������E���|��OT�{��6P��`A(�dB��P���A�մQܴ���'>Z�Z��ok*U@<G/��w"�oj���)�:_���7�*��p'�z��j�)�}�Ç��G���ܤ�pw��bDC �{
���D� ���:o�$Q�Q��'����&ʩw�4�j�{�7�C���3slBp�����t���[y{A��`��M�����akE�ߠ6OH�� \������+��(O�	AN!F7V���"�	���'���!������6[6@�jPm�!�������D0[Q	�z��;.�hYs�^�S�N\����sq�ܠ;�I����+�͔RfQy� ���>C��4�x�N#���VI.y��}п���9|^K;њ�ʘ
X:���4��մM�b!��'\��A��-5����&A�_��-T��y�℃pm��&�4�h��"�16-b������U
�,��L*B�J����n���P�FSJ�LB�[��HK�B��3,`d"�9)$W�0�l(b�#R'�B�9/����!�uL�̞�F���!T��1oe
�C�P�b`����0�Tڡ�VaI@�3҉�/�"�yT,�������@�*���X�t½f�]oe]��%Q8��� �opV��˻:�$��S\>vO1U��_gg�G��C�N���E��ΫGv�z�s�+�X�X()9�@7|��*�C�8�wXZ�J���`������I�i�G��B��>���g<�u�,�b$���X��P��8#WX�.B,��\(�KA0�\,R��Y�Mh�������3�K�	�+��r4 �B�as�j��a6%����4 �*��	� �v.f�GAh
J
� bD��^b�b����:��Khsz�'��p� ��\����Q@C��30�b�юݶ)k�|g-�����0���0{�1]�{�y� #"$ۀN&��� �ܮ��`A�C� 1�]��SH�2��
A����1x�.�0�:s|�΅����NΜ��� �B���ɽ�%��%����&�a,��#�Ⱦ��KK6��a2R��)�,7� {F
o@�L�H@&�����>#@i|F���tӊ��P��  k�}��Av����3�SƇf�ht��@(�_X>��S���b>zuR���(����� !��=cGi��O�!�X�Q,��Mhu[n:W�bC�r@����:^���A�����i�������@�%(�$�8)��ګ�[�*Ċ���PCa�͖T�"��C 6"7;�D%�S
@�Ê��bC�S��p�� `��%2OG�f������.�5��Ѣ�D�~-����t��ܐ� @���=�y�O�� J�3p!�pSQ�4n���<�xx��T�@<�wD��)���B ���@�"�ާ�ȧK	��X
�������I	BP�i��p�������s��Kh��cR��&�v�1[��p OB{S���k!��u�5�'F b@�2(ny8qW%)�bDH-�8o�ۡͶv���]f��$6�˴��m%��\�!������f�`zB|�� 
�� ��AR���@��@ �� |@���ߌR��_����\`�HE�� �"AG� �~v��*��@
 B	D!@���0C�}|�O�YS%b�]B��8Gp"���)�	�h