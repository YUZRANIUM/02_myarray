; INFO ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; FileName : 02_myarray.hs
; Version  : 0.22
; Date     : 2022/12/01
; Author   : YUZRANIUM（ゆずらにうむ）
; Twitter  : https://twitter.com/YUZRANIUM
; GitHub   : https://github.com/YUZRANIUM/02_myarray
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Description
; HSP3で多次元配列を確認用に文字列として書き出すなんてことないモジュールです
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

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
p2に中身を一覧表示させたい多次元配列変数を指定して下さい。次元については考えないで下さい。すべての次元に対応しています。
^
また、p2に指定できる配列の型は文字列に変換できる、実数型(ddim)、整数型(dim)、文字列型(sdim)などです。
^
複数行文字列としてp1に格納される指定配列変数p2の情報としては、p2で指定した変数名、変数の型、各次元要素数の総数、変数のバッファサイズ、本マクロ呼び出し時の行数、本マクロ呼び出し時のp2の各値、となっています。
^
変数の型は vartypeによるもので、int, double, str とそれぞれ表示されます。変数のバッファサイズは varsizeで取得しています。
^
厳密には、本マクロはlength系とif～elseによる条件分岐を行い、対応した内部命令を呼び出すものです。
また、その内部命令ではrepeat～loopによる繰り返し処理を行っています。極力ネストレベル(looplev)を浅くするようにしていますが、特に4次元配列用の内部命令では既にネストレベル4となっています。詳細は02_myarray.hspを御覧ください。
^
※注意事項として、実体を持たない型（ラベル型(ldim)やCOMオブジェクト型など）は対応していません。また、モジュール型変数に関してはその使用を想定していません。
^
あくまでも、デバッグ用、確認用に使用して下さい。
^
（  参考  ）p1に格納される文字列の書式

    [ 変数名 ] 変数の型(1次元要素, 2次元要素, 3次元要素, 4次元要素) バッファサイズ L=行数
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
文字列操作命令
%type
ユーザー定義マクロ
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

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━