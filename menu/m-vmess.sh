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
BZh91AY&SY��u8 ��� �����������`�f� 0  `'1Qk�����ɬol�r�Օ������N{�я;�lJus� (UR��`�UH(�PE%TH"��
�@I��I%bOTlj��F���4C�@�   � �  	)�i�� TɛSQ�)�1�����CC�44 h6H�                 $I)�y
yOPQ���zM �4�h  �z�   D�����S̘�S=OMQ�~�	��&�H=M��6��i��ڂ%�� �je5?I��CJ~*~���eM�?U�Ph�� ��*�	� A��ȓ�@{����AI1�D	�0�!ڦ,T���_�Ŝ�.��4���>F#�F���2�>ۃ��F��v�J²��K��h��Z�fj�p08Ç�pa�Xb���j�3�:������c+[Hr�W���������ŝ�"R���Æ�A�n4k�]
�gX��o��@
�Td�$�9����ji:���J�j.B�G(-��)�a�F�!��!P��
_�ߕ�wi�Q��@ђ�z5��I��;�@0���Nz1�0(�H�-k����pӳCd�<6ӗ��o\���f*�D�CcM/f�_1�}��[ڃm6��.�m,u_u�8��P��P&)g��.��)��-��%���F�p�Z�4:�Z�(X�_��*� �j��E@a��?�KD�HWn�9�5�ڵ:���ׅ�Y��tk��a'z��j
�r��fC�kj���ZJ��s'�~�HĨ�bB�V	~�D*yg5m+��	�� �XR[�Ҥ��:2lu ����Y�.oLR�W���ֹ�I�i<����n��OˀO�Ӻ.�uv��}/��ҁ��1z5����į:��(hF10H�)Bđ@���(�
���m��\D��#���jW����-�v`����^�Z�R��k�%
i��@p ����B��t�9O���$��d߽LT�>�s�"*�˅G�<F�au?���]R��P�~Z,@�/�׻�{�
[v�g���U0�xBlC0�]��b[a$�*�50؛@4�fBa��(����1�
\}j�B�{ `]�?�|�~E�S��O�'�}J_� G�Y� �Tm��G.Eǔ;�Am��UZQ��(f���C�e;04R(�.싯.)DO(?��}}��k�Q>��W��ir����Q]�*	�p�Կ k���><�!�ԅ������o�F8�Y���u`U�k6��|��A�X\ƀدlp{��Y���9iZGOhcz�9��@b��O2V�}�m�u�[>a7���Qu�\���v>�>ƣٍ��1-u���O����P)!���3�	5�z>�q���b��b�����>��G�Ԡqc~*�͞'[����%Lϴ	ZW���3#vq��<�3�:,66S��KE�M�K	�x�M��ϐA=n�%���0G|ɗ��G/���5]�J�jTX�~ju7:9f��iʵ-B�������&z�Mm:f�=�С�O0�0�FeWZ,Mh��y�͎�|i2X�-k����`7$��R/��X|۞#��mÔ�A05���ړ#�N����\�w��}0�Qq��3�����P�T;,w�y�4�A�`���e%G�fqp��9-��S��7�������8�����/�qCw�C\�ac]��$������0�͐@1Y�2]a����G�p:��~��c�T3rʑ�q��8TD��ӧ�@��3)w٠������j)�:Wb�Z�}�x�͢bhZ���Oa�z�~5�	�Ǘ���Z�*�쮾_��"�S �C�ᯎtƛIY=Hx:w�/��4U�(}}˚ bs������[ �^�EqIHB���<-�k%�2�e�K,�^�z� �Q��!t|�����mIoX�]*p#��p�p�;�T�#@y3�(�c��6a,�(Ko ��G\e?��kQ.[Q��r�~�c�)U���Q�In��x7�����
��}g21���-�He�Z���)I�bܹU6�ڒH	P	Dŕ��)�Ug�ޯ,��j�vl��I�$�fn��Ԏ�C�����I�o��Y#�	��h~Cgs�s9)뻧H��5�n��b9ʉ������%)Z�а��kdi0ep�	��!�C�c� �5�-�Ѐ��';bY.PK�A,Ьd"!��_q��%����3L�c�:���Ѱ�y�H@�@�!���K�B��1@`�^�|A�Z�	��B�,X�`&��\�+�p��~�	���	b����������u]��-��;��Y�	�$��RWiMH��!$�"�,AޜS
߭��5 �X�@�KR6?4�F�ⵁ�R�����\�!��+P49���Y��.�M!^��k��^���h4X)�����)!-�-�`Z�Dq%0��-#(������EOv�0�0	�'	���R\'��ҿ���꩕61�)�Q���qd�DVe���E��������?�RP�o�+�4�GM��nd��Q�����q�9�_B�ǰ=%L ��#��QQ��+__���������{����=�n�x�Ą ~���t��%�@*łЗ����L�p.\Z���aF�s̓湁��__0H��b&�?2�u)����'���E�)�����H	�z��8-�D�R	��C桡�#�x�H�T��F���������'`���8N8;h�U�`g�4��.#=�D2SlR�$�MЋե7���+I�`SG;����ٰ�qu�Y[Uav�ܨ�⭯�D)[�C���H�A��KBs	�x�nǑ�����'�&"�,���/�xG�~~Q��(SAj�|V)5����([�
V��)� �"������h���E����3)���
Vі�J�=�r�9/qx��s�Y�u�F�,�m;�����//1I��m��P�.l�hq��pK�7�e(@�Q� Zo�����$��`)�@p:{g��t}�z:���B �@@�$P�ðrN+�9����pP��,/Ρͤ���vN|���o1�;M��h��8Ny��yؑ�G�����Éz=�Tw�^����dY@�O�֦������|ոژ
	A���dE`$��A:;_~�BĽNCp���DID6�(�Ȉ� ��L�d��I �W��׌D�aQ4��h'�y2a��c2�>}�R�/��΀]%1�(��N�yJ���ܭ~��9��~�_���&�L����򻈷t��*��5f�) J��RU�=�s�bO���bl35qD��!ˉ�:���cCVZR��[�`j�D�h8{=7�ʚ{�ص#�ZḴx?��¥��dy���}ɤzekNz�z�CSQ�_��G�lY�zqJ{Ï���S�~G�x��!��=��0�37���5s����r b�����8�F�tq������ä])0���oڹ�T�C��#OX[e),�ad@wPc����_jǳ�fm�G��`4���y�!�g���B�h_p�)i$��Ö�&!3,��2�w<��vve�N8�][6�Xt�0�tG:�1��"��e|{�n���5��dLim���e�΋33�
��	H�G_���1Ҧ��.��f�i��'��pzT֥Ҥ x�,D T���	r�.�BY��WD�@A_~�y�k���a��;�_��tD�y����r��B�Յ��D0GϦK����1ѡ�2Ω���{��~Mȶ���D�Z;� �A�?��3���ύ)>���焁��� �T����%
�n�r<-.�� �S�:P1�M�ilY+p6��p+�~�/GL^�P��P��;(�����s���a�Y(�bkQHz��.B�Fe@P�`������f.�Dހo�N[��(X���/o ����v�]��\:�`~`�0���ͣ����23nb��Q���_�u�D,kd 4��ܓ��e)"�9�)�z�q1��/g�Xo!��B{U1 ����YHy������ΆE�"��3�J-ɒ�h^i��帄"��s�)Q;�H�@�P(Q�h`��M f6X�
��(��UŢ�d!`(#���"8��kt�,h������`���[@��AS ��H�;Ͻjd.��H�H,���R
*)��1U2w�_P��� �9bH JW���G<zB݌���oܔ؃T�Z��c\0�`u�У�*��l����-Rs���@(e�	����P㇠���C� J�Ju�S��5�qq���Dۨ;B���2Q�,�������^�R�r��T�M��R! H&�Q��B�4�d7)����и�0R��a�$��ӁM�-lJY�C�P]7�R�H����_Y2)T<�ep
{J�i�>r� ]����L�Ɗ�+��B�
�*�OY9��`� p�H1���[��KN�:J�{D$� �0#5���(}/�T��Bd@WH_��;����{l�l��W���b����D	� @`+��͊�9��Q�����_p-�.{�}��Oh}�t�����>�*��'}t
? &�KU��F�C�'�]UK��~K�N� `�͍�
ݼ�/.G���>�1=��+�[n@�� �=h�O���#7�*'_�0�\p��%p" �H$̙Ѻ�g�b7eY#��%]9e!���ϼ��8���1����缾��y�u���|f)� ��:B��ө%�&�KuI	&��v�h���
�����aw?���(W���@j�9�S��P���`�!,��8�/��_G��s�g�k���_=�-�/�0�� ������W����w��7��@�
�Q`6#�B!"Σ S@� p��@Rs]	� ��������j([,���6��B��մ�P�f/�L�>�
iGTD"E	�Z�R��� ������,V8P���n�@ m8���L��Iص��ߟQ����V=��?Z��R�1�J-6�.{�� '�������4�����@�!T6��8Z�J_�֮Ւ�Q w���=��b/�B�| ��t��[�������jȡ�m0M"0m��Iڢ�oL�ۂ�
f�Jl�A�E�	�<���������m��!�DB9�(s����DQzzT4�o,8|$Q��(\�AD�kD�R��͊�.���8ؽ,~6�Wf�/Z�$]Pj��;
�j�< !"d!�"�`�H��%�	@`����`@o8o0�"�H �P!�6�
��AFAx�冂7!�7c���
��KXO�.I�#OLb��o�/-IT����v��%*J�Q3'�jH��9 ��<	k���n@0UIC%h�XF��(w\ �X�45��w]X-�Dc�ONV����P��`A)dȆe�@ޘ�0������J7���br�pn����r� �Hӏ���E�׀�U<N��!�{�V�C�@�L�ˊ��=��h����7���w�|��v����� . ���E�A�`pP<������!�|^Û� t1"�O(�dD�Ҟ�Ѷ�*������2A�B'g9��|:��Q���;�����?E� Y�s(Ц�sw�+T�YNNc ���(0����;���<=`0�RxLJM"B%!D:�E�C����*�@�����9 i7�)�^�@X�B21Q2 ��u�e�a�5)j���l$	����V�5��h��Ц(/�߈�h�DԳJd�P�S�����8��؉���L�e�tإ�\���	T�U�UUC�c�ӷ�r�)�u�{�r����D3�\RX������&�]���~��QԆL������Xy��k/J���@��Bd��Ėsl�粨�hv*? �DFD{�f` b���;*^ɮ�>��m5�hH�1�D��+QR���d���jC
��2�p1%�"HԨZ͏b�W1�S@�K��%	f�P��1*\`"�87)$P;�;��V�C%1���E�L��DH'HQ�(��am����jש֐��$WPŽ�*��C���!^��t�/ZB�E��	��_QFϘB!̰w���I�?YOLL.��	\4X�N W:0�>d��^�Ү�6D�����	��"w�+_،���3J�1�7M�C�{Q���f��o�Ȭ�_�=>��:�G�_ �S�e?d�"�_�DB�(u�@7�U�R!�=+����K��1�9�����zRU����U�!Ԛ����Pڧ�Mm�����$�evq�K �R�y��-q�l�e� ��J�r���B�Љ����҂�k�Z�� ��y��,@HR!ʮ&��Pn3�Ni�0[5��ږ41J��s@j�P�+��.jJ!)-! � (��H�@�R���1H���P��L�U��n����K�1$�\����C�r2��CE?�R�AL��Ԇ���,.fU���1K�����{e��Z�χ�0{1]F��[�P��Q$��@7� Z_�L��<,X/Q�'��B�<.�4�" %ȉ;"����1t8�eJ�������5h� P�:1�[�u���6fȻ�3�K�WK�.����``_^�K.Z�q���A5� ��0$$�{/�}�-z�"���Rт��Q剂�I $�pQ
yиC�2CB��N���yi���sK�q��1B`E�dh����C�I�7���"C��h��x�!#
���b l�2,�pK��j7��(�t�/_>�C6�iA�XG�J���'3��-�GP��*�:T;��*h���T��&�X�[�*~�+�oL^�Ҏ�cV��E�e�؈;d$:,�0X@D�h�"L�� \C!p��4����M��һ���!v
`p����3�+��"R����F��
��C�yGJQ�B$"P�lmN�Z@m���!��S#N���T������m��G��4)�:��R@&�f�9j����d7_1���`�2�[B��_�P�6������p��A*����77+�{@�`�j���O���I � �y
�1��?�^>�/F:������ �԰j���C����W�=��}�k a�>��Y���]���ж۽Xa+���^��{�יͮt����C^��
��v:�����aA� 	���0 ���4+�T��O� A���@�"
P1
 �`�E�"���E�C��,� ���W��@$��"D � �~���*��F� �H%!$� Q� �PI DDPLU(���}^/�, �E��4@��ҏ �"�ܑN$-9]N 