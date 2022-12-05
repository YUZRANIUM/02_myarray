; INFO ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; FileName : 02_myarray.hs
; Version  : 0.24
; Date     : 2022/12/04
; Author   : YUZRANIUM（ゆずらにうむ）
; Twitter  : https://twitter.com/YUZRANIUM
; GitHub   : https://github.com/YUZRANIUM/02_myarray
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Description
;
;   このモジュールはHSPTV!掲示板の皆様によって支えられております。
;   この場を借りて感謝申し上げます。誠に有難うございます。
;
;   ***  掲示板情報  ***
;   kind    : 宣伝
;   date    : 2022/11/26
;   person  : Yuzranium
;   content : 多次元配列変数を複数行文字列に
;
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%dll
02_myarray
%ver
0.24
%date
2022/12/05
%author
YUZRANIUM
%url
https://twitter.com/YUZRANIUM
https://github.com/YUZRANIUM/02_myarray
%note
02_myarray.hspをインクルードすること
%port
Win


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━


%index
priarray
多次元配列変数の書出し
%prm
p1,p2
p1 : 配列変数の中身を受け取る文字列型変数
p2 : 中身を見たい配列変数
%inst
この命令は多次元配列変数に格納された値を全て複数行文字列として書き出すマクロです。
^
p1に配列の中身を受け取るための文字列型変数を指定して下さい。
p2に中身を一覧表示させたい多次元配列変数を指定して下さい。すべての次元に対応しています。
^
                p2に指定できる型と表示内容
html{
    <table border="1">
        <tr>
            <th align="center">
                表示内容 \ 型
            </th>
            <th>label</th> <th>str</th> <th>double</th> <th>int</th> <th>struct</th> <th>comobj</th>
        </tr>

        <tr align="center">
            <th>
                変数名
            </th>
            <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td>
        </tr>

        <tr align="center">
            <th>
                型
            </th>
            <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td>
        </tr>

        <tr align="center">
            <th>
                各次元要素数
            </th>
            <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td>
        </tr>

        <tr align="center">
            <th>
                呼び出し行数
            </th>
            <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td>
        </tr>

        <tr align="center">
            <th>
                値の書き出し
            </th>
            <td>X</td> <td>○</td> <td>○</td> <td>○</td> <td>X</td> <td>X</td>
        </tr>

        <tr align="center">
            <th>
                変数の使用状況
            </th>
            <td>○</td> <td>---</td> <td>---</td> <td>---</td> <td>○</td> <td>○</td>
        </tr>
    </table>

    <style>
    th,td {
    padding: 5px 15px;

    }
    </style>
}html

中身の書き出しが可能な変数の型は、文字列型、実数型、整数型の3つで、ラベル型、モジュール型、COMオブジェクト型に関しては書き出しを行いません。
変数の型は vartypeによるもので、label, str, double, int, struct, comobj とそれぞれ表示されます。変数の使用状況はvaruseによるものです。変数名の表示はマクロ展開を利用して行っています。詳細は02_myarray.hspを御覧ください。
^
※あくまでも、デバッグ用、確認用に使用して下さい。
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
文字列操作命令
%type
ユーザー定義マクロ
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


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━


%index
setarray
多次元配列一括代入
%prm
p1,p2
p1 : 代入先の配列変数
p2 : 代入したい値もしくはそれを格納した変数
%inst
この命令は多次元配列変数に同一の値を一括代入するマクロです。
^
p1には代入先となる多次元配列変数を指定して下さい。
p2には代入したい値若しくはそれを格納した変数を指定して下さい。
^
p1で指定できる型は、ラベル型、文字列型、実数型、整数型、の4つのみです。
^
本マクロは展開時に midlevar_ という変数を介してモジュール内の命令にパラメータタイプvarでp2を渡しています。
そのため、p2はラベル、文字列、実数、整数、若しくはそれらを格納した変数での指定に対応しています。配列変数には対応していません。
^
この命令は、0以外の値や特定の文字列で配列を初期化したい場合や、動作確認用として利用する配列の準備等での利用を想定してします。インデックスや添字等を付加する機能はございません。

%sample

setarray hoge0, *main
setarray hoge1, "ABCDE"
setarray hoge2, 3.141592
setarray hoge3, 123456
setarray hoge4, setnum

%group
文字列操作命令
%type
ユーザー定義マクロ
%href
priarray


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
