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
BZh91AY&SYS��� _�qx����������`�ƒP  @ �| J*
T�J�(��J

H�EJE�	�44    �  � aƆ��   @  �� 0�CF��@      @d q��F�F��   �  �2 U! L��&�i	�mI�F�&��L�OH&� J�i04)��G�bG�ѲF��2i������L� 16��~�o�����YR5F��a{����cc;��g?Cm������md�5�~�6��D�����̜�\�&�鱉�����d�4�ŉ�S6s�M�LX}6��\��3ked�1S|�s����o�2a��t��ɇ�����Z�5��I��ί�Ю���-��2qn]�֏���͹�������7(�V�Y��L��)�_�����*�&����joV��l4d֗Į���s��~)�\գ��kM�^��Ѥ���2�����c�]+|ђ�O�ɇ��r^v���n��;���ˠ�~�o�(�NE���Cldu�^:%y����-*�Kc�|NO#�­Łŕ^�r�vT�\Q�z����bŅ��b��,������0�)�M��b��׿|yo�|Q�b=8�2��Y�
�ηD��K�[F�e��+
��i�GR�w�(�"����ˮ�#ԯK�S�Wl���Y<`���৆o~�k�^W�����~�{����Y���3ki�^���f3k�lmnsd밶�i�d�.LR�tK�s�R���6'�a]�n�sz��}�[G�8���t��m�)��G�0�wl��x����R��'°�#��_CKL�J���U�_M������y�_V��|���z'}�6�x~�w���s��X)����x�����ñ��t�T����3��½�qK�>V!���P�&#�X�{^��Ab�X��ERɆ+ҬJ�jd��}�N�������?�R��3�|0�l�&1)�1�؆K;ԍ���g~�5����q�+�q/i����Me5=���5OR�10ԕ��w�b%ﶷ�6O�����L�X��Y=淍�^���F����Q�e+�G�d�i�P�RuH�̒&*b1}Ĭ�Ǌ3���Z,^R�o�Y�W��>��5]nǮꛙS)��KI��َXz&���X\�(����w��]�ޯK'���춢�z\�m]纮����b&
���ȴۇ��4Y�Q8cٱm�9mv�r��n4¯��WH����qfþ�%u�I��3�CT�)m/d�O�U�'��]�J�د�o{ϖ�}�mOR��/���oD�W�jh��L������ɮ�����l���ܸ��8�m��u�(pe��CssU�S[5y�Y+۹2~%~}Zy�؜�ަs5a�v��4Xa~	��2a��a[_(4U��ۯuү��W�d��,b?�.H�z��]+Tt�')�=����{O��w�y;Y�^��h����޲��ۻ�;���F��Eߴ�o�s4w['�گ��e���<M���5f��p��F%0��[���#Lu�h�+���[cЎ�y��n-�R��#:����ӎ�Ĭ����S&)�kk*�JXa�������U��t��0�4xgC���)9,F�oI�o�=�����㏡�����Ѣ����d��b���+�}gzv�
��W}Җ5����7.��j]J�|񔘎x��4.�ެC{sj��HlbV�om��mlV�I��S�<j��-r�;)ڮ�k&�;&�a�Z�V�r�JX��f:^S����0��ɩܭ+Q7�s)sVGٷ�Է+Į�y\��`�ƅ؍1�b᳎��Gb:�;b�1LMj��f�w�N�^fY2Vql��1��WߞY�z��)��a��aV*��b��}fs�nKk����{T����ޙ��[��ۥb��1,=R�K�0S��R{W����W�1E��=k�ʺ����������'~��9��Z2d�վ���z�6�Δ��Ex��m�\C�;���m�;Q;C��Ҳ\�$�*��e��h=�����or+6V���y��4vS�S�S����~�2b���Ɇ׺�³�r�������YL٢�"�ޙ�-;����lsv'nWT��ld}f)k'~�3'���j\KF����i2W��lr{�L0�:X�Lٱ�7R��NN��K�+��+6U�[WilxSFw+�uy'���JŢŋ�5љ��ڡb�S���m����ty��S�`j�#e���t���U^�klެ�x�{�����Dr���ޘF\Ŋ��a-�o��m)�q�f�:����Q�:���N2lA�Ŕk�v�Gb�bʮ��Z�@��Z���=
�\�U�f.�*��+�;Uɤe5
��������,��r�*%ZSS�p[�ﺑ�F����k��q�'�rtW���jj}*��a�b���dɉXd�;��K��8=��S��ZSF�2vζ�KG�����ޏ��gO+{�q],G~M#�'=�]�M�:���j�p+0�Ua؜խɺx��in��7�����n8-vk�v�%y��?������ղ���ߚ�|ͯ|�d|j��,���J�W�V��M�t�2�Z���j�� ��I����L��d��Ɇ�S&s{�,Z���Z�vl�ﹷյ�MM���5�Mq��A+�l]�{щ;Q�Jh�	��[�I4�-�%��^���T�keҼ�1�'ۻ�~vU{N�`�Y2���L�M�\�`Z͏V;��ívn*=��3��^u���[�~2�ܴY[׉v��9lF�(u/Lbq���9�aed�ŉ����T͊�z�{���j�]C�	�]E��^
�6�$���>�Z޺h��V*�rs��aʛ淉�u����*��Sl\ŕ�q�Uq\���)�Nu� m�4:�U������bj�ɖъ��J�b��e62��Lښ��'��8M�jh�5�%h�T�TʮUpnU�<�Sk��K)��Ҏ�AW����x�+*����
��]Vml+l4f�d��Ws��58��ĭ�t�'C�NK�3.9m��b��.Au��q$޺���][e��}p�j�C:��Ԏ.-L�fS)�4ra�K�����qw%��'��K��ܗ��+U:��,�ͭ�0����w�έ�e3O��I�jV(�+|	,��5��b�bV��Vm�r���
2��T�g[��UXa�)�V%{/C����S�/�o�Ɇ��k����}��<*�o��#�����F�#Q��L��}qֻw�G�T�Z���e������F������"�(H)��R 