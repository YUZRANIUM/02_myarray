; INFO ������������������������������������������������������������������������������
; FileName : 02_myarray.hs
; Version  : 0.22
; Date     : 2022/12/01
; Author   : YUZRANIUM�i�䂸��ɂ��ށj
; Twitter  : https://twitter.com/YUZRANIUM
; GitHub   : https://github.com/YUZRANIUM/02_myarray
;������������������������������������������������������������������������������������
; Description
; HSP3�ő������z����m�F�p�ɕ�����Ƃ��ď����o���Ȃ�Ă��ƂȂ����W���[���ł�
;������������������������������������������������������������������������������������

%dll
02_myarray
%ver
0.22
%date
2022/12/01
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
p2�ɒ��g���ꗗ�\�����������������z��ϐ����w�肵�ĉ������B�����ɂ��Ă͍l���Ȃ��ŉ������B���ׂĂ̎����ɑΉ����Ă��܂��B
^
�܂��Ap2�Ɏw��ł���z��̌^�͕�����ɕϊ��ł���A�����^(ddim)�A�����^(dim)�A������^(sdim)�Ȃǂł��B
^
�����s������Ƃ���p1�Ɋi�[�����w��z��ϐ�p2�̏��Ƃ��ẮAp2�Ŏw�肵���ϐ����A�ϐ��̌^�A�e�����v�f���̑����A�ϐ��̃o�b�t�@�T�C�Y�A�{�}�N���Ăяo�����̍s���A�{�}�N���Ăяo������p2�̊e�l�A�ƂȂ��Ă��܂��B
^
�ϐ��̌^�� vartype�ɂ����̂ŁAint, double, str �Ƃ��ꂼ��\������܂��B�ϐ��̃o�b�t�@�T�C�Y�� varsize�Ŏ擾���Ă��܂��B
^
�����ɂ́A�{�}�N����length�n��if�`else�ɂ�����������s���A�Ή������������߂��Ăяo�����̂ł��B
�܂��A���̓������߂ł�repeat�`loop�ɂ��J��Ԃ��������s���Ă��܂��B�ɗ̓l�X�g���x��(looplev)��󂭂���悤�ɂ��Ă��܂����A����4�����z��p�̓������߂ł͊��Ƀl�X�g���x��4�ƂȂ��Ă��܂��B�ڍׂ�02_myarray.hsp���䗗���������B
^
�����ӎ����Ƃ��āA���̂������Ȃ��^�i���x���^(ldim)��COM�I�u�W�F�N�g�^�Ȃǁj�͑Ή����Ă��܂���B�܂��A���W���[���^�ϐ��Ɋւ��Ă͂��̎g�p��z�肵�Ă��܂���B
^
�����܂ł��A�f�o�b�O�p�A�m�F�p�Ɏg�p���ĉ������B
^
�i  �Q�l  �jp1�Ɋi�[����镶����̏���

    [ �ϐ��� ] �ϐ��̌^(1�����v�f, 2�����v�f, 3�����v�f, 4�����v�f) �o�b�t�@�T�C�Y L=�s��
    (0) = ...
    (1) = ...
    (2) = ...
        :
        :
        :
%sample
    dim  array1, 3, 3, 3
    ddim array2, 5, 6
    sdim array3, 10

    priarray hyouji, array1
    priarray hyouji, array2
    priarray hyouji, array3

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
length
length2
length3
length4
vartype
varsize

;������������������������������������������������������������������������������������