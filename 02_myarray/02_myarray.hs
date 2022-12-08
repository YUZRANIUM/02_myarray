; INFO ������������������������������������������������������������������������������
; FileName : 02_myarray.hs
; Version  : 0.25.1
; Date     : 2022/12/07
; Author   : YUZRANIUM�i�䂸��ɂ��ށj
; Twitter  : https://twitter.com/YUZRANIUM
; GitHub   : https://github.com/YUZRANIUM/02_myarray
;������������������������������������������������������������������������������������
; Description       MyricaM M/16-18
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
0.25.1
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
�������z�񏑏o��
%prm
p1, p2, p3
p1 : �z��ϐ��̒��g���󂯎�镶����^�ϐ�
p2 : ���g���������z��ϐ�
p3 : �R�����g�i�ȗ��j
%inst
���̖��߂͑������z��ϐ��Ɋi�[���ꂽ�l��S�ĕ����s������Ƃ��ď����o���}�N���ł��B
^
p1�ɔz��̒��g���󂯎�邽�߂̕�����^�ϐ����w�肵�ĉ������B
p2�ɒ��g���ꗗ�\�����������������z��ϐ����w�肵�ĉ������B���ׂĂ̎����ɑΉ����Ă��܂��B
p3�ɂ́A��������w�肷�邱�Ƃ� mesbox ��e�L�X�g�t�@�C���ł̏o�͎��ɃR�����g�Ƃ��ĕ\�������邱�Ƃ��ł��܂��B
^
                    p2�Ɏw��ł���^�ƕ\�����e
html{
    <table border="1">
        <tr>
            <th align="center">
                �\�����e \ �^
            </th>
            <th>label</th> <th>str</th> <th>double</th> <th>int</th> <th>struct</th> <th>comobj</th>
        </tr>

        <tr align="center">
            <th>
                �ϐ���
            </th>
            <td>��</td> <td>��</td> <td>��</td> <td>��</td> <td>��</td> <td>��</td>
        </tr>

        <tr align="center">
            <th>
                �^
            </th>
            <td>��</td> <td>��</td> <td>��</td> <td>��</td> <td>��</td> <td>��</td>
        </tr>

        <tr align="center">
            <th>
                �e�����v�f
            </th>
            <td>��</td> <td>��</td> <td>��</td> <td>��</td> <td>��</td> <td>��</td>
        </tr>

        <tr align="center">
            <th>
                �s��
            </th>
            <td>��</td> <td>��</td> <td>��</td> <td>��</td> <td>��</td> <td>��</td>
        </tr>

        <tr align="center">
            <th>
                �l�̏����o��
            </th>
            <td>X</td> <td>��</td> <td>��</td> <td>��</td> <td>X</td> <td>X</td>
        </tr>

        <tr align="center">
            <th>
                �ϐ��̎g�p��
            </th>
            <td>��</td> <td>---</td> <td>---</td> <td>---</td> <td>��</td> <td>��</td>
        </tr>
    </table>

    <style>
    th,td {
    padding: 5px 20px;

    }
    </style>
}html

�l�̏����o�����\�ȕϐ��̌^�́A������^�A�����^�A�����^��3�ŁA���x���^�A���W���[���^�ACOM�I�u�W�F�N�g�^�Ɋւ��Ă͏����o�����s���܂���B
�ϐ��̌^�� vartype�ɂ����̂ŁAlabel, str, double, int, struct, comobj �Ƃ��ꂼ��\������܂��B�ϐ��̎g�p�󋵂�varuse�ɂ����̂ł��B�ϐ����̕\���̓}�N���W�J�𗘗p���čs���Ă��܂��B�ڍׂ�02_myarray.hsp���䗗���������B
^
�������܂ł��A�f�o�b�O�p�A�m�F�p�Ɏg�p���ĉ������B
%sample
    dim  array1, 3, 3, 3  :  array1 = 1, 1, 2, 3, 5, 8, 13, 21, 34
    ddim array2, 5, 6     :  array2 = 1.41421356, 2.2360679, 3.141592
    sdim array3, 10       :  array3 = "ABC", "DEF", "GHI", "?"
    ldim array4, 3        :  array4 = *labl1, *labl2, *labl3

    priarray hyouji, array1, "�t�B�i�{�b�`����ł���"
    priarray hyouji, array2, "���[�g2�ƃ��[�g3...�̂͂��ł��B�o���ĂȂ�"
    priarray hyouji, array3, "215�s�ڂ��m�F.\nstat�v�`�F�b�N�A-1�łȂ����158�s�ځ`��������."
    priarray hyouji, array4, "�G�f�B�^�[�̕������؂���ȊO�ɂ��}�N���W�J�𗘗p������@������܂�"

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
�������z��A�����
%prm
p1, p2, p3, p4
p1 : �����̔z��ϐ�
p2 : ����l�������͂�����i�[�����ϐ�
p3 : �����@�\�t���O�i= 0�j�i0:OFF, 1:ON�j
p4 : �����l�i= 1�j�istr, double, int�j
%inst
���̖��߂͑������z��ϐ��ɒl��A���������}�N���ł��B
^
p1�ɂ͑����ƂȂ鑽�����z��ϐ����w�肵�ĉ������B���ׂĂ̎����ɑΉ����Ă��܂��B
p2�ɂ͑���������l�Ⴕ���͂�����i�[�����ϐ����w�肵�ĉ������B
p3�͑����@�\���g�p����t���O���w�肵�ĉ������B�ȗ��܂���0��OFF�A1���w�肷�邱�Ƃ�ON�ɂȂ�܂��B
p4�ɂ͑����@�\�Ŏg�p���鑝���l���w�肵�ĉ������B�ȗ�����+1�ł��B
^
p4�͐��������̒l����邱�Ƃ��ł��A���̒l�ŉ��Z�A���̒l�Ō��Z�ƂȂ�܂��B����Ɏ����A�����A��������w��ł��܂��B
^
�{�}�N���̓}�N���W�J���� midlevar_�Aincrease_ �Ƃ����ϐ�����ă��W���[�����̖��߂Ƀp�����[�^�^�C�vvar��p2�i����l�j�y��p4�i�����l�j�����ꂼ��n���Ă��܂��B
���̂��߁Ap2�i����l�j�̓��x���A������A�����A�����A�Ⴕ���͂������i�[�����ϐ��ł̎w��ɁAp4�i�����l�j�͕�����A�����A�����Ⴕ���͂�����i�[�����ϐ��ł̎w��ɑΉ����Ă��܂��B
p2�i����l�j�Ap4�i�����l�j�Ƃ��ɔz��ϐ��ɂ͑Ή����Ă��܂���B
^
�����̖��߂́A0�ȊO�̒l�����̕�����Ŕz����������������ꍇ��A����m�F�p�Ƃ��ė��p����z��̏������ł̗��p��z�肵�Ă��܂��B
^
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

    setarray lab_ary, *hoge
    ; �i���ʁj
    lab_ary(0���) = *hoge   // ���ׂē������̂ɂȂ�܂�
    lab_ary(1���) = *hoge
    lab_ary(2���) = *hoge
            :
    ; * ���x���^�̏ꍇ�͑����@�\���g�p���邱�Ƃ͂ł��܂���B�A������݂̂ł��B

%group
�����񑀍얽��
%type
���[�U�[��`�}�N��
%href
priarray


;������������������������������������������������������������������������������������
