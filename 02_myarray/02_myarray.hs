; INFO ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; FileName : 02_myarray.hs
; Version  : 0.25.1
; Date     : 2022/12/07
; Author   : YUZRANIUM（ゆずらにうむ）
; Twitter  : https://twitter.com/YUZRANIUM
; GitHub   : https://github.com/YUZRANIUM/02_myarray
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Description       MyricaM M/16-18
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
0.25.1
%date
2022/12/07
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
多次元配列書出し
%prm
p1, p2, p3
p1 : 配列変数の中身を受け取る文字列型変数
p2 : 中身を見たい配列変数
p3 : コメント（省略可）
%inst
この命令は多次元配列変数に格納された値を全て複数行文字列として書き出すマクロです。
^
p1に配列の中身を受け取るための文字列型変数を指定して下さい。
p2に中身を一覧表示させたい多次元配列変数を指定して下さい。すべての次元に対応しています。
p3には、文字列を指定することで mesbox やテキストファイルでの出力時にコメントとして表示させることができます。
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
                各次元要素
            </th>
            <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td>
        </tr>

        <tr align="center">
            <th>
                行数
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
    padding: 5px 20px;

    }
    </style>
}html

値の書き出しが可能な変数の型は、文字列型、実数型、整数型の3つで、ラベル型、モジュール型、COMオブジェクト型に関しては書き出しを行いません。
変数の型は vartypeによるもので、label, str, double, int, struct, comobj とそれぞれ表示されます。変数の使用状況はvaruseによるものです。変数名の表示はマクロ展開を利用して行っています。詳細は02_myarray.hspを御覧ください。
^
※あくまでも、デバッグ用、確認用に使用して下さい。
%sample
    dim  array1, 3, 3, 3  :  array1 = 1, 1, 2, 3, 5, 8, 13, 21, 34
    ddim array2, 5, 6     :  array2 = 1.41421356, 2.2360679, 3.141592
    sdim array3, 10       :  array3 = "ABC", "DEF", "GHI", "?"
    ldim array4, 3        :  array4 = *labl1, *labl2, *labl3

    priarray hyouji, array1, "フィナボッチ数列ですね"
    priarray hyouji, array2, "ルート2とルート3...のはずです。覚えてない"
    priarray hyouji, array3, "215行目を確認.\nstat要チェック、-1でなければ158行目〜が怪しい."
    priarray hyouji, array4, "エディターの文字列を切り取る以外にもマクロ展開を利用する方法があります"

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
多次元配列連続代入
%prm
p1, p2, p3, p4
p1 : 代入先の配列変数
p2 : 代入値もしくはそれを格納した変数
p3 : 増減機能フラグ（= 0）（0:OFF, 1:ON）
p4 : 増減値（= 1）（str, double, int）
%inst
この命令は多次元配列変数に値を連続代入するマクロです。
^
p1には代入先となる多次元配列変数を指定して下さい。すべての次元に対応しています。
p2には代入したい値若しくはそれを格納した変数を指定して下さい。
p3は増減機能を使用するフラグを指定して下さい。省略または0でOFF、1を指定することでONになります。
p4には増減機能で使用する増減値を指定して下さい。省略時は+1です。
^
p4は正負両方の値を取ることができ、正の値で加算、負の値で減算となります。さらに実数、整数、文字列を指定できます。
^
本マクロはマクロ展開時に midlevar_、increase_ という変数を介してモジュール内の命令にパラメータタイプvarでp2（代入値）及びp4（増減値）をそれぞれ渡しています。
そのため、p2（代入値）はラベル、文字列、実数、整数、若しくはそれらを格納した変数での指定に、p4（増減値）は文字列、実数、整数若しくはそれを格納した変数での指定に対応しています。
p2（代入値）、p4（増減値）ともに配列変数には対応していません。
^
※この命令は、0以外の値や特定の文字列で配列を初期化したい場合や、動作確認用として利用する配列の準備等での利用を想定してします。
^
%sample
    ; 例）整数型、0〜、+1ずつ連続代入する場合
    setarray int_ary, 0, 1, 1
    ; （結果）
    int_ary(0･･･) = 0
    int_ary(1･･･) = 1
    int_ary(2･･･) = 2
            :

    ; 例）実数型、100〜、-0.125ずつ連続代入する場合
    setarray dobl_ary, 100.0, 1, -0.125
    ; （結果）
    dobl_ary(0･･･) = 100.00000
    dobl_ary(1･･･) = 99.875000
    dobl_ary(2･･･) = 99.750000
            :

    ; 例）文字列型、abc_、+1ずつ連続代入する場合
    setarray str_ary, "abc_", 1, 1
    ; （結果）
    str_ary(0･･･) = "abc_"
    str_ary(1･･･) = "abc_1"
    str_ary(2･･･) = "abc_2"
    str_ary(3･･･) = "abc_3"
            :
    ; * 文字列型の場合はインデックスとして機能します。
    ; * 前方につけることはできません。上記のように後方に付きます。

    ; 例）文字列型、ABCDE、(｀･ω･´)ゞずつ連続代入する場合
    setarray str_ary, "ABCDE", 1, "(｀･ω･´)ゞ"
    ; （結果）
    str_ary(0･･･) = "ABCDE"
    str_ary(1･･･) = "ABCDE(｀･ω･´)ゞ"
    str_ary(2･･･) = "ABCDE(｀･ω･´)ゞ(｀･ω･´)ゞ"
    str_ary(3･･･) = "ABCDE(｀･ω･´)ゞ(｀･ω･´)ゞ(｀･ω･´)ゞ"
            :
    ; * 増減値に文字列を指定した場合は足していくことしかできません。

    setarray lab_ary, *hoge
    ; （結果）
    lab_ary(0･･･) = *hoge   // すべて同じものになります
    lab_ary(1･･･) = *hoge
    lab_ary(2･･･) = *hoge
            :
    ; * ラベル型の場合は増減機能を使用することはできません。連続代入のみです。

%group
文字列操作命令
%type
ユーザー定義マクロ
%href
priarray


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
