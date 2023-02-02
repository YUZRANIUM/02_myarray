; INFO ������������������������������������������������������������������������������
; FileName : 02_myarray_srch.hs
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
myarray_srch
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
; sortgetc
; twinsortary
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
�g�����o�͐���
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
�g�����o�͐���
%type
���[�U�[�g�����o�͐��䖽��
%href
sortgetc
sortval
sortstr

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
* srch_ary �͂��炩���߁A�����\�[�g����Ă��邱�Ƃ��O��ł��B
^
���s��A�T���ɐ��������ꍇ��srch_ary�̔z��v�f��srch�ɑ������܂��B�T���Ɏ��s�����ꍇ��srch��-1���������܂��B

%sample

%group
�g�����o�͐���
%type
���[�U�[��`����
%href
mlgetc
mdabisrch

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
�g�����o�͐���
%type
���[�U�[��`�֐�
%href
uniary
bisrch
MDALiSrch

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
���`�T���Ȃ̂�srch_ary���\�[�g���Ă����K�v�͂Ȃ��K�v�͂���܂���B�܂��A�T���񐔂��Ȃ�ׂ����Ȃ��Ȃ�悤�T���ӏ����l�����ĒT�����s���̂ŁA�ő�T���񐔂͌��̃f�[�^�ʂ̂��悻�l���̈���x�ƂȂ�܂��B


%sample
    :
    k = MDALiSrch("���", item_values)

    if (k != -1) {mes uniary(item_values, k)} else {mes "not found!"}

    stop
%group
�g�����o�͐���
%type
���[�U�[��`�֐�
%href
uniary
bisrch
MDABiSrch

;������������������������������������������������������������������������������������
