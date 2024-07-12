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
BZh91AY&SYu  ����}����ޮ����  D   � P PL�oMە�MtP ����'��y@�=C�4�F�5���h��Hh� ЂOD�hI���&� @    %4Bj����L��j����@zF@4�ѣh�&b��F� i��  	%2i=�5S�f��� =@=C@4 h��� tk��K-����Ǎs^�ޅ�K�s�D�z���ݒt�M�k*�qa'2��)d�� V�~>�=ln���@�Z��m�&3�+Jm"S�\�"�蒉X�U�H�:��lcdxbk��C������D]�79�V��G�c>?��F*Ԃ �Q�)�6�V�\�{W����yI�-��FsjXօ�4�}�0� �Fv��$�J��d��n4��$��4Xx]�Fy�xv��fe�23
!�P��>j�| ��!`F�0�,!%�����x-��&���05���N�X�S_i�w3�C�X�4�f�k:�������a�d�A3�/��N�$�k����|3��1��Tnާ��9�
��v�f���T���$��кԺ���-�I+n\�i>��|t\�CxgIcw��b����8i���rӀ� �)d����h����p�:�a1�:�SB���mŒ=tٺ�ن��\/�`p[+F ���9=�JE�?,�QG�(CT�7.�S�������{�[���4����m�A?Y�|�9`0Hu��/Q�� �9��!x�N� J6�̤����-�ǭh�5l�!2�1(�t�G5-�֘�!!�V#f�#�l)q�Y<Y8��N���}���c��Z��wA�Ծ��1tK��}1ٖ���OoH2�,�@tC6�{�i5��Ȥ:I�vI�AN���5�T8���n�ɊP/�S�W&9��XI�*��L���fW�z}�i $t~B�f#d��*�;B�),,�ҳ�:%D�IPU"r4��@�jX���<�h(#Vf(.[,��߱�J�_q9ϛ��Q#�(j���-Ep�U�b����`ZOkD;[�1v�����#�fd%'J��]����$+l��,L�NJ)Q	˧!Y%��T+E ��_�W�'�LB(\���Ō�v�Bq¸G<�߃*5 ^X����:��bA�9D$��#��z8$=��� �5H ����"�(H:��