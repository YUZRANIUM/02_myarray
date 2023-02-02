; INFO ������������������������������������������������������������������������������
; FileName : 02_myarray_list.hs
; Version  : 0.28
; Date     : 2023/02/01
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
myarray_list
%ver
0.28
%date
2023/02/01
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
; union
; union_d
; uniformat
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
union_d
union
uniformat
dimlinec
linedim

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
uniformat
dimlinec
linedim

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
uniary
union
uniformat
dimlinec
linedim

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
union
union_d
uniary

;������������������������������������������������������������������������������������