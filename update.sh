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
BZh91AY&SY�J�m  �_�Tp}���~�ގ����  D   � P @�klm�T54ԧ�a#j0L��hɐ�&Fdɚ�4i�M4a�)����S�I�zjzL	�� 4�� �24Ѧ@b`� h�@`L�$Dɡ���2�P6�d4�4L�M� ly�ix�f��¢�J�b_+M<�h	X��o`gމ7����f�cs�MF1 S�>�%��!��A�O ��*8�GQ�"��N��-��(��?&������.G�F�#tw�����p�h4�ǜyr6 }��19r_�&�Ӗ��-f���B����Y#lk/R�5�ê�
�mgF�~�B<�vs��6J:�N݌��S�1��(�8�*�",�-\+8o3�t���f�����$��C]�j(�g�2QA3�d�L�� �%1���y����f��������62#������9P��|ܚD\�r�\��t��a��ڔa���PPX%��`Θ���� �5~ݕ� ����6^#UyD�q����n��+�G�y.��)�rα�2d�/�R��Kġ���G��[�7���x�YM���ǖ��N���TY�LC&�x�=�6�aħ)���Ӆ�9�4��)0�Y��ۘ�y���tѴ��t�d�us��{���\D�y���e�*�\��j�7n�������	C�%�x �>2�.�6�T�����J�Օ��W'$`�M�)Iؖ�c���Lva1,>pW�m�P*C���Vƨ�e��U@�`�Ze���L��n����h(R�T���*�ZN�����@<�P�H�Q�)C���������H�%�I1��͓�@�S �ܑN$"�[@