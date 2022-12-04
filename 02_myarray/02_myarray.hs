; INFO ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; FileName : 02_myarray.hs
; Version  : 0.23
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
0.23
%date
2022/12/04
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
また、p2に指定できる配列の型はCOMオブジェクト型以外です。
^
p1に格納される指定配列変数p2の情報としては、p2で指定した変数名、変数の型、各次元要素の各総数、本マクロ呼び出し時の行数、本マクロ呼び出し時のp2の各値、となっています。
^
中身の書き出しが可能な変数の型は、文字列型、実数型、整数型の3つで、ラベル型、モジュール型に関しては書き出しを行わず、変数名、型、次元要素の総数、マクロ呼び出し時の行数のみの表示です。
^
変数の型は vartypeによるもので、label, str, double, int, struct とそれぞれ表示されます。変数名の表示はマクロ展開を利用して行っています。詳細は 02_myarray.hspを御覧ください。
^
※注意事項として、COMオブジェクト型は対応していません。
あくまでも、デバッグ用、確認用に使用して下さい。
^
（  参考  ）p1に格納される文字列の書式

    [ 変数名 ] 変数の型(1次元要素, 2次元要素, 3次元要素, 4次元要素) L=行数
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
文字列操作命令
%type
ユーザー定義マクロ
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


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
