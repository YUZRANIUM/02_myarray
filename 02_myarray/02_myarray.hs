; INFO ������������������������������������������������������������������������������
; FileName : 02_myarray.hs
; Version  : 0.25
; Date     : 2022/12/07
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
0.25
%date
2022/12/07
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
p1,p2,p3
p1 : �z��ϐ��̒��g���󂯎�镶����^�ϐ�
p2 : ���g���������z��ϐ�
p3 : �R�����g�i�ȗ��j
%inst
���̖��߂͑������z��ϐ��Ɋi�[���ꂽ�l��S�ĕ����s������Ƃ��ď����o���}�N���ł��B
^
p1�ɔz��̒��g���󂯎�邽�߂̕�����^�ϐ����w�肵�ĉ������B
p2�ɒ��g���ꗗ�\�����������������z��ϐ����w�肵�ĉ������B���ׂĂ̎����ɑΉ����Ă��܂��B
p3�ɂ́A�I�v�V�����Ƃ��ăR�����g�����邱�Ƃ��ł��܂��B
^
                p2�Ɏw��ł���^�ƕ\�����e

|  �\�����e \ �^  | label | str  | double | int  | struct | COM object |
|-----------------|-------|------|--------|------|--------|------------|
|      �ϐ���     |  OK   |  OK  |   OK   |  OK  |   OK   |     OK     |
|        �^       |  OK   |  OK  |   OK   |  OK  |   OK   |     OK     |
|    �e�����v�f   |  OK   |  OK  |   OK   |  OK  |   OK   |     OK     |
|      �s  ��     |  OK   |  OK  |   OK   |  OK  |   OK   |     OK     |
|    �l�̏��o��   | ----- |  OK  |   OK   |  OK  | ------ |   ------   |
|  �ϐ��̎g�p�� |  OK   | ---- | ------ | ---- |   OK   |     OK     |


|  �\�����e \ �^ | ���x�� | ������ | ���� | ���� | ���W���[�� | COM�I�u�W�F�N�g |
|----------------|--------|--------|------|------|------------|-----------------|
|     �ϐ���     |  OK   |  OK  |   OK   |  OK  |   OK   |     OK     |
|       �^       |  OK   |  OK  |   OK   |  OK  |   OK   |     OK     |
|   �e�����v�f   |  OK   |  OK  |   OK   |  OK  |   OK   |     OK     |
|     �s  ��     |  OK   |  OK  |   OK   |  OK  |   OK   |     OK     |
|   �l�̏��o��   | ----- |  OK  |   OK   |  OK  | ------ |   ------   |
| �ϐ��̎g�p�� |  OK   | ---- | ------ | ---- |   OK   |     OK     |




���g�̏����o�����\�ȕϐ��̌^�́A������^�A�����^�A�����^��3�ŁA���x���^�A���W���[���^�ACOM�I�u�W�F�N�g�^�Ɋւ��Ă͏����o�����s���܂���B
�ϐ��̌^�� vartype�ɂ����̂ŁAlabel, str, double, int, struct, comobj �Ƃ��ꂼ��\������܂��B�ϐ��̎g�p�󋵂�varuse�ɂ����̂ł��B�ϐ����̕\���̓}�N���W�J�𗘗p���čs���Ă��܂��B�ڍׂ�02_myarray.hsp���䗗���������B
^
�������܂ł��A�f�o�b�O�p�A�m�F�p�Ɏg�p���ĉ������B
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
setarray
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


%index
setarray
�������z��ꊇ���
%prm
p1,p2
p1 : �����̔z��ϐ�
p2 : ����������l�������͂�����i�[�����ϐ�
%inst
���̖��߂͑������z��ϐ��ɓ���̒l���ꊇ�������}�N���ł��B
^
p1�ɂ͑����ƂȂ鑽�����z��ϐ����w�肵�ĉ������B
p2�ɂ͑���������l�Ⴕ���͂�����i�[�����ϐ����w�肵�ĉ������B
^
p1�Ŏw��ł���^�́A���x���^�A������^�A�����^�A�����^�A��4�݂̂ł��B
^
�{�}�N���͓W�J���� midlevar_ �Ƃ����ϐ�����ă��W���[�����̖��߂Ƀp�����[�^�^�C�vvar��p2��n���Ă��܂��B
���̂��߁Ap2�̓��x���A������A�����A�����A�Ⴕ���͂������i�[�����ϐ��ł̎w��ɑΉ����Ă��܂��B�z��ϐ��ɂ͑Ή����Ă��܂���B
^
���̖��߂́A0�ȊO�̒l�����̕�����Ŕz����������������ꍇ��A����m�F�p�Ƃ��ė��p����z��̏������ł̗��p��z�肵�Ă��܂��B�C���f�b�N�X��Y������t������@�\�͂������܂���B

%sample

setarray hoge0, *main
setarray hoge1, "ABCDE"
setarray hoge2, 3.141592
setarray hoge3, 123456
setarray hoge4, setnum

%group
�����񑀍얽��
%type
���[�U�[��`�}�N��
%href
priarray


;������������������������������������������������������������������������������������
