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
BZh91AY&SY�P%% m��t0�����������b�� �p `*=�:������������ۖ�Z�2���ޗ�Zzn}w��**��}|�<{h����w����+[On��돯Soz�*Zi%;���3��Z�;��l��V��ރ6���m���t}��_	DL��@ �ʞħ�O#MOS�i�5<��z�jj=#@ �Q  	������i���i4 �4� 4�4h  �	"��i�= �P� 22 4    	5!!���~UI�O�i�<���h��A� ��%bM24jy2&��)᠚��<��D�eI� ڂD� CBh�hh!�<��4OS	�SM��h4� dO3� UTXC@&�AR
"$'�N�?̔J����o��q�|���Ϻ}�mn�o���\�t\�+��]�����A�3x���~z�ݨ�n�����MF]�.��Sg�Q���f-e{�M��+��S�>��w�a����f˼a1�$;
��±#����g���đ;�P��_�Ye%ߋ�[�2˦��z:-X�r�_'J�{=jL�lr�<Gj��v��Q�J���aK�����)ƅ5)�N��������.��\�K7u�쓙��%�g�tT�[��G�"0�2�?$,��
99�ݦ��x��۫���l�8]útH�W]̚����=֝�>�=]���˲�a����g��cu�K��qԕ�-�4`dG.6[��۫MXR��mk���Ρ�����*X�?z�46�Ț	yߨ冬�V�*�n�h���*ɃtP�5�e��]v�-��V��hr��mY$P��~X�����8֝�-7��J���}�ɖ�]rOH��I"#�bW,)��:�Kf�1ߟM�e᣿lN���Ê�T�{�65�ͻc[��t8yZִ;��Y���գ�z��s߅�f�Ʌp� �"gۧFt�A8V..ioV�T�����Dn��l���a�b��ߒ����k]�" �e���/ki��&j�����|v[������9���C�Yx��6�%���|Ż���AX8��D�ct����5P3
���ܙ�U���j�~/��Zq�.�Z�y�YCRTؗ��6X��H{=�\�ݳ�3/���u�:q�|��@�`blC�Ini�U[�޽Q�����$��N��l�G3�ʡ���; \�N����x�����,�Ch��8�i#���+�L�ȑ��q�P�G&�hU�w��|m������ۘ{��C �n�H��e�E�z����ƛ ���Q���ݱ�[F��/({�n�Y���@^œ=�)��,}l��H�
�%kY*��h͙�m��l\����Y����~�VIY��wqר侫g��BV�p_>J��Em�G����oI������p6�9F=9w�^���J�4��"0]bEyc{%�L��ǲ�f�M��\�)���>�`�ad��;6L�K�g�>�����l�m"���3��J�1Tb.�~��V�5��R��*��ՆH��>���q�&����,F������Bs��c��2�O�_X��l�,nh�M��#�e��F�	�<Ej��98��唲޺:��hc��{��H��E�Tx]�8��ɺmrͪ;�$ȱ��S�e\-������\��e(�g-��I8&=t2\�0ϼ?��#_�A���f�߱���R�K�p�OB�1�SWZ�Q��;�^�UoSl�Ѽw/hFC�eAUZ+.[r�'u����rc1�W���aDn*���=�Id��$1�Q!؟B�޲��9����WY��Bu�����_p鵲;�O���,5�N!|�ޡ�U:�AT��6h4,)L�l����	�==�Z�8�K��'�>�8�d�ΖD�g�����W)�RV1�I���W��K	.���k��	�T�Ou�R+�������@Ut�r��'-�DE�$��4�5Bbl���{	��u�Fs�Re���9����S'ըΘ]c֐8��Ƣ�`V�" ���s �p�ݢ��U/%U��f����)샧;3ѕ���G��v��y�O��LU@ĬBA�v�>����!?X4&A��J��E�:Iؽ��󏯇o(},]=�w6��/l��!�-������e��o�o�~Ӯ���Oūs>��.�_�c��l�ֿnƟ$g���d1IKY.7-�s���$�L�Hf�q�(��3E�Ͼ��D�������Bk��P�����֮�j�����c>{�'B)���h���a�T�$�Ch�Ɣ�l�o��v�~�r=`E��j�6x�W�a)�,%m�V&g��o�!D�O?����ϴ�H�d(
�iJ �C64�aa�Y�	C�Q
��s!x��*����-�[�ҙt�kPS=�(��Z��P������1���3�i��}_hZ��A`*�4�ӄ�UиU(%���UH!���Q�4@��#�<;��2���5s�����  �0�k�����T���҈�`@������y�9�x+��83��X|�?���~<�2����7�B{��A*>܉�%垎�lhd�a�Bc�,�����:H(D껡��pE'���YR(f�{Y��"��� ���m>�~8 p��A�De`bG{ƈ"j�V(i��?3�!{@b��!�U�(x�e7V�ڦ%Y�����KMS�	X\	�1'�f$k%�s.Ͷ��~^Z�йmW��Q �$���Vla�U��X%a�+ %q��HF��D��P�Ц}��0z�>e���`��e\MGX�y�)���P��A ���=�\��}\*%��/Ng�aH�B-��3��ӻx�Yq���Rl6��')�"�:4���+��U0�T���+eϢ<��Vl����<�U\���Ⴠs�cBN����`y�w�d�+õ+�p���\ZhT@~���d��p�J�k�t_����vӷz����H��\4A�1�d�#�P���96N.�}h���m|�� x���u����\�@w���NڰJ]Rx�_:ѡ��ˍC�ի��dd���T����B`��DTE�
ɬә7�o�s�]�@�l�{rq�.��%�Q�%�LǇ~��L�qm���%bw�6=3*1���(�%$>�1�ү-��Ez������$q��
m+O���Mj@�Ĵ�O��}I����p7��;$B><R�&Lp`=��ao��^{�B!9b���ʍ�[ɉ�ی:�Ҕ�3JHa�h���W,o0}K<=�kq5�E+�&e��:J!��W\()���h��e����u�/�1K�u�WZ��j����P�J��mk����#����i4<U&8C?V���R�]`� �p��8ۥ�b;��p'q0Z�m4���a�AQ(V�`����B!W(��7��<��As1��q�����eݬyN�Z��m�V6�#��犓�>����S[ϱ���G�1B�q��?��x	�%i��pDo}�͗���>�IN*\��Y2Hm6<E�����V���=��ܦ"j���RNG��z}jj�z�Jd�vH�B>�_>�r��L��a\�O?�b� ��yrx�*}Sk�+X35�?��2�뿣Y
8{�~,OEm��j�=�%m�-����2�{���
��4�]g���C'�$Z�A�q�_��~[Q�K�b�F��T`r)0�j*��E������$"D�`{��5�<���n�ԈtC����A?��ЈJC�3�!����kN?[Q=j��ak ���+���U���>���K*��F�t'XuOB�_9�Z�vߩn%�/E*I�Hx!S9�^)�(�-�!uz�Y�Q��e?i��4j��-OV������|Q	�������~� �2=�)g��F�0�zz@��A�׀��I	w'��D�HhB��D���6��5N��~���MI���Mw�,H�T�T~Y%����� ����_�4tA.Ǭ]z�H��,B+�D4Mܗ�ʨpF-�lM�̊�I�W)ۍ�x%C�`��&�<�4ކi�f����8�x!��>Bt��A�z>��D31����y�)����0��i���ӡ$IY����=~�e��1��95����lk���h���
1�鏋�H�4�Jڭ:�Q�i�eЧ��8h��!wy-"�Pr^��x�r�J��a��!�H>�v�g��_���هz�"fl���v��8K�0����e#��Z�,�j/���DF�L�1��Co�??qV�����<F͆�;����"!��M3���{���,G�>������ST&o�[��w�鍙��8�m�rS[�=�J��b�R�3���0a��{�cs���Q�N�@�.��%!m���"���XPK�C3*�Ȣ���.�msZkh+;8+��.	6R���U �� �'�ߝ��{o����[t��
7y3���Ô��H1��>�c�,8n<�����r��]�^W���fHXD$��.������,8}�"h`�uԫ,$~R�rB�lE�ɑ���c���Y��e���q�}�š�W{r�a%�6b���*�7:�ء�聶i<����H6o�U�w�@�Η��ձ��n�/�A4�tB��k�A�(=�v!!���SΧ��,�"����A8 l�8�m��j��)([�X-c7uor⪑$�H�j�R�K/��h�]�z����鼎�|���z7�4�d�*;��ֱ���g�**w1RC�D�6C�Az���T:���-KM��2�S����NKӖ��$X40����+�)b�k�~��?��J()���%�(����f�BR��h�	�y��U�& �b�e�/-|��W(n�$a �6����A������*�˘@���C��\K������L���Ǎ:&�#�z	/�^y�����:�cd�"D�D�f�K�)U(��
	x�k��Eq̔ڔ(��N鬕�kZ�^�
��ES[��}���ֲ�����i����>�4oؕÚ>��4"`J�Z�H�de�c-�IK���\ы$l�o���L=Y�d���ڇ�"JZ ����6���5#
��>�vX؉1""$��x��w.�]�;Ri1m9	ݞ;Đ�+�Vy}����!0�5Ҹh�pj7�0�`����$Fɜ|'j��RUWR��w7����ebܨ�D-�g����P�W ��~ؗ�"vhA�����d0T����W{5�j	��ܦ�b;����,��9�X 8����
�[�&0�@����pB�[]2�P�$@L�\o-#Ja	�R&�q�G�&A� �T�����s%-�+�X�$܀f5
�,�;;z����r�䜕ؕO??d���K.uFV�+P�c	ћ�s� NWYbD�M4����gL8�v}�|�3�0KM�3�4lӌEc.�Y �2KA��}Q|hM\��)�m��Z0�J�/i��i��m.sf�$����$��/9��9�q���*�`���)$X〸�C�wh��@0���ճƇE�?���OuPF�����Wc�[s�X��4�bG&֪ (I��GTEVKI�.e��4Kc�R���$��=�*]jH\��-#a��%R�|�EI�Z�΍p��!-�����U�12H*��*H��l/����6,X�HKމ�5[i�ZF),�E��8S��߂��x�Ó�)D�ͭ-�!���H ^��Z�%}�x맗}H���F���y{��G����1��c�0l`�
�X�+�<m裱�|ҟ�`�!1j������]KYV��&��>���DP���9�%����k�	pD,��k��l�tQ
�٠�JK��H
������y�@�	�ڈ��$���6�o�QϒK��m��֐L�\UPX�+A-�v��3�eU�Bc-h��8�R���-h��7�9It�/�@:�\�wqY �f�Gȡdv*�kۥ{����o	�D$s�,�R./��/r�M3(�R��|��T5��P� ��]Kq+�c+_2����8	�&!hb��]s�v�g͎9�"cj�g7�9�u$;����ύ����Ob&�C(r�p�����d�UM�YV�DD��	zuI��Gg5\rT��.U�M �$A[Zʗ� ��T/�WhB�� E����d�M�6�n�[J�����U�V6!���%�M`����B� L�@�����9�N��\k���~�)z���n��Ǝ��IU�
c��!���B^p�Z�~H�y�*���	��H&��������E�ł������'��P���0�&�4k(,N'<�R��Hx�:v7���������´��0�Q�D4.��AA�L�Ѕ�̲V�1;���
(�H# (�������>�{�e�#�s#Q!R�\S��ף+v�tvӦ���u=�;% �� �bD���aij�3R�P���۳Ҹh�.T�Z0���_�K�+K��o��B�.�FF,�����DAQC�s��CK�����P��w�iV��#�XC@Ȫ�B�K��iV�w�B��L&V* ��d"�QP,��ZK ��%�I1�cSRe�	�����Ŷe!�3q h��$`���`R�9�!!��򚼜	
��qp� v���>�3H�R�T%5@�D.�J��5q#���e�lBbCM���d�Xi;��zMf�P!�$,�L�����`�n���k�D�����t�t����2��DeV����D��t���$v{	1�-검��nX�(`5�ͦ,7/������6�u��c4X���f���B�j��h��Drٖ��,�q�H�nB���&>��݆����y�SʂZѻjlAf� "�����9�+w���_�3*b�(eJ�G�_B�b-A����j&���	�f ��/.��{��Y��1���m4i$��!k���jU@q8U�"��֟z�f���.�^�dU%QB+���.� ��BV�%��x��G.EC��X���g4�IEb�M�z�Ҋ�əo����B��%|���GXs�WH1#�h�\�1\���*��h�P�lȄ�:5�NITf��bU�-@�����K�m�f`�$���$�>�!�<6��l��
"��A�n�r��(p[��o�(�֒'�Z*$@������)�|9q��7n$�M#�d�0s�"qH�d�p^R�a��{ES�m�V���G��JZ��m$+whQY��0ezˉ�LNe�H2t1#	��.��9�6L�(�!a����i/�0-�����b��r S�H4��B���;�p�")R����~�_>�$N6��#�a�ԯس��^2
��ڏ��@��cP�p��N�O&C��Y���~�0�����͘�5Ǜ�2�P���MT��2H>ӓ�m`����� �	*��CVkm�L��K��[HC�!�@h5��`�	�!�oVA
2�4��6�i�����7ێ�"$��� �^޻S��PL �P�i�ca\�6�mm�/�P��������+��^^d
�ŚS�G�ٌb	Yh��mj�O��z%��*��\��=;�0c�����u���Ť����oi<;Ls��T� ���UF�4�$�.��)�-R�e���A��"�%��ª������!Ex&4/'@�J��@�?���1D�����dF��-2�C�@��Q�4��O��'�Q�Z=u�ۆ��5�Y`�t�g��z���xy���z��!L�1�+�¥u����3!R��
�[q7Ȣ,�Q݊�7mJ�`r���y���{Z7 Q�>V�3�L5KM�t��Z���P���Nà�Y1W�J	P(��`�!�KN|�&f���[|�\�;�WnY+Dfz�?����.6B��Tb �e�s�.�0z�TC��C��ZIr�����)lzR��ņ�Ƃ�ƨ�A��Z�� ���@W;�P�`1r�e��N���AC1	(e{cd�)?7J"M�5��RFʤZ���,Aɕ!��@i-p�!"�y�*U����h��} �b�<m�߰��HeFeڑq!�c�
�TZvV��Dd�Fq�/
+zH^R?MR�⦐��~=;�N�0�]�;fפ�p�I��$�� cJ�UP� J�yth;c$z�DyR�e���Y�HCU�k�HBH�D�޵R� �q�!�!AR�/HhW�/B$j#_}C�6U�4+��y��cI4��ש`����!(�"�`�|�	ǉ��77�� �	���oYe���x�53��pez�{6���2��±��	(�JIpb)m1W[��eEXV��CIe�k�]�aF�� h$`�3�)=�Ӊ-��(��f�`�d`YA���J�4�L)��Y��ڱ ��� *r��6"�U�ېP��"���ʡ�$_p@@@���ѽ6�����=�3���\MnT!�C�S�o�s�b�b��!��/P$.��Ł72���B
��x� c��b�ޕ�
��"�=@IIT��/����2�����VX�Q�6�v���b��1{���B4�H�,e�E)V�.<p��-K/�.=�r��"tT& ��ձ������C!� AC3;�+�&UB0�r�)r)�i�$^�U���.tK5���7�e��|���Sz�u+M�Dˁ@�dAD��.�~���9���~�C� ��8��|*Xࣸ�4WO��T�Z����7էU����Y�q!�K�0A�H�L}��F�Sz�>�i��]��X�\��2�P�����LT�:N�T�� ځ�J��4�f �0qg+@>O.��j��@��5�믱�$�W�=OTH�4Ԯ�k�(9��`�#ϰN,�}�t�����Y=C�����DU�2(h����^n��Ո��`��Ji��ͨ��I����Ji�G0�_�Z�l#��M���*��Z@�r2_�Ĺ�'d���:Nwd���3K��FB�i��^�=.뽠3,!ڰ5SΞ�J"7�D�b���J���*�#�R�?;��\g	�C�G#����o��l�N|�6.���	@!���@_%��G�NDH�<ؽ_'�{!��k|ʥ?������c����U�?�q���ۙ���+�J=e;��43���P����*���C�^�����������"��@Ry��ܑN$"	I@