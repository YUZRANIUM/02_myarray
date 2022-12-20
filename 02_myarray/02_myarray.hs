; INFO ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; FileName : 02_myarray.hs
; Version  : 0.26.1
; Date     : 2022/12/18
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
0.26.1
%date
2022/12/18
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
多次元配列の情報書出し
%prm
p1, p2, coment
p1     : 配列変数の中身を受け取る文字列型変数
p2     : 配列変数
coment : コメント（省略可）
%inst
この命令は多次元配列変数に格納された値を全て複数行文字列として書き出すマクロです。
^
p1に配列の中身を受け取るための文字列型変数を指定して下さい。
p2に中身を一覧表示させたい多次元配列変数を指定して下さい。すべての次元に対応しています。
comentには、文字列を指定することで mesbox やテキストファイルでの出力時にコメントとして表示させることができます。
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
            <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>X</td> <td>X</td>
        </tr>

        <tr align="center">
            <th>
                変数の使用状況
            </th>
            <td>---</td> <td>---</td> <td>---</td> <td>---</td> <td>○</td> <td>○</td>
        </tr>
    </table>

    <style>
    th,td {
    padding: 5px 20px;

    }
    </style>
}html

値の書き出しが可能な変数の型は、ラベル型、文字列型、実数型、整数型の4つで、モジュール型、COMオブジェクト型に関しては書き出しを行いません。
また、ラベル型の場合ldimで初期化した直後や配列に空きがあるものはその値が<null-label>と表示されます。
変数の型は vartypeによるもので、label, str, double, int, struct, comobj とそれぞれ表示されます。変数の使用状況はvaruseによるものです。変数名の表示はマクロ展開を利用して行っています。詳細は02_myarray.hspを御覧ください。
^
この命令はデバッグ用、確認用の用途として利用してください。多次元配列変数の値だけを書き出す場合はoutarray命令を使用してください。
%sample
    dim  array1, 3, 3, 3 : array1 = 1, 1, 2, 3, 5, 8, 13, 21, 34
    ddim array2, 5, 6    : array2 = 1.41421356, 2.2360679, 3.141592
    sdim array3, 10      : array3 = "ABC", "DEF", "GHI", "?"
    ldim array4, 3       : array4 = *labl1, *labl2, *labl3

    priarray hyouji, array1, "フィナボッチ数列ですね"
    priarray hyouji, array2, "ルート2とルート3...のはずです。覚えてない"
    priarray hyouji, array3, "215行目を確認.\nstat要チェック、-1でなければ158行目～が怪しい."
    priarray hyouji, array4, "エディターの文字列を切り取る以外にもマクロ展開を利用する方法があります"

    notesel hyouji
    notesave dir_cur + "\\print_array.txt"

%group
文字列操作命令
%type
ユーザー定義マクロ
%href
setarray
outarray
cnvarray
labarray
vartype


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━


%index
setarray
多次元配列の連続代入
%prm
p1, p2, iflg, index
p1   : 代入先の配列変数
p2   : 代入値もしくはそれを格納した変数
iflg : 増減機能フラグ (= 0) (0:OFF, 1:ON)
index: 増減値 (= 1)
%inst
この命令は多次元配列変数に値を連続代入するマクロです。
^
p1には代入先となる多次元配列変数を指定して下さい。すべての次元に対応しています。
p2には代入したい値若しくはそれを格納した変数を指定して下さい。
iflg には増減機能を使用するフラグを指定して下さい。省略時または0でOFF、1を指定することでONになります。
indexには増減機能で使用する増減値を指定して下さい。省略時は+1です。
^
indexは正負両方の値を取ることができ、正の値で加算、負の値で減算となります。さらに実数、整数、文字列を指定できます。
^
※p2、indexともに配列変数には対応していません。
※この命令は、0以外の値や特定の文字列で配列を初期化したい場合や、動作確認用として利用する配列の準備等での利用を想定してします。
^
%sample
    ; 例）整数型、0～、+1ずつ連続代入する場合
    setarray int_ary, 0, 1, 1
    ; （結果）
    int_ary(0･･･) = 0
    int_ary(1･･･) = 1
    int_ary(2･･･) = 2
            :

    ; 例）実数型、100～、-0.125ずつ連続代入する場合
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
outarray
cnvarray
labarray


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━


%index
outarray
多次元配列の値書出し
%prm
p1, p2, iflg
p1   : 配列変数の中身を受け取る文字列型変数
p2   : 配列変数
iflg : ラベルモード (= 0)
%inst
この命令は多次元配列変数の値のみを複数行文字列として書き出すものです。
各パラメータの解説はpriarray命令と同様で、p2に指定できる配列変数の型は、ラベル型、文字列型、実数型、整数型の4つです。
^
p2にラベル型配列変数を指定した場合、もしくは第3パラメータに1を指定した場合、ラベル生成モードとなり出力時の書式が変化します。
labarray命令とともに利用することでラベルを数多く用意することが可能です。
^
この命令はデバッグ仕様のpriarray命令から不要な表示を削減し、配列の値を書き出す文字列操作仕様となっています。
^
%sample
    :
    sdim hyouj, 64
    sdim str_ary, 64, 5
    labarray hyouj, str_ary, "*labl_", 1
    outarray hyouj, str_ary, 1
    notesel hyouj
    notesave "labl_test.hsp"

////////  ( 出力結果 )  ////////
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
文字列操作命令
%type
ユーザー定義マクロ
%href
priarray
setarray
cnvarray
labarray


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━


%index
cnvarray
多次元配列へ変換
%prm
p1, p2, type, d1, d2, d3, d4
p1          : 変数名
p2          : 複数行文字列変数若しくは多次元配列変数
type        : 変換先の型を表す数値 (= 2) (2:文字列型, 3:実数型, 4:整数型)
d1,d2,d3,d4 : 各次元要素数 (= 0)
%inst
この命令は複数行文字列、または多次元配列を別の多次元配列へ変換するものです。
^
p1には多次元配列へ変換後の変数名を指定してください。sdim等で初期化する必要はありません。
p2には多次元配列に変換したい複数行文字列変数、または多次元配列変数を指定してください。
typeにはp1で指定した変数の、変換後の型を表す値を指定してください。指定値はvartypeと同様で、2で文字列型、3で実数型、4で整数型となります。
^
d1, d2, d3, d4には変換後、多次元配列変数となるp1の各次元要素数を指定してください。d4省略時は3次元配列、d3以降省略時は2次元配列、d2以降省略時は1次元配列となります。
^
p2で指定された変数が複数行文字列の場合、d1以降を省略するとうまく変換できませんので、複数行文字列を指定した場合は必ずd1以降の指定をしてください。p2で指定された変数が配列変数の場合は、d1以降を省略することでp2の各次元要素数をそのまま使用してp1を初期化します。そのため配列コピー、もしくは型変換として機能します。

%sample
    :
    :
    sdim text_data, 1024
    notesel text_data
    noteload "hogehoge.txt"

    ; text_dataの中身を 実数型、hoge_array1(10, 5, 2)へ変換
    cnvarray hoge_array1, text_data, 3, 10, 5, 2

    ; hoge_array1(10, 5, 2)をhoge_array2(10, 5, 2)に整数型でコピー
    cnvarray hoge_array2, hoge_array1, 4

    ; hoge_array2(10, 5, 2)をhoge_array3(10, 10)に文字列型で変換
    cnvarray hoge_array3, hoge_array2, 2, 10, 10

    // hoge_array1(10, 5, 2) : 実数型
    // hoge_array2(10, 5, 2) : 整数型
    // hoge_array3(10, 10)   : 文字列型

%group
文字列操作命令
%type
ユーザー定義命令
%href
priarray
outarray
labarray


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━


%index
labarray
ラベル型配列生成
%prm
p1, p2, "*文字列", index, coment
p1       : 書き出し先となる複数行文字列型変数
p2       : 書き出す文字列型多次元配列変数
"*文字列" : ラベル名にしたい文字列
index    : 増減値   (= 1)
coment   : コメント (省略可)
%inst
この命令は文字列型の多次元配列変数をラベル型として利用できるようにするものです。
^
p1には複数行文字列を受け取る変数を指定して下さい。
p2には文字列型の多次元配列変数を指定して下さい。
"*文字列"には基本となるラベル名を指定して下さい。
indexにはラベルのインデックスとなる文字列、実数、整数を指定して下さい。
comentには文字列を指定することで.hspファイルでの出力時にコメントとして表示することができます。
^
p1, p2はあらかじめsdimで変数バッファを確保しておいて下さい。また、"*文字列"の最初には必ずアスタリスク"*"をつけて下さい。
^
この命令はp1とp2、2つの文字列型の変数を出力します。実行後、p1はnotesave等で拡張子を.hspなどとして保存して下さい。出力したファイルをincludeないしadditionすることで、p2に指定した多次元配列変数を、以降ラベル型として利用することができます。
^
この命令はsetarray命令とoutarray命令を掛け合わせたもので、多次元配列に連続代入を行いつつ、その値を複数行文字列として別変数に書き出す、というものです。

%sample
    :
    sdim hyouj, 64
    sdim str_ary, 64, 5
    labarray hyouj, str_ary, "*labl_", 1
    notesel hyouj
    notesave "labl_test.hsp"

////////  ( 出力結果 )  ////////
//[ str_ary ] str(5)
    str_ary(0) = *labl_
    str_ary(1) = *labl_1
    str_ary(2) = *labl_2
    str_ary(3) = *labl_3
    str_ary(4) = *labl_4

%group
文字列操作命令
%type
ユーザー定義命令
%href
priarray
setarray
outarray
cnvarray


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━


%index
objprh
オブジェクトの更新
%prm
p1, p2
p1 : オブジェクトのハンドル
p2 : 変更するパラメータの内容
%inst
この命令はobjprm命令とほとんど同じものです。
^
p1にはウィンドウオブジェクトのハンドルを指定して下さい。
^
gsel命令での描画先、操作先ウィンドウの指定をする必要がないので、複数のウィンドウで複数のオブジェクトを扱う際に効果的です。
%sample

%group
オブジェクト制御命令
%type
ユーザー定義命令
%href
objprm
sendmsg
objinfo


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
