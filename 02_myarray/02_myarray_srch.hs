; INFO ������������������������������������������������������������������������������
; FileName : 02_myarray_srch.hs
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
; sortgetc
; twinsortary
;
; str2ASCI
; ASCI2str
; ASCIcomp
;
; bisrch
; MDABiSrch
; MDALiSrch
;������������������������������������������������������������������������������������

%index
sortgetc
�\�[�g���C���f�b�N�X�擾
%prm
(index)
index : �C���f�b�N�X
%inst
���̊֐��́Asortget�̊֐��o�[�W�����ł��B
^

%sample
    ; �ꎞ�ۑ��p
    dim tmp_, length(ary2)
    foreach ary2
        tmp_(cnt) = ary2(cnt)
    loop

    ; ary1�̃\�[�g
    sortval ary1, 0

    ; ary1�ɍ��킹��ary2�̃\�[�g
    foreach ary2
        ary2(cnt) = tmp_(sortgetc(cnt))
    loop

%group
�T���E�\�[�g�֘A
%type
���[�U�[�g�����o�͐���֐�
%href
sotrget
sortstr
sortval
sortnote

;������������������������������������������������������������������������������������

%index
twinsortary
�����\�[�g
%prm
ary1, ary2, p1
ary1 : �z��ϐ���1
ary2 : �z��ϐ���2
p1   : ���~�� (= 0, 0: ���� / 1: �~��)
%inst
���̖��߂́Aary1�Ɏw�肳�ꂽ�z��̃\�[�g���s���A���̌��ʂɊ�Â���ary2�̃\�[�g���s�����̂ł��B
^
* ary1, ary2�Ƃ��ɁA1�����z��łȂ���΂Ȃ�܂���B�������z��̏ꍇ��cnvarray���߂�1�����z��ɕϊ����ĉ������B
* p1��0���w�肵���ꍇ��ary1�������A1���w�肵���ꍇ�͍~���Ƀ\�[�g����܂��B
^
                p1
---------------------------
    0   |  ���� (��������)
    1   |  �~�� (�傫����)
^
�����ł�sortval�y��sortstr��p����ary1���\�[�g���A���̃\�[�g���ʂɊ�Â���ary2���\�[�g���܂��B
%sample

%group
�T���E�\�[�g�֘A
%type
���[�U�[�g�����o�͐��䖽��
%href
sortgetc
sortval
sortstr

;������������������������������������������������������������������������������������

%index
str2ASCI
�����񂩂�ASCII�R�[�h��
%prm
ary1, s_v1
ary1 : �ǂݏo����̕ϐ���
s_v1 : ������܂��͕�����^�ϐ���
%inst
���̖��߂�s_v1�Ɏw�肳�ꂽ�������1��������ASCII�R�[�h�ɕϊ�����ary1�ɑ��������̂ł��B
^
* ary1��sdim���ŏ���������K�v�͂���܂���B
^
�I���R�[�h���A���s�R�[�h�܂ł�A������ASCII�R�[�h�֕ϊ����܂��B
���p�p���͂������A�S�p����(2�o�C�g�R�[�h, �V�t�gJIS)���܂܂�Ă��镶����ł�ASCII�R�[�h�ɕϊ��\�ł��B
���s��Aary1�ɂ�s_v1�Ŏw�肳�ꂽ�������ASCII�R�[�h��10�i���ň���i�[���ꂽ�����^��1�����z��ƂȂ�܂��B
^
�Ⴆ�΁A
    str2ASCI ascii_1, "����ɂ���HSP3"
�Ƃ���ƁAascii_1��

    ascii_1(0)  = 130
    ascii_1(1)  = 177
    ascii_1(2)  = 130
    ascii_1(3)  = 241
    ascii_1(4)  = 130
    ascii_1(5)  = 201
    ascii_1(6)  = 130
    ascii_1(7)  = 191
    ascii_1(8)  = 130
    ascii_1(9)  = 205
    ascii_1(10) = 72
    ascii_1(11) = 83
    ascii_1(12) = 80
    ascii_1(13) = 51
    ascii_1(14) = 0

�ƂȂ�܂��B�Ō��0�͏I���R�[�h�ł��B
^
����𕶎���ɕ���������ɂ�ASCI2str�֐��𗘗p���ĉ������B

%sample
    #include "02_myarray.hsp"

    str2ASCI ascii_1, "����ɂ��͂g�r�o�R"
    str2ASCI ascii_2, "����ɂ���HSP3"

    foreach ascii_1
        mes ascii_1(cnt)
    loop
    mes ASCI2str(ascii_1)

    pos 100, 0
    foreach ascii_2
        mes ascii_2(cnt)
    loop
    mes ASCI2str(ascii_2)

    stop

%group
ASCII�֘A
%type
���[�U�[��`����
%href
ASCI2str
ASCIcomp

;������������������������������������������������������������������������������������

%index
ASCI2str
ASCII�R�[�h���當�����
%prm
(ary1)
ary1 : ASCII�R�[�h���i�[�����ϐ���
%inst
���̊֐���ary1�Ŏw�肳�ꂽASCII�R�[�h�𕶎���Ƃ��ēǂݏo�����߂̂��̂ł��B
^
* ary1�ɂ�str2ASCI���߂ŏo�͂��ꂽ�ϐ������w�肵�ĉ������B
^
������getstr���߂𗘗p���Ă���̂ŉ��s�R�[�h�͓ǂݏo���܂���B

%sample

%group
ASCII�֘A
%type
���[�U�[��`�֐�
%href
str2ASCI
ASCIcomp

;������������������������������������������������������������������������������������

%index
ASCIcomp
�������ASCII�R�[�h�Ŕ�r
%prm
(ary1, ary2, p1)
ary1, ary2 : ASCII�R�[�h���i�[�����ϐ���
p1         : �Ԃ�t���O (= 0, 0:�������� / 1:�傫����)
%inst
���̊֐���str2ASCI���߂ŏo�͂��ꂽASCII�R�[�h�ŕ�������r������̂ł��B
^
* p1 ���ȗ��A�܂���0���w�肵���ꍇ�͏��������́A1���w�肵���ꍇ�͑傫�����̈���(�p�����[�^)�ԍ����Ԃ�܂��B
^
            �Ԃ�l (stat)
-----------------------------------
     1  |  ary1 �̕���������(�傫��)
     2  |  ary2 �̕���������(�傫��)
     0  |  ���S��v
^


%sample
    #include "02_myarray.hsp"

    str2ASCI ascii_1, "Hot Soup Processor"
    str2ASCI ascii_2, "HOT SOUP PROCESSOR"

    foreach ascii_1
        mes ascii_1(cnt)
    loop
    mes ASCI2str(ascii_1)

    foreach ascii_2
        mes ascii_2(cnt)
    loop
    mes ASCI2str(ascii_2)

    mes ASCIcomp(ascii_1, ascii_2)

%group
ASCII�֘A
%type
���[�U�[��`�֐�
%href
str2ASCI
ASCI2str

;������������������������������������������������������������������������������������

%index
bisrch
�񕪖ؒT��
%prm
item, srch_ary, srch
item     : �T������l�������͂�����i�[�����ϐ���
srch_ary : �T�����̕ϐ��� (1�����z��)
srch     : ���ʂ��󂯎��ϐ���
%inst
���̖��߂́Aitem�Ŏw�肳�ꂽ�l��srch_ary�̒��œ񕪖ؒT�����s���Asrch_ary�̔z��v�f��srch�ɓǂݏo�����̂ł��B
^
* item �ɂ͕�����A�����l�A�����l�A�܂��͂������i�[�����ϐ����w�肵�ĉ������B
* srch_ary �͂��炩���߁A�����\�[�g����Ă��邱�Ƃ��O��ł��B
^
���s��A�T���ɐ��������ꍇ��srch_ary�̔z��v�f��srch�ɑ������܂��B�T���Ɏ��s�����ꍇ��srch��-1���������܂��B
�������z��ϐ����\�[�g����ꍇ��MDAQSort��MFCMQSort���߂��g�p���ĉ������B

%sample

%group
�T���E�\�[�g�֘A
%type
���[�U�[��`����
%href
mlgetc
MDABisrch
MDAQSort
MFCQSort

;������������������������������������������������������������������������������������

%index
MDABiSrch
�񕪖ؒT�� �������z��d�l
%prm
item, srch_ary, srch
item     : �T������l�������͂�����i�[�����ϐ���
srch_ary : �T�����̔z��ϐ���
srch     : �ϐ���
%inst
���̖��߂͑������z��ϐ��̓񕪖ؒT�����s�����̂ł��B
^
* item �ɂ͕�����A�����l�A�����l�A�܂��͂������i�[�����ϐ����w�肵�ĉ������B
* srch_ary �ɂ�1�����z��͂������A2�����ȏ�̑������z��ϐ��̎w�肪�\�ł��B
* srch �ɂ͒T���̌��ʂ��󂯎��ϐ������w�肵�ĉ������B
^
���̖��߂̎��s��A�T���̌��ʂ�srch�ɑ������܂��B�T���ɐ��������ꍇ��srch_ary��1�������v�f�����A���s�����ꍇ��-1���������܂��B
^
1�������v�f����linedim���߂𗘗p���邱�ƂŖ{����srch_ary�̊e�����v�f���������܂��B�܂��Auniary�֐���union�֐��ł�1�������v�f������l�𒼐ړ��邱�Ƃ��\�ł��B
^
���ӎ����Ƃ��āAsrch_ary�͂��炩���ߏ����\�[�g����Ă���K�v������܂��B
%sample
    :
    dim item_values, 10, 5, 5
    :
    MDABiSrch item, item_values, index

    if (index != -1) {mes uniary(item_values, index)} else {mes "not found!"}

    stop
%group
�T���E�\�[�g�֘A
%type
���[�U�[��`�֐�
%href
uniary
str2ASCI
ASCI2str
ASCIcomp
bisrch
MDALiSrch
MDAQSort
MFCQSort

;������������������������������������������������������������������������������������

%index
MDALiSrch
���`�T�� �������z��d�l
%prm
(item, srch_ary)
item     : �T������l�������͂�����i�[�����ϐ���
srch_ary : �T�����̔z��ϐ���
%inst
���̊֐��́Aitem�Ŏw�肳�ꂽ�l�𑽎����z��ϐ�srch_ary���Ő��`�T�����s���A���̒T�����ʂ�Ԃ����̂ł��B
^
* item �ɂ͕�����A�����l�A�����l�A�܂��͂������i�[�����ϐ����w�肵�ĉ������B
^
���s��A�T���ɐ��������ꍇ��srch_ary��1�������v�f�����A���s�����ꍇ��-1���Ԃ�܂��B
1�������v�f����linedim���߂𗘗p���邱�ƂŖ{����srch_ary�̊e�����v�f���������܂��B�܂��Auniary�֐���union�֐��ł�1�������v�f������l�𒼐ړ��邱�Ƃ��\�ł��B
^
���`�T���Ȃ̂�srch_ary���\�[�g���Ă����K�v�͂Ȃ��K�v�͂���܂���B�܂��A�T���񐔂��Ȃ�ׂ����Ȃ��Ȃ�悤�T���ӏ���6�����ĒT�����s���̂ŁA�ő�T���񐔂͌��̃f�[�^�ʂ̂��悻6���̈���x�ƂȂ�܂��B


%sample
    :
    k = MDALiSrch("���", item_values)

    if (k != -1) {mes uniary(item_values, k)} else {mes "not found!"}

    stop
%group
�T���E�\�[�g�֘A
%type
���[�U�[��`�֐�
%href
linedim
uniary
bisrch
MDABiSrch

;������������������������������������������������������������������������������������

%index
MDAQSort
�������z��N�C�b�N�\�[�g
%prm
ary1, mode, frst, last
ary1 : �ϐ���
mode : ���~���؂�ւ� (= 0, 0:���� / 1:�~��)
frst : �\�[�g��Ԃ̊J�n�l (1�������v�f��)
last : �\�[�g��Ԃ̏I���l (1�������v�f��)
%inst
���̖��߂́Aary1�Ɏw�肳�ꂽ�z��ϐ��̒l���\�[�g������̂ł��B
^
ary1�͕�����^�A�����^�A�����^��1, 2, 3, 4�A������̎����ɂ��Ή����Ă��܂��B
mode�ł̓\�[�g���̏��~����I���ł��A�ȗ���������0�w��ŏ����A1�w��ō~���ƂȂ�܂��B
frst�����last���w�肵���ꍇ�́A�z��ϐ���frst����last�܂ł̈ꕔ���݂̂��\�[�e�B���O�̑ΏۂƂ��܂��B�ȗ����͔z��ϐ��̂��ׂĂ̒l�i�S��ԁj���\�[�g���܂��B
^
frst�����last�́Aary1��1�����z��ϐ��̏ꍇ�͂��̗v�f���ŁA�������z��ϐ��i2, 3, 4�����j�̏ꍇ��dimlinec�֐��œ�����1�������v�f���ŁA���ꂼ��\�[�e�B���O�̋�Ԃ��w��ł��܂��B

%sample
    #include "02_myarray.hsp"

    dim test, 12, 10, 5, 4

    dim_info test, test_info   ; test�̔z�����test_info�֓ǂݏo��
                               ; test_info(5)�ɂ́A4�����z��ϐ�test�̔z�񑍐����������Ă���
    ; test�̗v�f�̐������J��Ԃ�
    repeat test_info(5)
        Auniary test, cnt, rnd(100), test_info   ; test��1�������v�f����cnt�̂Ƃ����rnd(100)��������
    loop

    ; test(6, 5, 4, 2) ���� test(0, 0, 0, 3) �܂ł͈̔͂������Ń\�[�g
    MDAQSort test, 0, dimlinec(test, 6, 5, 4, 2), dimlinec(test, 0, 0, 0, 3)

    repeat test_info(5)
        mes "" + uniary_(test, cnt, test_info)
    loop

%group
�T���E�\�[�g�֘A
%type
���[�U�[��`����
%href
dimlinec
bisrch
MDABiSrch
MFCQSort

;������������������������������������������������������������������������������������

%index
MFCQSort
���@�\�����^�N�C�b�N�\�[�g
%prm
ary1, mode, frst, last
ary1 : �ϐ���
mode : ���~���؂�ւ� (= 0, 0:���� / 1:�~��)
frst : �\�[�g��Ԃ̊J�n�l (1�������v�f��)
last : �\�[�g��Ԃ̏I���l (1�������v�f��)
%inst
���̖��߂́Aary1�Ɏw�肳�ꂽ�z��ϐ��̒l���\�[�g������̂ł��B
^
ary1�͕�����^�A�����^�A�����^��1, 2, 3, 4�A������̎����ɂ��Ή����Ă��܂��B
mode�ł̓\�[�g���̏��~����I���ł��A�ȗ���������0�w��ŏ����A1�w��ō~���ƂȂ�܂��B
frst�����last���w�肵���ꍇ�́A�z��ϐ���frst����last�܂ł̈ꕔ���݂̂��\�[�e�B���O�̑ΏۂƂ��܂��B�ȗ����͔z��ϐ��̂��ׂĂ̒l�i�S��ԁj���\�[�g���܂��B
^
frst�����last�́Aary1��1�����z��ϐ��̏ꍇ�͂��̗v�f���ŁA�������z��ϐ��i2, 3, 4�����j�̏ꍇ��dimlinec�֐��œ�����1�������v�f���ŁA���ꂼ��\�[�e�B���O�̋�Ԃ��w��ł��܂��B
^
�@�\�I�ɂ�MDAQSort���߂ƕς��܂���B


%sample

%group
�T���E�\�[�g�֘A
%type
���[�U�[��`����
%href
dimlinec
bisrch
MDABiSrch
MDAQSort

;������������������������������������������������������������������������������������
