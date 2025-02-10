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
BZh91AY&SY�I]  �_� ��%�*����P�<�'�D����M�4d�4�������OE�@     44�T�& 	� @� �I��i=H�jd� h  "JT�SʞL)���M4���ш2ŶGSP�����;��yF�c�li�H�𽪎�j��T4|6� B",� �����W��Ȓߎ�h       i�l|غ�fv�����<s�u�յB���M��y�N����oE�qV�} �W�
B4T�F ��� }��Ê9Q�r�eJ	*=��R��D<T$xy��[0U����HHH�!B�m�L[��r-�	�aB�-�	���1�k���U՘ �/����;;�0?E���^ӿ��a�l,7{w�U�?s[���u�z�[�Rl����$�c��庪�� mWna�lt�{$�d�M�͵/���<�䝕>��cn���-\>�T�ɦo��0N�Sp]`�0�sHv�UUUUUs���n68����p��5UT�B��Ie��6�4��9X����ا!`,	4&�iW��͊��hr�<%�َ&ͣ�Қ�#T��WWD���$�,����MJ�R�uҪV���69X/�I�4E�T�^�f�'�J�3�$��2�Uel�����s ����\*̮�^1�W& �C�����	@�� 3�?�Þ�'TɄ���j�W�~T�`]A|���q�kh�����F��n�$�UX�@D�DZU���+�!$�7*Ы��RH�L�I*����r(r/�������v�Na�]��B@Fu%t