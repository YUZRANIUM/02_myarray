; INFO ������������������������������������������������������������������������������
; FileName : 02_myarray_list.hs
; Version  : 0.28.3
; Date     : 2023/04/01
; Author   : YUZRANIUM�i�䂸��ɂ��ށj
; Twitter  : https://twitter.com/YUZRANIUM
; GitHub   : https://github.com/YUZRANIUM/02_myarray
;������������������������������������������������������������������������������������
; Description
;
;   ���̃��W���[����HSPTV!�f���̊F�l�ɂ���Ďx�����Ă���܂��B
;   ���̏���؂�Ċ��Ӑ\���グ�܂��B���ɗL��������܂��B
;
;   ***  �f�����  ***
;   kind    : ��`
;   date    : 2023/01/16
;   person  : Yuzranium
;   content : �������z����Ȃ�₩��₷��
;
;   ***  �f����� (�ߋ����O)  ***
;   date    : 2022/11/26
;   content : �������z��ϐ��𕡐��s�������
;������������������������������������������������������������������������������������

%dll
myarray
%ver
0.28.3
%date
2023/04/01
%author
YUZRANIUM
%url
https://twitter.com/YUZRANIUM
https://github.com/YUZRANIUM/02_myarray
%note
02_myarray.hsp���C���N���[�h���邱��
%port
Win

;������������������������������������������������������������������������������������
; uniary
; uniary_
; union
; union4
; union_d
; union4d
; uniformat
; Auniary
;������������������������������������������������������������������������������������

%index
uniary
�������z���1�����Ƃ��Ĉ���
%prm
(ary, dim_ofset)
ary       : �z��ϐ���
dim_ofset : �z��̃I�t�Z�b�g�l
%inst
���̊֐��͂����鑽�����z���1�����z��Ƃ��Ĉ������̂ł��B
^
* ary �́A������^�A�����^�A�����^�̂ݑΉ����Ă��܂��B
* dim_ofset �ɂ́A�z��̃I�t�Z�b�g�l(1�������v�f��)���w�肵�ĉ������B
^
1�����������������z��ϐ��ɒl�����������ꍇ�́AAuniary���߂��g�p���ĉ������B


%sample
    :
    dim ary1, 10, 5, 4, 3
    setarray ary1, 0, 1, 2

    mes uniary(ary1, 50)

    ; ���ׂď����o��
    repeat dimlinec(ary1)
        mes uniary(ary1, cnt)
    loop

    stop
%group
�z����ꑀ��
%type
���[�U�[�g�����o�͐��䖽��
%href
dimlinec
linedim
uniary_
union
union4
union_d
union4d
uniformat
Auniary

;������������������������������������������������������������������������������������

%index
uniary_
�������z���1�����Ƃ��Ĉ���(�Ɩ��p)
%prm
(ary, dim_ofset, ary_info)
ary       : �z��ϐ���
dim_ofset : �z��̃I�t�Z�b�g�l
ary_info  : �z������i�[�����ϐ�
%inst
���̊֐��́Auniary�֐������[�v���Ŏg�p����Ƃ��⓯���ϐ��������Ƃ��Ȃǂɓ����������̂ł��B
^
������e��d�l��uniary�֐��Ɠ����ł����A
�g�p�O�ɂ��炩����dim_info���߂�ary�Ɋւ���z������擾���Ă����K�v������܂��B
^
1�����������������z��ϐ��ɒl�����������ꍇ�́AAuniary���߂��g�p���ĉ������B

%sample
    :
    dim ary1, 10, 5, 4, 3
    setarray ary1, 0, 1, 2

    dim_info ary1, ary1_info
    mes uniary_(ary1, 50, ary1_info)

    ; ���ׂď����o��
    repeat dimlinec(ary1)
        mes uniary_(ary1, cnt, ary1_info)
    loop

    stop
%group
�z����ꑀ��
%type
���[�U�[�g�����o�͐��䖽��
%href
dimlinec
linedim
uniary
union_d
union
uniformat
Auniary

;������������������������������������������������������������������������������������

%index
union
�z���l�ł܂Ƃ߂�
%prm
(ary1, ary2, ary3, ary1_val)
ary1, ary2, ary3 : �z��ϐ���
ary1_val         : ary1�̒l
%inst
���̊֐���3�̑������z���z��ϐ�ary1�̒l�ł܂Ƃ߂�1�����z��Ƃ��Ĉ������̂ł��B
^
* ary1, ary2, ary3�͂��ꂼ��A������^�A�����^�A�����^�̂ݑΉ����Ă��܂��B�����̐���͂���܂���B
* ary1_val �ɂ́Aary1�̒l�������͂�����i�[�����ϐ����w�肵�ĉ������B
^
ary1_val�̒l��ary1�̒�����MDALiSrch�֐���p���Đ��`�T�����s���A����ꂽ1�������v�f����uniary�֐���ary2, ary3�̒l����肵�܂��B
^
ary1_val�̒l��T�����镪�Aunion_d�֐���������͒x�߂ł��B

%sample
    :
    ; ���i��
    sdim fruits, 64, 3, 2
    fruits(0, 0) = "���", "�݂���", "�Ԃǂ�"
    fruits(0, 1) = "������", "�΂Ȃ�", "�����"

    ; �P��
    unit_price = 30.2, 25.5, 55.3, 42.7, 26.0, 75.8

    ; �d���ꐔ
    purchase_quantity = 100, 80, 90, 120, 130, 110

    ; �̔����i
    calc_ary selling_price, unit_price, purchase_quantity, 2  ; ��Z

    ; �Ԃǂ��̏��i���Ɣ̔����i�A�d���ꐔ��\��
    mes union(fruits, selling_price, purchase_quantity, "�Ԃǂ�")

    ; �d���ꐔ��130�̏��i���Ƃ��̒P����\��
    mes union(purchase_quantity, fruits, unit_price, 130)

    stop
%group
�z����ꑀ��
%type
���[�U�[��`�֐�
%href
uniary
union_d
union4d
uniformat
dimlinec
linedim

;������������������������������������������������������������������������������������

%index
union4
�z���l�ł܂Ƃ߂�
%prm
(ary1, ary2, ary3, ary4, ary1_val)
ary1, ary2, ary3, ary4 : �z��ϐ���
ary1_val               : ary1�̒l
%inst
���̊֐���union�֐��̏�ʔł�4�̑������z��ϐ����܂Ƃ߂Ĉ������̂ł��B
^
�e�p�����[�^�̉����union�֐��̍��ڂ��Q�l�ɂ��ĉ������B

%sample

%group
�z����ꑀ��
%type
���[�U�[��`�֐�
%href
uniary
union
union_d
union4d

;������������������������������������������������������������������������������������

%index
union_d
�z����I�t�Z�b�g�ł܂Ƃ߂�
%prm
(ary1, ary2, ary3, dim_ofset)
ary1, ary2, ary3 : �z��ϐ���
dim_ofset        : �z��̃I�t�Z�b�g�l
%inst
���̊֐���3�̑������z���z��ϐ�ary1�̔z��̃I�t�Z�b�g�l�ł܂Ƃ߂�1�����z��Ƃ��Ĉ������̂ł��B
^
* ary1, ary2, ary3�͂��ꂼ��A������^�A�����^�A�����^�̂ݑΉ����Ă��܂��B�����̐���͂���܂���B
* dim_ofset �ɂ́A�z��̃I�t�Z�b�g�l���w�肵�ĉ������B
^
union�֐��ł�ary1�̒l�Ő��`�T�����s��1�������v�f�������߂�Ƃ�������������܂������Aunion_d�֐��͒T���������Ȃ���union�֐���蓮��͊������߂ł��B


%sample
    :
    ; ���i��
    sdim fruits, 64, 3, 2
    fruits(0, 0) = "���", "�݂���", "�Ԃǂ�"
    fruits(0, 1) = "������", "�΂Ȃ�", "�����"

    ; �P��
    unit_price = 30.2, 25.5, 55.3, 42.7, 26.0, 75.8

    ; �d���ꐔ
    purchase_quantity = 100, 80, 90, 120, 130, 110

    ; �̔����i
    calc_ary selling_price, unit_price, purchase_quantity, 2  ; ��Z

    ; �Ԃǂ��̏��i���Ɣ̔����i�A�d���ꐔ��\��
    mes union_d(fruits, selling_price, purchase_quantity, 2)

    stop
%group
�z����ꑀ��
%type
���[�U�[��`�֐�
%href
dimlinec
linedim
uniary
uniary_
union
uniformat

;������������������������������������������������������������������������������������

%index
union4d
�z����I�t�Z�b�g�ł܂Ƃ߂�
%prm
(ary1, ary2, ary3, ary4, dim_ofset)
ary1, ary2, ary3, ary4 : �z��ϐ���
dim_ofset              : �z��̃I�t�Z�b�g�l
%inst
���̊֐���union_d�֐��̏�ʔł�4�̑������z��ϐ����܂Ƃ߂Ĉ������̂ł��B
^
�e�p�����[�^�̉����union_d�֐��̍��ڂ��Q�l�ɂ��ĉ������B

%sample

%group
�z����ꑀ��
%type
���[�U�[��`�֐�
%href
uniary
union
union4
union_d

;������������������������������������������������������������������������������������

%index
uniformat
union������`
%prm
s_format
s_format : ����������
%inst
���̖��߂́Aunion�֐��y��union_d�֐��̏o�͎��̏�����ݒ肷����̂ł��B
^
�����������strf�֐��̂��̂Ɠ����ł��B
^
���̖��߂��Ă΂�Ă��Ȃ��A�������̓X�N���v�g�̓r���ŏ��������ꂽ�ꍇ��myarray_list���W���[�����̏�����������Ǘ����Ă���sfrmt�ϐ��̏������K�p����܂��B

%sample

%group
�z����ꑀ��
%type
���[�U�[��`�֐�
%href
uniary
uniary_
union
union_d

;������������������������������������������������������������������������������������

%index
Auniary
1���������đ��
%prm
ary1, dim_ofset, in_val, ary1_info
ary1      : �ϐ���
dim_ofset : �z��̃I�t�Z�b�g�l (1�������v�f��)
in_val    : ����l
ary1_info : �z������i�[�����ϐ�
%inst
���̖��߂́A�������z��ϐ�ary1��in_val�Ŏw�肳�ꂽ�l����������̂ł��B
^
������^�A�����^�A�����^�̂��ׂĂ̎����ɑΉ����Ă��܂��B
ary1_info��ary1�Ɋւ�������i�[�����z��ϐ��ŁA���炩����dim_info���߂��g�p���Ď擾���Ă����K�v������܂��B
^
dim_info���߂�Auniary���߂�p����Δ�r�I�ȒP�ɁA�������z��ϐ��̂��ׂĂɒl�������Ă������Ƃ��\�ł��B

%sample
    #include "02_myarray.hsp"

    dim ary, 10, 10, 5, 3
    dim_info ary, ary_info

    randomize
    repeat ary_info(5)
        Auniary ary, cnt, rnd( ary_info(5) ), ary_info
    loop

%group
�z����ꑀ��
%type
���[�U�[��`����
%href
dim_info
uniary
uniary_

;������������������������������������������������������������������������������������
