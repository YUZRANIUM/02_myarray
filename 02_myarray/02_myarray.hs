; INFO ������������������������������������������������������������������������������
; FileName : 02_myarray.hs
; Version  : 0.23
; Date     : 2022/12/04
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
;   date    : 2022/11/26
;   person  : Yuzranium
;   content : �������z��ϐ��𕡐��s�������
;
;������������������������������������������������������������������������������������

%dll
02_myarray
%ver
0.23
%date
2022/12/04
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


%index
priarray
�������z��ϐ��̏��o��
%prm
p1,p2
p1 : �z��ϐ��̒��g���󂯎�镶����^�ϐ�
p2 : ���g���������z��ϐ�
%inst
���̖��߂͑������z��ϐ��Ɋi�[���ꂽ�l��S�ĕ����s������Ƃ��ď����o���}�N���ł��B
^
p1�ɔz��̒��g���󂯎�邽�߂̕�����^�ϐ����w�肵�ĉ������B
p2�ɒ��g���ꗗ�\�����������������z��ϐ����w�肵�ĉ������B���ׂĂ̎����ɑΉ����Ă��܂��B
^
�܂��Ap2�Ɏw��ł���z��̌^��COM�I�u�W�F�N�g�^�ȊO�ł��B
^
p1�Ɋi�[�����w��z��ϐ�p2�̏��Ƃ��ẮAp2�Ŏw�肵���ϐ����A�ϐ��̌^�A�e�����v�f�̊e�����A�{�}�N���Ăяo�����̍s���A�{�}�N���Ăяo������p2�̊e�l�A�ƂȂ��Ă��܂��B
^
���g�̏����o�����\�ȕϐ��̌^�́A������^�A�����^�A�����^��3�ŁA���x���^�A���W���[���^�Ɋւ��Ă͏����o�����s�킸�A�ϐ����A�^�A�����v�f�̑����A�}�N���Ăяo�����̍s���݂̂̕\���ł��B
^
�ϐ��̌^�� vartype�ɂ����̂ŁAlabel, str, double, int, struct �Ƃ��ꂼ��\������܂��B�ϐ����̕\���̓}�N���W�J�𗘗p���čs���Ă��܂��B�ڍׂ� 02_myarray.hsp���䗗���������B
^
�����ӎ����Ƃ��āACOM�I�u�W�F�N�g�^�͑Ή����Ă��܂���B
�����܂ł��A�f�o�b�O�p�A�m�F�p�Ɏg�p���ĉ������B
^
�i  �Q�l  �jp1�Ɋi�[����镶����̏���

    [ �ϐ��� ] �ϐ��̌^(1�����v�f, 2�����v�f, 3�����v�f, 4�����v�f) L=�s��
    (0) = ...
    (1) = ...
    (2) = ...
        :
        :
        :
%sample
    dim  array1, 3, 3, 3  :  array1 = 1, 1, 2, 3, 5, 8, 13, 21, 34
    ddim array2, 5, 6     :  array2 = 1.41421356, 2.2360679, 3.141592
    sdim array3, 10       :  array3 = "ABC", "DEF", "GHI", "?"
    ldim array4, 3        :  array4 = *labl1, *labl2, *labl3

    priarray hyouji, array1
    priarray hyouji, array2
    priarray hyouji, array3
    priarray hyouji, array4

    notesel hyouji
    notesave dir_cur + "\\print_array.txt"

%group
�����񑀍얽��
%type
���[�U�[��`�}�N��
%href
dim
ddim
sdim
ldim
length
length2
length3
length4
vartype


;������������������������������������������������������������������������������������



;������������������������������������������������������������������������������������
