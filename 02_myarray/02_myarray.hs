; INFO ������������������������������������������������������������������������������
; FileName : 02_myarray.hs
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
myarray
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
; mlgetc
;
; dimlinec
; linedim
;
; ctlarray
; ctlarray_start
; ctlarray_end
; ctlexcld
;
; calc_ary
; calc_continue
;
; priarray
; setarray
; outarray
; cnvarray
; labarray
; ------------------
; logpri
; mesans
;
; objprh
;������������������������������������������������������������������������������������

%index
mlgetc
���W���[������x�����擾
%prm
(v1)
v1 : �ϐ���
%inst
���̊֐��́Av1�Ɏw�肳�ꂽ���x���^�A�������̓��W���[���^�ϐ��̃��x��������W���[������Ԃ����̂ł��B
^
* v1 �ɂ̓��x���^�A�������̓��W���[���^�̕ϐ��̂ݎw��\�ł��B
^
HSPCTX�\���̂��烉�x��������W���[�����̈ꗗ���N���[�����A���X�g���������̂̒�����T�����܂��B�T�����@�͓񕪖ؒT���ł��B
�T���ɐ��������ꍇ�͈�v�������̂𕶎���ŕԂ��܂��B�T���Ɏ��s�����ꍇ�́A���x���^��<null-label>, ���W���[���^��[not-found]�����ꂼ��Ԃ�܂��B
%sample

%group
�g�����o�͐���
%type
���[�U�[�g�����o�͐���֐�
%href
bisrch

;������������������������������������������������������������������������������������

%index
dimlinec
�v�f������I�t�Z�b�g�l��
%prm
(ary1, d1, d2, d3, d4)
ary1        : �������z��̕ϐ���
d1,d2,d3,d4 : �e�����v�f (= 0)
%inst
���̊֐��́Aary1�Ɏw�肳�ꂽ�������z��̗v�f(d1, d2, d3, d4)���A1�����z��ɕϊ������ۂ̗v�f��Ԃ����̂ł��B
^
* ary1 �ɂ͑ΏۂƂȂ鑽�����z��̕ϐ������w�肵�ĉ������B
* d1,d2,d3,d4 �ɂ́Aary1�Ŏw�肵���z��̗v�f���w�肵�ĉ������B
^
d1�ȍ~�S�Ă��ȗ������ꍇ��ary1�Ŏw�肵���z��� "����" ���Ԃ���܂��B
^
�Ⴆ�΁Adim a, 3, 3, 2 �Ə���������3�����z��a�́A1�����z��z�ŉ��̂悤�ɕ\�����Ƃ��ł��܂��B
^
        a(0, 0, 0)   ==>   z(0)
        a(1, 0, 0)   ==>   z(1)
        a(2, 0, 0)   ==>   z(2)
        a(0, 1, 0)   ==>   z(3)
             :               :
        a(0, 1, 1)   ==>   z(12)
             :               :
        a(1, 2, 1)   ==>   z(16)
        a(2, 2, 1)   ==>   z(17)
^
��L�̂悤�ɁA�������z���1�����z��ŕ\������̂��Ƃ𑼌���ł� "1������" �܂��� "���R��"�A"�t���b�g��"�A �ȂǂƌĂԂ��Ƃ�����܂��B
^
���̂Ƃ��A1�����z��z�̗v�f��3�����z��a�̐擪a(0, 0, 0)����_�Ƃ����I�t�Z�b�g�l�Ƒ����邱�Ƃ��ł��A3�����z��a�̗v�f�ɑ΂��Ĉ�Έ�̊֌W�ɂ���܂��B���̊֌W��3�����z��a�̎��������ω����Ȃ�����ێ�����܂��B���̂��߁A1�����z��z�̗v�f���A"�z��a�̃I�t�Z�b�g�l" �܂��� "�z��a��1�������v�f��" �ƌĂ�ł��܂��B
^
���ɁA"�z��̃I�t�Z�b�g�l" ("1�������v�f��") �̑����� "�z��̒���" �܂��� �P�� "����" �ƌĂԂ��Ƃ�����܂��B�Ⴆ�΁A1�����z��z�̗v�f���̑����� 17 + 1 �� 18 �ł��邱�Ƃ���A�u3�����z��a�� "����" �� 18 �ł���v�ƕ\���ł��܂��B
^
d1�ȍ~���ȗ���dimlinec(a)�Ƃ����ꍇ�� "�z��̒���" �A�܂��̗�ł� 18 ���Ԃ�Ad1�ȍ~���w�肵���ꍇ�A�Ⴆ�Ώ�La(0, 1, 1)�̂Ƃ�z(12)�ł��̂ŁAdimlinec(a, 0, 1, 1)�Ƃ����ꍇ�� 12 ���Ԃ�܂��B
^
���̂悤�ɁA"�z��̃I�t�Z�b�g�l" ("1�������v�f��") ��Ԃ��֐���dimlinec�֐��ł��B
^
dimlinec�֐��𗘗p���邱�ƂŁA�������z���1�����z��̂悤�Ɉ������Ƃ��\�ɂȂ�܂��Bctlarray���߂ł� "1�������v�f��" �ŊJ�n�l�ƏI���l���w�肷�邱�ƂɂȂ�܂��Bctlarray���߂ő������z��������ꍇ��dimlinec�֐����g�p���ĉ������B
^
��linedim���߂̍��ڂ����킹�ēǂ�ł��������B
%sample

%group
�z�����ϊ�
%type
���[�U�[�g�����o�͐���֐�
%href
linedim
ctlarray
uniary

;������������������������������������������������������������������������������������

%index
linedim
�I�t�Z�b�g�l����v�f����
%prm
ary1, i_, dim_ofset
ary1      : �������z��̕ϐ���
i_        : �e�����v�f��ǂݏo���ϐ���
dim_ofset : �z��̃I�t�Z�b�g�l
%inst
���̖��߂́Adim_ofset�Ŏw�肳�ꂽ�l����Aary1�Ŏw�肳�ꂽ�z��ɑ΂���e�����v�f���Z�o���Ai_�ɓǂݏo�����̂ł��B
^
* i_ �ɂ�ary1�̊e�����v�f���ǂݏo����܂��B
* dim_ofset �ɂ͔z��̃I�t�Z�b�g�l���w�肵�ĉ������B
^
���s��Ai_�Ɏw�肳�ꂽ�ϐ��͐����^�̔z��ϐ��ƂȂ�܂��B
^
�Ⴆ�΁Adim a, 3, 3, 2 �Ə���������3�����z��a�́A1�����z��z�ŉ��̂悤�ɕ\�����Ƃ��ł��܂��B
^
        a(0, 0, 0)   ==>   z(0)
        a(1, 0, 0)   ==>   z(1)
        a(2, 0, 0)   ==>   z(2)
        a(0, 1, 0)   ==>   z(3)
             :               :
        a(0, 1, 1)   ==>   z(12)
             :               :
        a(1, 2, 1)   ==>   z(16)
        a(2, 2, 1)   ==>   z(17)
^
�����ŁA
^
        linedim a, i, 12
^
�Ƃ���Ǝ��s��A�ϐ�i�ɂ͉��̂悤�ɐ��l���������܂��B
^
        i(0) = 0
        i(1) = 1
        i(2) = 1
        i(3) = 0
^
����́A3�����z��a�̐擪(0, 0, 0)��0�Ƃ��āA12�Ԗڂ̊e�����v�f�͏��ԂɁA(0, 1, 1)�ł���Ƃ������Ƃ������Ă��܂��B���݂��Ȃ��ꍇ�Alength2,length3,length4�Ɠ��l��0��Ԃ��܂��B
^
���̗l�ɁA1���������ꂽ�z��̗v�f����A���̊e�����v�f��Ԃ����߂�linedim���߂ł��B
^
��dimlinec�֐��̍��ڂ����킹�ēǂ�ł��������B
%sample

%group
�z�����ϊ�
%type
���[�U�[�g�����o�͐��䖽��
%href
dimlinec
ctlarray
uniary

;������������������������������������������������������������������������������������

%index
ctlarray
���쐧�䖽��
%prm
p1, p2
p1 : ������J�n����z��̃I�t�Z�b�g�l
p2 : ������I������z��̃I�t�Z�b�g�l
%inst
���̖��߂́Apriarray,setarray,outarray,labarray,cnvarray���߂̓���𐧌䂷����̂ł��B
^
* p1,p2 �ɂ́A���ꂼ��z��̃I�t�Z�b�g�l���w�肵�ĉ������B
^
�����ł����A�z��̃I�t�Z�b�g�l�Ƃ͑������z���1�����������v�f���̂��Ƃ������܂��B���̂���1�����z��ł���΂��̗v�f�����̂܂܎w�肵�ĉ������B�������z��̏ꍇ��dimlinec�֐����g�p����ΊȒP�Ɏw�肷�邱�Ƃ��\�ɂȂ�܂��B
^
ctlarray���߂̒���ɒu�������߂̓��삪p1����p2�͈̔͂ɐ�������܂��B�����̖��߂ɓ����͈͂̐�����������ꍇ�́Actlarray_start�y��ctlarray_end���g�p���ĉ������B
^
��dimlinec�֐��Alinedim���߂̍��ڂ����킹�ēǂ�ł��������B

%sample
    ; �z��̐擪����I�t�Z�b�g�l25�Ԗڂ���50�Ԗڂ܂ł�\��
    ctlarray 25, 50
    priarray moni, sary

    ; �z��̊e�����v�f���œ���͈͂��w�肷�邱�Ƃ��\
    ctlarray dimlinec(sary, 7, 6), dimlinec(sary)    ; �v�f�̎w����ȗ�����ƍŌ�܂łɂȂ�
    priarray moni, sary


    ; �����������܂Ƃ߂Đ��䂷�邱�Ƃ��\
    ;
    ctlarray_start    //// ����J�n ////
        ;-------------------------------
        ctlarray 55, 120        ; �͂��߂ɓ���͈͂��w�肷��K�v������܂��B

        setarray iary, 35, 1, -3    ; �r������A�����
        linedim iary, i, 55         ; iary�̐擪����55�Ԗڂ̊e�����v�f�����m�F

        ; ����̏��O
        ctlexcld : priarray moni, i

        ;-------------------------------
        ctlarray 125, 150       ; �ēx�Ăяo���ƁA�ȍ~�̓���͈͂��X�V�����

        setarray iary, 15, 1, 2
        priarray moni, iary

    ctlarray_end     //// ����I�� ////
    ;
    ; �I�����͕K���Ăяo���ĉ������B

%group
���쐧�䖽��
%type
���[�U�[�g�����o�͐��䖽��
%href
dimlinec
linedim
ctlarray_start
ctlarray_end
ctlexcld

;������������������������������������������������������������������������������������

%index
calc_ary
�z�񉉎Z
%prm
ans_ary, ary1, ary2, calc_type, error_stop
ans_ary    : �𓚂��󂯎��ϐ���
ary1,ary2  : �ϐ���
calc_type  : ���Z�^�C�v (= 0)
error_stop : 0���Z�t���O (= 0, 0:��~���Ȃ� / 1:��~����)
%inst
���̖��߂́Aary1, ary2�Ŏw�肳�ꂽ�������z��ǂ������v�Z���A���ʂ�ans_ary�ɑ��������̂ł��B
^
        ans_ary = ary1 / ary2   (���C���[�W)
^
* ans_ary �͏���������K�v�͂���܂���B
* ary1, ary2 �ɂ́A�������z��̑��A�ʏ�ϐ����w��\�ł��B
* calc_type �ɂ͈ȉ��̒l���w�肵�ĉ������B�ȗ�����0(���Z)�ƂȂ�܂��B
* error_stop�̓G���[�R�[�h19 "0�ŏ��Z���܂���" ����������ɒ�~���邩�ǂ������w�肵�ĉ������B
^
        calc_type�̎w��l�Ɠ���
       -----------------------------
        0  |  ���Z  ( + ) (�ȗ���)
        1  |  ���Z  ( - )
        2  |  ��Z  ( * )
        3  |  ���Z  ( / )
        4  |  ��]  ( \ )
        5  |  ����1 (ary1 + ary1 * ary2)
        6  |  ����1 (ary1 - ary1 * ary2)
        7  |  ����2 (ary1 + ary1 * ary2 * 0.01)
        8  |  ����2 (ary1 - ary1 * ary2 * 0.01)
^
calc_type 5(����1), 6(����1)�́A�����w��ł̊���������v�Z�A7(����2), 8(����2)�́A�S����(%)�w��ɂ�銄��������v�Z�ł��B
^
        error_stop�̎w��l�Ɠ���
       -------------------------
        0  |  ��~���Ȃ� (�ȗ���)
        1  |  ��~����
^
error_stop���ȗ��܂���0���w�肷���ary2�̒l�̊m�F���s���A0�ŏ��Z���Ă��܂��悤�ȏꍇ�ɂ͌v�Z���s�킸�A����Ɉُ�l�������Ĕz�񉉎Z�𑱍s���܂��B��������ُ�l�͉��̗l�ɂȂ�܂��B1���w�肷��Ɠ����Œl�̊m�F���s�����Ƃ͂����ʏ�ʂ�v�Z���i�݂܂��B
^
       ����ɑ�������ُ�l
      ---------------------------
        �����^  |  -214748364.8
        �����^  |  -2147483648
^
^
���̖��߂̎��s��Aans_ary��
^
dimtype ans_ary, vartype(ary1), length(ary1), length2(ary1), length3(ary1), length4(ary1)
^
�ŏ��������ꂽ��ԂƂȂ�̂�ary1�Ɠ����ϐ��^�A�����v�f���̔z��ƂȂ�܂��Bary2�̕ϐ��^�⎟���v�f����ans_ary�ɉ���̉e���͂���܂���B����́AHSP�̌���d�l�ɂȂ���Ă̎d�l�ł��B�܂����̎d�l�ɂ���āA���v�Z�񐔂�ary1�̔z��̒����ɂȂ�܂��Bary1�����Aary2�̕����z��Ƃ��ĒZ���ꍇ�͒Z��������ary2�����񂵁Aary2�̕��������ꍇ��ary1�̒����Ōv�Z���I���܂��B
^
�Ⴆ�΁A���̂悤��ary1��ary2�����Z����ꍇ
^
    dim ary1, 5, 2
    dim ary2, 3
    calc_ary ans, ary1, ary2, 0

    ans(0, 0) = ary1(0, 0) + ary2(0)
    ans(1, 0) = ary1(1, 0) + ary2(1)
    ans(2, 0) = ary1(2, 0) + ary2(2) ; ��ary2�͂����ŏI�� (�z��̒���3)

    ans(3, 0) = ary1(3, 0) + ary2(0) ; ary1���܂������Ă���̂ŁAary2��2���ڂɓ���
    ans(4, 0) = ary1(4, 0) + ary2(1)
          :                :
          :                :
    ans(4, 1) = ary1(4, 1) + ary2(0) ; ary1�������ŏI�� ����Ĕz�񉉎Z���I��
^
^
�����̖��߂͔z�񑀍�݂̂��s���Ă���A���ۂ̐��l�v�Z��cpu_ary_(local)�֐��ōs�킹�Ă��܂��B��r�I�ȒP�ȍ��ƂȂ��Ă���A�v�Z����ǉ����Ă������ƂŃJ�X�^�����邱�Ƃ��\�ł��B02_myarray.hsp��EOF�߂��ɂ���܂��B

%sample
    :
    ddim value1, 10, 5
    setarray value1, 50.0, 1, 0.125

    ddim tax, 50
    ctlarray 0, 25   :  setarray tax, 0.25, 1, 0.15  ;  0�`25�Ԗڂ����A�����
    ctlarray 26, 50  :  setarray tax, 1.5, 1, 0.75   ; 26�`50�Ԗڂ����A�����

    ; value1��tax�������葝���v�Z
    calc_ary value2, value1, tax, 5

    ; �����8%�̊��葝���v�Z
    a = 8
    calc_ary value3, value2, a, 7
    cnvarray value4, value3, 3  ; �z��R�s�[

    ctlarray_start
        ; 10%�̊�������v�Z
        b = 10
        ctlarray 25, 45    ; 10%OFF ��25�`45�Ԗڂ̂�
        calc_continue      ; ���Z�p�� (�����ł�cnvarray�̔z��R�s�[�𗘗p���邽��)
        calc_ary value4, value3, b, 8

        ; 25%OFF�Z�[���� 46�Ԗځ`�Ō�܂�
        b = 25
        ctlarray 46, 50
        calc_continue      ; ���Z�p��
        calc_ary value4, value3, b, 8

    ctlarray_end

    stop
%group
�z�񉉎Z
%type
���[�U�[�g�����o�͐��䖽��
%href
calc_continue
ctlarray
priarray
setarray

;������������������������������������������������������������������������������������

%index
calc_continue
���Z���p��
%prm
%inst
���̖��߂́Acalc_ary���߂̌v�Z���p����������̂ł��B
^
calc_ary���߂͌Ăяo����邽�тɑ�1�p�����[�^�Ɏw�肳�ꂽ�ϐ��������������܂��Bcalc_continue���߂͂��̏�������h���t���O�𗧂Ă܂��B
^
��������h�����Ƃœ��쐧�䖽��(ctlarray, ctlarray_start, ctlarray_end, ctlexcld)��p�����z��̕������Z���\�ɂ��鑼�A�����I�ɈقȂ�v�Z�������邱�Ƃ��\�ł��B

%sample

%group
�z�񉉎Z
%type
���[�U�[�g�����o�͐��䖽��
%href
calc_ary
ctlarray

;������������������������������������������������������������������������������������

%index
ctlarray_end
����t�B�[���h�I��
%prm
%inst
���̖��߂́Actlarray_start���߂ɂ���ēW�J���ꂽ����t�B�[���h���I����������̂ł��B
^
ctlarray_start�y��ctlarray_end�ň͂܂ꂽ����t�B�[���h���ł́Actlarray���߂Őݒ肳�ꂽ�J�n�l�ƏI���l�ɂ��ꂼ��̓��삪���肳���悤�ɂȂ�܂��B����ɂ��A���������l�𕡐��̖��߂Ɉꊇ���ēK�p�����邱�Ƃ��\�ł��B
^
ctlarray_start���߂̎��s����͕K��ctlarray���߂ŊJ�n�l�ƏI���l��ݒ肷��K�v������܂��B�܂��A����t�B�[���h�̍Ō�ɂ͕K��ctlarray_end�Ő���t�B�[���h���I������K�v������܂��B
%sample

%group
���쐧�䖽��
%type
���[�U�[�g�����o�͐��䖽��
%href
ctlarray
ctlarray_start
ctlexcld

;������������������������������������������������������������������������������������

%index
ctlarray_start
����t�B�[���h�J�n
%prm
%inst
���̖��߂́Actlarray���߂̓��쐧��𕡐��̖��߂ɓK�p�����邽�߂̐���t�B�[���h��W�J������̂ł��B
^
ctlarray_start�y��ctlarray_end�ň͂܂ꂽ����t�B�[���h���ł́Actlarray���߂Őݒ肳�ꂽ�J�n�l�ƏI���l�ɂ��ꂼ��̓��삪���肳���悤�ɂȂ�܂��B����ɂ��A���������l�𕡐��̖��߂Ɉꊇ���ēK�p�����邱�Ƃ��\�ł��B
^
ctlarray_start���߂̎��s����͕K��ctlarray���߂ŊJ�n�l�ƏI���l��ݒ肷��K�v������܂��B�܂��A����t�B�[���h�̍Ō�ɂ͕K��ctlarray_end�Ő���t�B�[���h���I������K�v������܂��B

%sample

%group
���쐧�䖽��
%type
���[�U�[�g�����o�͐��䖽��
%href
ctlarray
ctlarray_end
ctlexcld

;������������������������������������������������������������������������������������

%index
ctlexcld
���䏜�O
%prm
%inst
���̖��߂́Actlarray_start�y��ctlarray_end�̐���t�B�[���h���Ő���l�̏��O���s�����̂ł��B
^
����t�B�[���h����ctlexcld���߂̒���̖��߂��A1�񂾂�ctlarray���߂̐���l���珜�O�����A�ʏ퓮����\�ɂ��܂��B
%sample

%group
���쐧�䖽��
%type
���[�U�[�g�����o�͐��䖽��
%href
ctlarray
ctlarray_start
ctlarray_end

;������������������������������������������������������������������������������������

%index
priarray
�z��̏�񏑏o��
%prm
s_v1, ary1, coment
s_v1   : �ǂݏo����ƂȂ�ϐ��� (������^)
ary1   : �ǂݏo�����̔z��ϐ���
coment : �R�����g (�ȗ���)
%inst
���̖��߂́Aary1�Ŏw�肵���z��ϐ��̏��ƒl���As_v1�Ŏw�肳�ꂽ�ϐ��ɕ����s������Ƃ��đ��������̂ł��B
^
* s_v1 �́A���炩����sdim���Ń�����(������o�b�t�@)���m�ۂ��Ă����ĉ������B
* ary1 �́A2, 3, 4�����z��͂������A�ʏ�ϐ����w��\�ł��B
* coment ��"������"�܂��͕ϐ����w�肷��ƁA���̓��e���R�����g�Ƃ��ĕ\�����܂��B
^
�����ł����z��̏��Ƃ́A�ϐ����A�^���A�z��̊e�����v�f���Apriarray���߂��Ăяo�����s���̂��Ƃł��B����ɑ����������ŁA�i�[����Ă���l���ꗗ�ŕ\������܂��B
^
ary1�Ƀ��x���^�A������^�A�����^�A�����^�̕ϐ����w�肵���ꍇ�́A�z��̏��ƒl�ꗗ��\�����܂��B
���ɁA���x���^�̏ꍇ�̓��x������\�����܂����Aldim���ŏ��������ꂽ�����z��ɋ󂫂�����ȂǁA�L���ȃ��x�������݂��Ȃ��ꍇ��<null-label>�ƕ\������܂��B
���W���[���^�ACOM�I�u�W�F�N�g�^�Ɋւ��ẮA�l�������o�����Ƃ͏o�����A�ꕔ�̏��̂ݕ\�����܂��B
^
�Ⴆ�΁A�ҏW�G�f�B�^��123�s�ڂ�
    122�s�� |    dim i_ary, 10, 5, 3
    123�s�� |    priarray hyouj, i_ary, "�R�����g�ł�"
^
�Ƃ����ꍇ�Ahyouj�̓��e�́A
^
[ i_ary ] int(10, 5, 3) L=123       // <-- ���̍s����
/*------------------------------
�R�����g�ł�
------------------------------*/
(0, 0, 0) = 0
(1, 0, 0) = 0
(2, 0, 0) = 0
    :       :
(9, 4, 2) = 0
^
                                    // <-- ���̍s�܂� (��s2��)
�Ƃ������悤�ɂȂ�܂��B  ( ��.i )
^
���̖��߂̓f�o�b�O��m�F�̂��߂̕⏕�Ƃ��Ă̗p�r��z�肵�Ă��܂��B
�ϐ��̒l�����������o���ꍇ��outarray���߂��g�p���Ă��������B
^
��.i
��L��̑S�̂̏����y�ь^���́A02_myarray.hsp����myarray���W���[�����Ŏg�p����ϐ��̒�`����������s��_myarray_init_����(local�w��)���Œ�`����Ă��܂��B�^���⏑����ύX�������ꍇ�͂������ҏW���ĉ������B
%sample
    dim  array1, 3, 3, 3 : array1 = 1, 1, 2, 3, 5, 8, 13, 21, 34
    ddim array2, 5, 6    : array2 = 1.41421356, 2.2360679, 3.141592
    sdim array3, 10, 5   : array3 = "ABC", "DEF", "GHI", "?"
    ldim array4, 3, 3    : array4 = *labl1, *labl2, *labl3

    ary4 = {"array4���x���̃W�����v��ꗗ
    (0, 0) : ...
    (0, 1) : ...
       :      :"}

    priarray hyouj, array1, "�t�B�{�i�b�`����ł���"
    priarray hyouj, array2, "���[�g2�ƃ��[�g3...�̂͂��ł��B�o���ĂȂ�"
    priarray hyouj, array3
    priarray hyouj, array4, ary4

    notesel hyouj
    notesave dir_cur + "\\print_array.txt"

%group
�z�񑀍�
%type
���[�U�[�g�����o�͐��䖽��
%href
setarray
outarray
cnvarray
labarray
vartype

;������������������������������������������������������������������������������������

%index
setarray
�z��̘A�����
%prm
ary1, in_v1, iflag, index
ary1  : �����̔z��ϐ���
in_v1 : ����l
iflag : �����t���O (= 0, 0:OFF / 1:ON)
index : �����l     (= +1, +/-)
%inst
���̖��߂́Ain_v1�Ŏw�肳�ꂽ�l���Aary1�Ŏw�肳�ꂽ�z��ϐ��ɘA�����������̂ł��B
^
* ary1 �́A���炩����dim���ߓ��Ŕz��̗v�f���m�ۂ��Ă����K�v������܂��B
* in_v1 �Ɏw��ł���ϐ��̌^�͕�����^�A�����^�A�����^�ł��B�z��ϐ��͎w��ł��܂���B
* iflag �ɂ́A�����@�\���g�p����t���O���w�肵�ĉ������B�ȗ����܂���0��OFF�A1��ON�ɂȂ�܂��B
* index �́A���������̒l����邱�Ƃ��ł��A����Ɏ����A�����A��������w��ł��܂��B�ȗ�����+1�ł��B
^
���̖��߂́A0�ȊO�̒l�����̕�����Ŕz����������������ꍇ��A���ؗp�Ƃ��ė��p����z��̏������ł̗��p��z�肵�Ă��܂��B

%sample
    ; ��j�����^�A0�`�A+1���A���������ꍇ
    setarray int_ary, 0, 1, 1
    ; �i���ʁj
    int_ary(0���) = 0
    int_ary(1���) = 1
    int_ary(2���) = 2
            :

    ; ��j�����^�A100�`�A-0.125���A���������ꍇ
    setarray dobl_ary, 100.0, 1, -0.125
    ; �i���ʁj
    dobl_ary(0���) = 100.00000
    dobl_ary(1���) = 99.875000
    dobl_ary(2���) = 99.750000
            :

    ; ��j������^�Aabc_�A+1���A���������ꍇ
    setarray str_ary, "abc_", 1, 1
    ; �i���ʁj
    str_ary(0���) = "abc_"
    str_ary(1���) = "abc_1"
    str_ary(2���) = "abc_2"
    str_ary(3���) = "abc_3"
            :
    ; * ������^�̏ꍇ�̓C���f�b�N�X�Ƃ��ċ@�\���܂��B
    ; * �O���ɂ��邱�Ƃ͂ł��܂���B��L�̂悤�Ɍ���ɕt���܂��B

    ; ��j������^�AABCDE�A(�M��֥�L)�U���A���������ꍇ
    setarray str_ary, "ABCDE", 1, "(�M��֥�L)�U"
    ; �i���ʁj
    str_ary(0���) = "ABCDE"
    str_ary(1���) = "ABCDE(�M��֥�L)�U"
    str_ary(2���) = "ABCDE(�M��֥�L)�U(�M��֥�L)�U"
    str_ary(3���) = "ABCDE(�M��֥�L)�U(�M��֥�L)�U(�M��֥�L)�U"
            :
    ; * �����l�ɕ�������w�肵���ꍇ�͑����Ă������Ƃ����ł��܂���B

%group
�z�񑀍�
%type
���[�U�[�g�����o�͐��䖽��
%href
priarray
outarray
cnvarray
labarray

;������������������������������������������������������������������������������������

%index
cnvarray
�����s�����񂩂�z���
%prm
ary_, in_v1, vtype, d1, d2, d3, d4
ary_        : �ϊ��� �ϐ���
in_v1       : �ϊ��� �ϐ���
vtype       : �ϊ���̕ϐ��^��\�����l (= 2, 2:������^ / 3:�����^ / 4:�����^)
d1,d2,d3,d4 : �ϊ���̊e�����v�f��     (= 0)
%inst
���̖��߂́Aary_�Ɏw�肳�ꂽ�ϐ��𑽎����z��Ƃ��ď��������A���̕ϐ���in_v1�Ŏw�肵�������s������܂��͑������z����A1�s���Ƃ܂��͗v�f���Ƃɑ��������̂ł��Bnote2array�̏�ʌ݊��ɂȂ�܂��B
^
�C���[�W�Ƃ��Ă� dimtype ary_, vtype, d1, d2, d3, d4 �ŁAin_v1�Ɏw�肵���l�ŏ����������Ƃ��������̂ɂȂ�܂��B
^
* ary_  �ɂ́A�ϐ������w�肵�Ă��������Bsdim���ŏ���������K�v�͂���܂���B
* in_v1 �ɂ́A�������z��ɕϊ������������s������ϐ��A�܂��͑������z��ϐ����w�肵�Ă��������B
* vtype �ɂ́Aary_�Ŏw�肵���ϐ��̌^��\���l���w�肵�Ă��������B
* d1,d2,d3,d4�ɂ͕ϊ���A�������z��ϐ��ƂȂ�ary_�̊e�����v�f�����w�肵�Ă��������B
^
vtype�̎w��l��vartype�Ɠ��l�ŁA2�ŕ�����^�A3�Ŏ����^�A4�Ő����^�ƂȂ�܂��B
d4�ȗ�����3�����z��Ad3�ȍ~�ȗ�����2�����z��Ad2�ȍ~�ȗ�����1�����z��ƂȂ�܂��B
^
in_v1�Ŏw�肳�ꂽ�ϐ��������s������̏ꍇ�Ad1�ȍ~���ȗ�����Ƃ��܂��ϊ��ł��܂���̂ŁA�����s��������w�肵���ꍇ�͕K��d1�ȍ~�̎w������Ă��������B�z��ϐ��̏ꍇ�́Ad1�ȍ~���ȗ����邱�Ƃ�in_v1�̊e�����v�f�������̂܂܎g�p����ary_�����������܂��B���̂��ߔz��R�s�[�A�������͌^�ϊ��Ƃ��ċ@�\���܂��B

%sample
    :
    :
    sdim text_data, 1024
    notesel text_data
    noteload "hogehoge.txt"

    ; text_data�̒��g�� �����^�Ahoge_array1(10, 5, 2)�֕ϊ�
    cnvarray hoge_array1, text_data, 3, 10, 5, 2

    ; hoge_array1(10, 5, 2)��hoge_array2(10, 5, 2)�ɐ����^�ŃR�s�[
    cnvarray hoge_array2, hoge_array1, 4

    ; hoge_array2(10, 5, 2)��hoge_array3(10, 10)�ɕ�����^�ŕϊ�
    cnvarray hoge_array3, hoge_array2, 2, 10, 10

    // hoge_array1(10, 5, 2) : �����^
    // hoge_array2(10, 5, 2) : �����^
    // hoge_array3(10, 10)   : ������^

%group
�z��ϊ�
%type
���[�U�[�g�����o�͐��䖽��
%href
priarray
outarray
labarray

;������������������������������������������������������������������������������������

%index
labarray
���x���^�z�񐶐�
%prm
s_v1, ary1, "*������", index, coment
s_v1      : �ǂݏo����ƂȂ�ϐ��� (������^)
ary1      : �����ƂȂ�z��ϐ��� (������^)
"*������" : ����l   (���x�����ɂ�����������)
index     : �����l   (= +1, +/-)
coment    : �R�����g (�ȗ���)
%inst
���̖��߂͕�����^�̕ϐ������x���^�Ƃ��ė��p�ł���悤�ɂ�����̂ł��B
^
setarray���߂�outarray���߂��|�����킹�����̂ŁA
ary1�Ɏw�肳�ꂽ�������z��ɑ΂��āA"*������" + index�œ�����l��A��������A(setarray)
s_v1�Ɏw�肳�ꂽ�ϐ��Ɉ��̏�����"*������" + index�𕡐��s������Ƃ��đ�����Ă����܂��B(outarray)
^
* s_v1 �ɂ́A�ǂݏo����ƂȂ�ϐ������w�肵�ĉ������B
* ary1 �ɂ́A�����ƂȂ�z��ϐ������w�肵�ĉ������B
* "*������" �ɂ́A��{�ƂȂ郉�x�������w�肵�ĉ������B�ʏ�̃��x�����Ɠ��l�A�K���A�X�^���X�N"*"�����ĉ������B
* index �ɂ́A���x���̃C���f�b�N�X�ƂȂ�����l�A�����l���w�肵�ĉ������B
* coment �ɂ́A��������w�肷�邱�Ƃ�.hsp�t�@�C���ł̏o�͎��ɃR�����g�Ƃ��ĕ\�����邱�Ƃ��ł��܂��B
^
s_v1�́A���炩����sdim�ŕ�����o�b�t�@���m�ۂ��Ă����ĉ������B�܂��Aary1�����炩����sdim�Ŕz��̗v�f���m�ۂ��Ă����K�v������܂��B
^
���̖��߂̎��s��As_v1�Ɏw�肵�������s�������ary1�Ɏw�肵��������^�z��ϐ��A2�̕�����^�̕ϐ����o�͂��܂��B
s_v1�Ɏw�肵�������s�������notesave���Ŋg���q��.hsp�ȂǂƂ��ĕۑ����ĉ������B
�o�͂����t�@�C����#include(#addition)���邱�ƂŁAary1�Ɏw�肵���������z��ϐ����A�ȍ~���x���^�Ƃ��ė��p���邱�Ƃ��ł��܂��B

%sample
    :
    sdim hyouj, 64
    sdim str_ary, 64, 5
    labarray hyouj, str_ary, "*labl_", 1
    notesel hyouj
    notesave "labl_test.hsp"

////////  ( �o�͌��� )  ////////
    dimtype str_ary, vartype("label"), 5
    str_ary(0) = *labl_
    str_ary(1) = *labl_1
    str_ary(2) = *labl_2
    str_ary(3) = *labl_3
    str_ary(4) = *labl_4

%group
�z�񑀍�
%type
���[�U�[�g�����o�͐��䖽��
%href
priarray
setarray
outarray
cnvarray

;������������������������������������������������������������������������������������

%index
outarray
�z�񂩂畡���s�������
%prm
s_v1, ary1, iflag
s_v1  : �ǂݏo����ƂȂ�ϐ��� (������^)
ary1  : �ǂݏo�����̔z��ϐ���
iflag : ���x���t���O (= 0, 0:OFF / 1:ON)
%inst
���̖��߂͑������z��ϐ��̒l�݂̂𕡐��s������Ƃ��ď����o�����̂ł��Barray2note�̏�ʌ݊��ɂȂ�܂��B
^
�e�p�����[�^�̉����priarray���߂Ɠ��l�ŁAary1�Ɏw��ł���ϐ��̌^�̓��x���^�A������^�A�����^�A�����^��4�ł��B
^
ary1�Ƀ��x���^���w�肵���ꍇ�A��������iflag��1���w�肵���ꍇ�́A���x���������[�h�ƂȂ�o�͎��̏������ω����܂��B
labarray���߂ƂƂ��ɗ��p���邱�ƂŃ��x���𐔑����p�ӂ��邱�Ƃ��\�ł��B
^
���̖��߂̓f�o�b�O�d�l��priarray���߂���s�v�ȕ\�����팸���A�z��̒l�������o�������񑀍�d�l�ƂȂ��Ă��܂��B

%sample
    :
    sdim hyouj, 64
    sdim str_ary, 64, 5
    labarray hyouj, str_ary, "*labl_", 1
    outarray hyouj, str_ary, 1
    notesel hyouj
    notesave "labl_test.hsp"

////////  ( �o�͌��� )  ////////
    dimtype str_ary vartype("label"), 5
    str_ary(0) = *labl_
    str_ary(1) = *labl_1
    str_ary(2) = *labl_2
    str_ary(3) = *labl_3
    str_ary(4) = *labl_4

*labl_
    return
*labl_1
    return
*labl_2
    return
*labl_3
    return
*labl_4
    return
///  ( �o�͌��ʂ����܂� )  ///
%group
�z��ϊ�
%type
���[�U�[�g�����o�͐��䖽��
%href
priarray
setarray
cnvarray
labarray

;������������������������������������������������������������������������������������

%index
logpri
�f�o�b�O�\��
%prm
v1, d1, d2, d3, d4
v1          : �ϐ���
d1,d2,d3,d4 : �C���f�b�N�X�p�ϐ��� (�ȗ���)
%inst
���̖��߂́Av1�Ɏw�肳�ꂽ�ϐ����Ƃ��̒l���f�o�b�O�E�B���h�E�ɕ\��������̂ł��B
^
* v1 �ɂ́A�������z��͂������A�ʏ�̕ϐ����w��\�ł��B
* d1,d2,d3,d4 �ɂ́Av1�Ŏw�肵���ϐ����z��̏ꍇ�ɁA���̗v�f���Ǘ����Ă���ϐ����w�肷�邱�Ƃ��ł��܂��B
^
�Ⴆ�΁Adim b, 5, 4 �Ə���������2�����z��b�̗v�f��i�ŊǗ����Ă���ꍇ�ɁA
^
5�s�� |    dim b, 5, 4
6�s�� |    i = 3, 2
7�s�� |    logpri b(i(0), i(1)), i(0), i(1)
^
�Ƃ���ƁA�f�o�b�O�E�B���h�E�ɂ͉��̂悤�ɕ\������܂��B
^
/*** 7 ***/
b(3, 2) = 0
^
��L�̂悤�ɁA�G�f�B�^�[��logpri���߂��Ăяo�����s���ƁA�\�����������ϐ����Ƃ��̒l�A�����Ĕz��v�f���Ǘ����Ă���ϐ����ێ����Ă���l�ɒu������ĕ\������܂��B����́A�z�񑀍��priarray, labarray�Ɠ������A#define��%1,%2,%3,...���_�u���N�H�[�e�[�V�����ň͂܂ꂽ��Ԃł��W�J�����Ƃ��������𗘗p���Ă��܂��B
^
�w��ϐ��ɕ\�����e��ǂݏo��mesans���߂�����܂��B
^
�����ӎ����Ƃ��āAv1�ɂ̓_�u���N�H�[�e�[�V����("������", "\n", "\t")���g�p���邱�Ƃ͂ł��܂���B

%sample
    :
    dim i, 2

    repeat length2(ary3)
        i(0) = 0

        repeat length(ary3)
            logpri ary3(i(0), i(1)), i(0), i(1)
            i(0)++

        loop
        i(1)++

    loop

    a = 1 : b = 0
    mesans hyouj, a & b
    mesans hyouj, a | b

%group
�g�����o�͐���
%type
���[�U�[�g�����o�͐��䖽��
%href
mesans
logmes
mes
%dll
mytool

;������������������������������������������������������������������������������������

%index
mesans
�f�o�b�O�\��
%prm
s_v1, v1, d1, d2, d3, d4
s_v1        : �ǂݏo����̕ϐ���
v1          : �ǂݏo���ϐ���
d1,d2,d3,d4 : �C���f�b�N�X�p�ϐ��� (�ȗ���)
%inst
���̖��߂́Av1�Ɏw�肳�ꂽ�ϐ����Ƃ��̕ϐ��̒l��s_v1�Ɏw�肳�ꂽ�ϐ��ɓǂݏo�����̂ł��B
^
* s_v1 �́A���炩����sdim���Ń�����(������o�b�t�@)���m�ۂ��Ă����ĉ������B
* v1 �ɂ́A�������z��͂������A�ʏ�̕ϐ����w��\�ł��B
* d1,d2,d3,d4 �ɂ́Av1�Ŏw�肵���ϐ����z��̏ꍇ�ɁA���̗v�f���Ǘ����Ă���ϐ����w�肷�邱�Ƃ��ł��܂��B
^
�Ⴆ�΁Adim b, 5, 4 �Ə���������2�����z��b�̗v�f��i�ŊǗ����Ă���ꍇ�ɁA
^
    dim b, 5, 4
    i = 3, 2
    mesans hyouj, b(i(0), i(1)), i(0), i(1)
^
�Ƃ���ƁA�ϐ�hyouj�ɂ͉��̂悤�ɓǂݏo����܂��B
^
    b(3, 2) = 0
^
��L�̂悤�ɁA�\�����������ϐ����Ƃ��̒l�A�����Ĕz��v�f���Ǘ����Ă���ϐ����ێ����Ă���l�ɒu������ĕ\������܂��B����́A�z�񑀍��priarray, labarray�Ɠ������A#define��%1,%2,%3,...���_�u���N�H�[�e�[�V�����ň͂܂ꂽ��Ԃł��W�J�����Ƃ��������𗘗p���Ă��܂��B
^
�\�����e���f�o�b�O�E�B���h�E�ɕ\��������logpri���߂�����܂��B
^
�����ӎ����Ƃ��āAv1�ɂ̓_�u���N�H�[�e�[�V����("������", "\n", "\t")���g�p���邱�Ƃ͂ł��܂���B

%sample
    :
    foreach ary2
        mesans hyouj, ary2(cnt), cnt
    loop

    a = 1 : b = 0
    logpri a & b
    logpri a | b

%group
�g�����o�͐���
%type
���[�U�[�g�����o�͐��䖽��
%href
logpri
mes
logmes
%dll
mytool

;������������������������������������������������������������������������������������

%index
objprh
�I�u�W�F�N�g�̍X�V
%prm
objhwnd, p1
objhwnd : �I�u�W�F�N�g�̃n���h��
p1      : �ύX����p�����[�^�̓��e
%inst
���̖��߂�objprm���߂ƂقƂ�Ǔ������̂ł��B
^
p1�ɂ̓E�B���h�E�I�u�W�F�N�g�̃n���h�����w�肵�ĉ������B
^
gsel���߂ł̕`���A�����E�B���h�E�̎w�������K�v���Ȃ��̂ŁA�����̃E�B���h�E�ŕ����̃I�u�W�F�N�g�������ۂɌ��ʓI�ł��B
%sample

%group
�I�u�W�F�N�g���䖽��
%type
���[�U�[�I�u�W�F�N�g���䖽��
%href
objprm
sendmsg
objinfo
%dll
mytool

;������������������������������������������������������������������������������������
