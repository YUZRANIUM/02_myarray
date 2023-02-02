; INFO ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; FileName : 02_myarray_srch.hs
; Version  : 0.28
; Date     : 2023/02/01
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
;   date    : 2023/01/16
;   person  : Yuzranium
;   content : 多次元配列をなんやかんやする
;
;   ***  掲示板情報 (過去ログ)  ***
;   date    : 2022/11/26
;   content : 多次元配列変数を複数行文字列に
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%dll
myarray_srch
%ver
0.28
%date
2023/02/01
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
; sortgetc
; twinsortary
;
; bisrch
; MDABiSrch
; MDALiSrch
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%index
sortgetc
ソート元インデックス取得
%prm
(index)
index : インデックス
%inst
この関数は、sortgetの関数バージョンです。
^

%sample
    ; 一時保存用
    dim tmp_, length(ary2)
    foreach ary2
        tmp_(cnt) = ary2(cnt)
    loop

    ; ary1のソート
    sortval ary1, 0

    ; ary1に合わせてary2のソート
    foreach ary2
        ary2(cnt) = tmp_(sortgetc(cnt))
    loop

%group
拡張入出力制御
%type
ユーザー拡張入出力制御関数
%href
sotrget
sortstr
sortval
sortnote

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%index
twinsortary
同時ソート
%prm
ary1, ary2, p1
ary1 : 配列変数名1
ary2 : 配列変数名2
p1   : 昇降順 (= 0, 0: 昇順 / 1: 降順)
%inst
この命令は、ary1に指定された配列のソートを行い、その結果に基づいてary2のソートを行うものです。
^
* ary1, ary2ともに、1次元配列でなければなりません。多次元配列の場合はcnvarray命令で1次元配列に変換して下さい。
* p1に0を指定した場合はary1が昇順、1を指定した場合は降順にソートされます。
^
                p1
---------------------------
    0   |  昇順 (小さい順)
    1   |  降順 (大きい順)
^
内部ではsortval及びsortstrを用いてary1をソートし、そのソート結果に基づいてary2をソートします。
%sample

%group
拡張入出力制御
%type
ユーザー拡張入出力制御命令
%href
sortgetc
sortval
sortstr

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%index
bisrch
二分木探索
%prm
item, srch_ary, srch
item     : 探索する値もしくはそれを格納した変数名
srch_ary : 探索元の変数名 (1次元配列)
srch     : 結果を受け取る変数名
%inst
この命令は、itemで指定された値をsrch_aryの中で二分木探索を行い、srch_aryの配列要素をsrchに読み出すものです。
^
* srch_ary はあらかじめ、昇順ソートされていることが前提です。
^
実行後、探索に成功した場合はsrch_aryの配列要素がsrchに代入されます。探索に失敗した場合はsrchに-1が代入されます。

%sample

%group
拡張入出力制御
%type
ユーザー定義命令
%href
mlgetc
mdabisrch

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%index
MDABiSrch
二分木探索 多次元配列仕様
%prm
item, srch_ary, srch
item     : 探索する値もしくはそれを格納した変数名
srch_ary : 探索元の配列変数名
srch     : 変数名
%inst
この命令は多次元配列変数の二分木探索を行うものです。
^
* srch_ary には1次元配列はもちろん、2次元以上の多次元配列変数の指定が可能です。
* srch には探索の結果を受け取る変数名を指定して下さい。
^
この命令の実行後、探索の結果がsrchに代入されます。探索に成功した場合はsrch_aryの1次元化要素数が、失敗した場合は-1が代入されます。
^
1次元化要素数はlinedim命令を利用することで本来のsrch_aryの各次元要素数が得られます。また、uniary関数やunion関数では1次元化要素数から値を直接得ることも可能です。
^
注意事項として、srch_aryはあらかじめ昇順ソートされている必要があります。

%sample
    :
    dim item_values, 10, 5, 5
    :
    MDABiSrch item, item_values, index

    if (index != -1) {mes uniary(item_values, index)} else {mes "not found!"}

    stop
%group
拡張入出力制御
%type
ユーザー定義関数
%href
uniary
bisrch
MDALiSrch

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%index
MDALiSrch
線形探索 多次元配列仕様
%prm
(item, srch_ary)
item     : 探索する値もしくはそれを格納した変数名
srch_ary : 探索元の配列変数名
%inst
この関数は、itemで指定された値を多次元配列変数srch_ary内で線形探索を行い、その探索結果を返すものです。
^
* item には文字列、実数値、整数値、またはそれらを格納した変数を指定して下さい。
^
実行後、探索に成功した場合はsrch_aryの1次元化要素数が、失敗した場合は-1が返ります。
1次元化要素数はlinedim命令を利用することで本来のsrch_aryの各次元要素数が得られます。また、uniary関数やunion関数では1次元化要素数から値を直接得ることも可能です。
^
線形探索なのでsrch_aryをソートしておく必要はなく必要はありません。また、探索回数をなるべく少なくなるよう探索箇所を四分して探索を行うので、最大探索回数は元のデータ量のおよそ四分の一程度となります。


%sample
    :
    k = MDALiSrch("りんご", item_values)

    if (k != -1) {mes uniary(item_values, k)} else {mes "not found!"}

    stop
%group
拡張入出力制御
%type
ユーザー定義関数
%href
uniary
bisrch
MDABiSrch

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
