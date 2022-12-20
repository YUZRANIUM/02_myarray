; INFO ������������������������������������������������������������������������������
; FileName : 02_myarray.hs
; Version  : 0.26.1
; Date     : 2022/12/18
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
0.26.1
%date
2022/12/18
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
�������z��̏�񏑏o��
%prm
p1, p2, coment
p1     : �z��ϐ��̒��g���󂯎�镶����^�ϐ�
p2     : �z��ϐ�
coment : �R�����g�i�ȗ��j
%inst
���̖��߂͑������z��ϐ��Ɋi�[���ꂽ�l��S�ĕ����s������Ƃ��ď����o���}�N���ł��B
^
p1�ɔz��̒��g���󂯎�邽�߂̕�����^�ϐ����w�肵�ĉ������B
p2�ɒ��g���ꗗ�\�����������������z��ϐ����w�肵�ĉ������B���ׂĂ̎����ɑΉ����Ă��܂��B
coment�ɂ́A��������w�肷�邱�Ƃ� mesbox ��e�L�X�g�t�@�C���ł̏o�͎��ɃR�����g�Ƃ��ĕ\�������邱�Ƃ��ł��܂��B
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
            <td>��</td> <td>��</td> <td>��</td> <td>��</td> <td>X</td> <td>X</td>
        </tr>

        <tr align="center">
            <th>
                �ϐ��̎g�p��
            </th>
            <td>---</td> <td>---</td> <td>---</td> <td>---</td> <td>��</td> <td>��</td>
        </tr>
    </table>

    <style>
    th,td {
    padding: 5px 20px;

    }
    </style>
}html

�l�̏����o�����\�ȕϐ��̌^�́A���x���^�A������^�A�����^�A�����^��4�ŁA���W���[���^�ACOM�I�u�W�F�N�g�^�Ɋւ��Ă͏����o�����s���܂���B
�܂��A���x���^�̏ꍇldim�ŏ��������������z��ɋ󂫂�������̂͂��̒l��<null-label>�ƕ\������܂��B
�ϐ��̌^�� vartype�ɂ����̂ŁAlabel, str, double, int, struct, comobj �Ƃ��ꂼ��\������܂��B�ϐ��̎g�p�󋵂�varuse�ɂ����̂ł��B�ϐ����̕\���̓}�N���W�J�𗘗p���čs���Ă��܂��B�ڍׂ�02_myarray.hsp���䗗���������B
^
���̖��߂̓f�o�b�O�p�A�m�F�p�̗p�r�Ƃ��ė��p���Ă��������B�������z��ϐ��̒l�����������o���ꍇ��outarray���߂��g�p���Ă��������B
%sample
    dim  array1, 3, 3, 3 : array1 = 1, 1, 2, 3, 5, 8, 13, 21, 34
    ddim array2, 5, 6    : array2 = 1.41421356, 2.2360679, 3.141592
    sdim array3, 10      : array3 = "ABC", "DEF", "GHI", "?"
    ldim array4, 3       : array4 = *labl1, *labl2, *labl3

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
outarray
cnvarray
labarray
vartype


;������������������������������������������������������������������������������������


%index
setarray
�������z��̘A�����
%prm
p1, p2, iflg, index
p1   : �����̔z��ϐ�
p2   : ����l�������͂�����i�[�����ϐ�
iflg : �����@�\�t���O (= 0) (0:OFF, 1:ON)
index: �����l (= 1)
%inst
���̖��߂͑������z��ϐ��ɒl��A���������}�N���ł��B
^
p1�ɂ͑����ƂȂ鑽�����z��ϐ����w�肵�ĉ������B���ׂĂ̎����ɑΉ����Ă��܂��B
p2�ɂ͑���������l�Ⴕ���͂�����i�[�����ϐ����w�肵�ĉ������B
iflg �ɂ͑����@�\���g�p����t���O���w�肵�ĉ������B�ȗ����܂���0��OFF�A1���w�肷�邱�Ƃ�ON�ɂȂ�܂��B
index�ɂ͑����@�\�Ŏg�p���鑝���l���w�肵�ĉ������B�ȗ�����+1�ł��B
^
index�͐��������̒l����邱�Ƃ��ł��A���̒l�ŉ��Z�A���̒l�Ō��Z�ƂȂ�܂��B����Ɏ����A�����A��������w��ł��܂��B
^
��p2�Aindex�Ƃ��ɔz��ϐ��ɂ͑Ή����Ă��܂���B
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
outarray
cnvarray
labarray


;������������������������������������������������������������������������������������


%index
outarray
�������z��̒l���o��
%prm
p1, p2, iflg
p1   : �z��ϐ��̒��g���󂯎�镶����^�ϐ�
p2   : �z��ϐ�
iflg : ���x�����[�h (= 0)
%inst
���̖��߂͑������z��ϐ��̒l�݂̂𕡐��s������Ƃ��ď����o�����̂ł��B
�e�p�����[�^�̉����priarray���߂Ɠ��l�ŁAp2�Ɏw��ł���z��ϐ��̌^�́A���x���^�A������^�A�����^�A�����^��4�ł��B
^
p2�Ƀ��x���^�z��ϐ����w�肵���ꍇ�A�������͑�3�p�����[�^��1���w�肵���ꍇ�A���x���������[�h�ƂȂ�o�͎��̏������ω����܂��B
labarray���߂ƂƂ��ɗ��p���邱�ƂŃ��x���𐔑����p�ӂ��邱�Ƃ��\�ł��B
^
���̖��߂̓f�o�b�O�d�l��priarray���߂���s�v�ȕ\�����팸���A�z��̒l�������o�������񑀍�d�l�ƂȂ��Ă��܂��B
^
%sample
    :
    sdim hyouj, 64
    sdim str_ary, 64, 5
    labarray hyouj, str_ary, "*labl_", 1
    outarray hyouj, str_ary, 1
    notesel hyouj
    notesave "labl_test.hsp"

////////  ( �o�͌��� )  ////////
//[ str_ary ] str(5)
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
%group
�����񑀍얽��
%type
���[�U�[��`�}�N��
%href
priarray
setarray
cnvarray
labarray


;������������������������������������������������������������������������������������


%index
cnvarray
�������z��֕ϊ�
%prm
p1, p2, type, d1, d2, d3, d4
p1          : �ϐ���
p2          : �����s������ϐ��Ⴕ���͑������z��ϐ�
type        : �ϊ���̌^��\�����l (= 2) (2:������^, 3:�����^, 4:�����^)
d1,d2,d3,d4 : �e�����v�f�� (= 0)
%inst
���̖��߂͕����s������A�܂��͑������z���ʂ̑������z��֕ϊ�������̂ł��B
^
p1�ɂ͑������z��֕ϊ���̕ϐ������w�肵�Ă��������Bsdim���ŏ���������K�v�͂���܂���B
p2�ɂ͑������z��ɕϊ������������s������ϐ��A�܂��͑������z��ϐ����w�肵�Ă��������B
type�ɂ�p1�Ŏw�肵���ϐ��́A�ϊ���̌^��\���l���w�肵�Ă��������B�w��l��vartype�Ɠ��l�ŁA2�ŕ�����^�A3�Ŏ����^�A4�Ő����^�ƂȂ�܂��B
^
d1, d2, d3, d4�ɂ͕ϊ���A�������z��ϐ��ƂȂ�p1�̊e�����v�f�����w�肵�Ă��������Bd4�ȗ�����3�����z��Ad3�ȍ~�ȗ�����2�����z��Ad2�ȍ~�ȗ�����1�����z��ƂȂ�܂��B
^
p2�Ŏw�肳�ꂽ�ϐ��������s������̏ꍇ�Ad1�ȍ~���ȗ�����Ƃ��܂��ϊ��ł��܂���̂ŁA�����s��������w�肵���ꍇ�͕K��d1�ȍ~�̎w������Ă��������Bp2�Ŏw�肳�ꂽ�ϐ����z��ϐ��̏ꍇ�́Ad1�ȍ~���ȗ����邱�Ƃ�p2�̊e�����v�f�������̂܂܎g�p����p1�����������܂��B���̂��ߔz��R�s�[�A�������͌^�ϊ��Ƃ��ċ@�\���܂��B

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
�����񑀍얽��
%type
���[�U�[��`����
%href
priarray
outarray
labarray


;������������������������������������������������������������������������������������


%index
labarray
���x���^�z�񐶐�
%prm
p1, p2, "*������", index, coment
p1       : �����o����ƂȂ镡���s������^�ϐ�
p2       : �����o��������^�������z��ϐ�
"*������" : ���x�����ɂ�����������
index    : �����l   (= 1)
coment   : �R�����g (�ȗ���)
%inst
���̖��߂͕�����^�̑������z��ϐ������x���^�Ƃ��ė��p�ł���悤�ɂ�����̂ł��B
^
p1�ɂ͕����s��������󂯎��ϐ����w�肵�ĉ������B
p2�ɂ͕�����^�̑������z��ϐ����w�肵�ĉ������B
"*������"�ɂ͊�{�ƂȂ郉�x�������w�肵�ĉ������B
index�ɂ̓��x���̃C���f�b�N�X�ƂȂ镶����A�����A�������w�肵�ĉ������B
coment�ɂ͕�������w�肷�邱�Ƃ�.hsp�t�@�C���ł̏o�͎��ɃR�����g�Ƃ��ĕ\�����邱�Ƃ��ł��܂��B
^
p1, p2�͂��炩����sdim�ŕϐ��o�b�t�@���m�ۂ��Ă����ĉ������B�܂��A"*������"�̍ŏ��ɂ͕K���A�X�^���X�N"*"�����ĉ������B
^
���̖��߂�p1��p2�A2�̕�����^�̕ϐ����o�͂��܂��B���s��Ap1��notesave���Ŋg���q��.hsp�ȂǂƂ��ĕۑ����ĉ������B�o�͂����t�@�C����include�Ȃ���addition���邱�ƂŁAp2�Ɏw�肵���������z��ϐ����A�ȍ~���x���^�Ƃ��ė��p���邱�Ƃ��ł��܂��B
^
���̖��߂�setarray���߂�outarray���߂��|�����킹�����̂ŁA�������z��ɘA��������s���A���̒l�𕡐��s������Ƃ��ĕʕϐ��ɏ����o���A�Ƃ������̂ł��B

%sample
    :
    sdim hyouj, 64
    sdim str_ary, 64, 5
    labarray hyouj, str_ary, "*labl_", 1
    notesel hyouj
    notesave "labl_test.hsp"

////////  ( �o�͌��� )  ////////
//[ str_ary ] str(5)
    str_ary(0) = *labl_
    str_ary(1) = *labl_1
    str_ary(2) = *labl_2
    str_ary(3) = *labl_3
    str_ary(4) = *labl_4

%group
�����񑀍얽��
%type
���[�U�[��`����
%href
priarray
setarray
outarray
cnvarray


;������������������������������������������������������������������������������������


%index
objprh
�I�u�W�F�N�g�̍X�V
%prm
p1, p2
p1 : �I�u�W�F�N�g�̃n���h��
p2 : �ύX����p�����[�^�̓��e
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
���[�U�[��`����
%href
objprm
sendmsg
objinfo


;������������������������������������������������������������������������������������
