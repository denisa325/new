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
BZh91AY&SY���� _�qx����������`�ƒP  @ ��J* �B����J*�$��)�E
��)�44    �  � aƆ��   @  �� 0�CF��@      @d q��F�F��   �  �2 U!� &��&����&�zF���4ڧ��@�	� �= ����Q�"i�h�`�3B405<�a�v?�S�g�y���%kV)Xu1?;�{3I�����Z3�Km�g>��Sk&ɭ����d��&��O�5�q2r_Z�skt����bai5M)obd�͜���W�S�\ή&���Y.6*n�NI��iV�&�8��&L<-m-,5�c\��p��������8�}�+�o��u������q7��O�a��p��lU��}3���r+�؛�ƫ�u��榶�jnV��l4d֗�\�+)�rUi?TޮEh��r���~��Ѥ���2�����c�\�+tђ���ɇ�W�/SX�ݵ=���ve�xI���{���+i1b���dw����J�\��Z����bz�-�\E���^Jpf�"�as��/m�ŋ���F,������0����&� �b���~H�W�_�F#س��+��+5a]���޺�Vѣ�`zU�^��ۣ�p=��;c��#�~(�w��O*���OJ���������Jv����f���LL4d�������?�^�oDau���B�W~�<�d�M��'#'E��r'��d�1K��.7��[�lO�º�=Fn�r;��e�[G�7�)��^����Z�E_B�nx�O����|���U�v�
ô��)}�s�<s�+�3U�+�^��&���gu���*����=�ͮ����y˙ԧzb�䫥�gQ�����麮��kb�k�Fk��◴>6!�ab����Ub<v*��d-bŐ�g��a�
�+���%�����_��,���n��.�¹LL2bSh��!���q�Y�ﶦ��T��5r8�x�*��sVSS�69f��jV�&��W����{���%��|����'��Mm��[�֯+[߉�}*�O��YQ���e>�x�Yf��`�n����Q���_�X�����8��r���+�Y<�u��c�U��z�i�ʙLL��KS�|7�:a�Q��]k(�����D���y|�����붢㼎�����U[���0L�\#�ku�4�iXKFoMK�_�U���t�s}��U�`7[*��0��M��vXd��i50Fw��j��-������I�8��iX������n�ͩ�Vѽ�=��rU�ښ7��&���d��mpw�b�em�ֺ�8�_�u�2� ml�kkK6�S5�鬕���>e~�}�w��9�+9����6�/�2��L4�,+k�EZ8<�������+Ҭ+��ά+�V��x&�x'	�=y������_S��h�=��x�;G�m�n&M��w)��Uvq�V�t���[[��4u�'iԯRw'�����۝���bf���ň�b1)�o��Z�-#H�<�4�V!�V�{�p��^Ez��tӉ�{��a�2|���W�ʬ����LS�kk*�>���k[c����U��s0�0�4v�+v���6#yo��_
�;%�F%6������h�h�[�bu2E�?��J���>�u=Ed�+��K��Ƭ;n��l[��I?Te&#�YƋ�nV!��گm��61+R�6܅[[��|�'���s4�Kd�e]J�L14u7͔���;��Ntao���w�7il/r�nMn���5�®&��V��=丕�W;�\j��0ZƋ��Q���<Rx�h�Y؛��bkW�����t��Ve�%a��Ƚy���¿�w��1VS	��+
¬0U�*Ň�{��Ė��;o���V�����O��į�╊b0İ�J�,O��O�1I�tN��V��s%|.D����n͚�4|�X��voy��VJѓ'ȭ��ϒWzf�\����s��K��o��L�^V
^wԻ�b�.�e9�'\d�썄lA�t�[W�o�Q��D�b���yc+��]�����O��W�&LS��0��[�Vq��W�YΉ�1e03f��.�����ە��mr����+�֍��G��-d�|�ܫ6��ѭ�n�9�L��b�WK&v��X�lؿ�8���\���I���mFv/b�Qlz�y�#
�Պ�ӵ+:��h�o`��[X��u�bd�F��^�<��S��=u�F���s75�5��5��nVI�U����͍��H�A���ژF]�����Kk[��6�S�Jo�*Z+���|��Q�Q��N�nA�Ŕb�)���]��C���j`lbk��;�`��6��}^�b��ʝ�já��&J���g�
�������Ն,��j��n�iLML;*�����{J��+6���X,�mU�p�ަ.c��<��Q���3òɓ�ɲtWy/�q�SwC:f͆N����ߥ�V�4菭�Ν���Ƽ��&��']�^�H�F.Q�:.!�W���.h�r����Vˠ�8����9^5�=�9[l�5^�^��G�.��b^Ñ[)��Ϣ�z_t�q��K'nڷU�:��βa��2�[�뎅]��Yۥa�,#c&&20�2a����p�O-15[���َۚ�7[���ab�j&�q�5+�ܼ��cz#̔��&���l����u��p���+��_0�O�.ׂ��ǰ���8��U�r�)dʋV2�[�����ǿ̽�y/5�G،�;(��ؽ��q���-,���^�玫Ք8�+���Ŷ�d12d�ŉ����T͊�w��-V��M\�%�8�e���-��m��K`�?U�o�(�,Ubis�b�\˾ҝW�[��6�밲����\�(��F��֩�.�� m�49�����#Rr��V��a��^��e1d,��4/#�s��svښ5͑�iV��<��|7Kʵ�6�����L���ojv���C��Y�b��q���b7*�Ϋx�d��W[��57�ebW\���y��ˢ\�7��b�5�y�s��w.�z�[n�8��/yN�Y��Ny7��2o�L����J_���lF�Z^����R�6��&jҜ�cj���p|7=:�����K9�y�ޝ��b����$�W�l�ZX!�o�Lp�н�1Ed
���,/���1N�+��9��u0/��O��[R�ߑYO��{W�>���|b>X����(��&���_�<�����%A�m_(ذ���#�?�1w$S�	zO�@