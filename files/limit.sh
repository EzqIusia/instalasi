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
BZh91AY&SY{O�  T��}�sF�� ?���  D  � P @s��� ��hi�  h %=R)��S�hH �4  sLLi�F   &�U3 &�5=#LL&�44d2K,ܧ_=��H�d��E�gFJ��:B��A0)�<@�����y��x1G�l������k9�)We���\�Bàrsm�����7u�즌�&TӾ���9t��a��7.�����r�ϱZ�V��@Ϲ�Ak�=6��׹l�sZ*:e��O탲o `gF�-�H{ȓT�k��@j%D�h!��LG2�0�`�m�Ȏs9"�uo�9�;���P��b����`\��%o�7v���b0k��``p�"����k"+��Ӏ�rb(f���
C3EK�,P0�UUUq��r��`��B���b�I(r���b��7D(�T��N��ˏ7�	SDZ���)C��d��\�F�2V���OLF��ڈ�r�K��|��F�"-�\/d�ܤ_i�&W���xd��x��M�Lґa~l�k�0G��G��|�B?�1�<�|��"����)��x��