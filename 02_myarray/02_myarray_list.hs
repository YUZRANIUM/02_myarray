; INFO ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; FileName : 02_myarray_list.hs
; Version  : 0.28.3
; Date     : 2023/04/01
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
myarray
%ver
0.28.3
%date
2023/04/01
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
; uniary
; uniary_
; union
; union4
; union_d
; union4d
; uniformat
; Auniary
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%index
uniary
多次元配列を1次元として扱う
%prm
(ary, dim_ofset)
ary       : 配列変数名
dim_ofset : 配列のオフセット値
%inst
この関数はあらゆる多次元配列を1次元配列として扱うものです。
^
* ary は、文字列型、実数型、整数型のみ対応しています。
* dim_ofset には、配列のオフセット値(1次元化要素数)を指定して下さい。
^
1次元化した多次元配列変数に値を代入したい場合は、Auniary命令を使用して下さい。


%sample
    :
    dim ary1, 10, 5, 4, 3
    setarray ary1, 0, 1, 2

    mes uniary(ary1, 50)

    ; すべて書き出し
    repeat dimlinec(ary1)
        mes uniary(ary1, cnt)
    loop

    stop
%group
配列特殊操作
%type
ユーザー拡張入出力制御命令
%href
dimlinec
linedim
uniary_
union
union4
union_d
union4d
uniformat
Auniary

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%index
uniary_
多次元配列を1次元として扱う(業務用)
%prm
(ary, dim_ofset, ary_info)
ary       : 配列変数名
dim_ofset : 配列のオフセット値
ary_info  : 配列情報を格納した変数
%inst
この関数は、uniary関数をループ内で使用するときや同じ変数を扱うときなどに特化したものです。
^
動作内容や仕様はuniary関数と同じですが、
使用前にあらかじめdim_info命令でaryに関する配列情報を取得しておく必要があります。
^
1次元化した多次元配列変数に値を代入したい場合は、Auniary命令を使用して下さい。

%sample
    :
    dim ary1, 10, 5, 4, 3
    setarray ary1, 0, 1, 2

    dim_info ary1, ary1_info
    mes uniary_(ary1, 50, ary1_info)

    ; すべて書き出し
    repeat dimlinec(ary1)
        mes uniary_(ary1, cnt, ary1_info)
    loop

    stop
%group
配列特殊操作
%type
ユーザー拡張入出力制御命令
%href
dimlinec
linedim
uniary
union_d
union
uniformat
Auniary

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%index
union
配列を値でまとめる
%prm
(ary1, ary2, ary3, ary1_val)
ary1, ary2, ary3 : 配列変数名
ary1_val         : ary1の値
%inst
この関数は3つの多次元配列を配列変数ary1の値でまとめて1次元配列として扱うものです。
^
* ary1, ary2, ary3はそれぞれ、文字列型、実数型、整数型のみ対応しています。次元の制約はありません。
* ary1_val には、ary1の値もしくはそれを格納した変数を指定して下さい。
^
ary1_valの値をary1の中からMDALiSrch関数を用いて線形探索を行い、得られた1次元化要素数とuniary関数でary2, ary3の値を特定します。
^
ary1_valの値を探索する分、union_d関数よりも動作は遅めです。

%sample
    :
    ; 商品名
    sdim fruits, 64, 3, 2
    fruits(0, 0) = "りんご", "みかん", "ぶどう"
    fruits(0, 1) = "いちご", "ばなな", "れもん"

    ; 単価
    unit_price = 30.2, 25.5, 55.3, 42.7, 26.0, 75.8

    ; 仕入れ数
    purchase_quantity = 100, 80, 90, 120, 130, 110

    ; 販売価格
    calc_ary selling_price, unit_price, purchase_quantity, 2  ; 乗算

    ; ぶどうの商品名と販売価格、仕入れ数を表示
    mes union(fruits, selling_price, purchase_quantity, "ぶどう")

    ; 仕入れ数が130個の商品名とその単価を表示
    mes union(purchase_quantity, fruits, unit_price, 130)

    stop
%group
配列特殊操作
%type
ユーザー定義関数
%href
uniary
union_d
union4d
uniformat
dimlinec
linedim

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%index
union4
配列を値でまとめる
%prm
(ary1, ary2, ary3, ary4, ary1_val)
ary1, ary2, ary3, ary4 : 配列変数名
ary1_val               : ary1の値
%inst
この関数はunion関数の上位版で4つの多次元配列変数をまとめて扱うものです。
^
各パラメータの解説はunion関数の項目を参考にして下さい。

%sample

%group
配列特殊操作
%type
ユーザー定義関数
%href
uniary
union
union_d
union4d

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%index
union_d
配列をオフセットでまとめる
%prm
(ary1, ary2, ary3, dim_ofset)
ary1, ary2, ary3 : 配列変数名
dim_ofset        : 配列のオフセット値
%inst
この関数は3つの多次元配列を配列変数ary1の配列のオフセット値でまとめて1次元配列として扱うものです。
^
* ary1, ary2, ary3はそれぞれ、文字列型、実数型、整数型のみ対応しています。次元の制約はありません。
* dim_ofset には、配列のオフセット値を指定して下さい。
^
union関数ではary1の値で線形探索を行い1次元化要素数を求めるという処理がありましたが、union_d関数は探索処理がない分union関数より動作は幾分速めです。


%sample
    :
    ; 商品名
    sdim fruits, 64, 3, 2
    fruits(0, 0) = "りんご", "みかん", "ぶどう"
    fruits(0, 1) = "いちご", "ばなな", "れもん"

    ; 単価
    unit_price = 30.2, 25.5, 55.3, 42.7, 26.0, 75.8

    ; 仕入れ数
    purchase_quantity = 100, 80, 90, 120, 130, 110

    ; 販売価格
    calc_ary selling_price, unit_price, purchase_quantity, 2  ; 乗算

    ; ぶどうの商品名と販売価格、仕入れ数を表示
    mes union_d(fruits, selling_price, purchase_quantity, 2)

    stop
%group
配列特殊操作
%type
ユーザー定義関数
%href
dimlinec
linedim
uniary
uniary_
union
uniformat

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%index
union4d
配列をオフセットでまとめる
%prm
(ary1, ary2, ary3, ary4, dim_ofset)
ary1, ary2, ary3, ary4 : 配列変数名
dim_ofset              : 配列のオフセット値
%inst
この関数はunion_d関数の上位版で4つの多次元配列変数をまとめて扱うものです。
^
各パラメータの解説はunion_d関数の項目を参考にして下さい。

%sample

%group
配列特殊操作
%type
ユーザー定義関数
%href
uniary
union
union4
union_d

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%index
uniformat
union書式定義
%prm
s_format
s_format : 書式文字列
%inst
この命令は、union関数及びunion_d関数の出力時の書式を設定するものです。
^
書式文字列はstrf関数のものと同じです。
^
この命令が呼ばれていない、もしくはスクリプトの途中で初期化された場合はmyarray_listモジュール内の書式文字列を管理しているsfrmt変数の書式が適用されます。

%sample

%group
配列特殊操作
%type
ユーザー定義関数
%href
uniary
uniary_
union
union_d

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%index
Auniary
1次元化して代入
%prm
ary1, dim_ofset, in_val, ary1_info
ary1      : 変数名
dim_ofset : 配列のオフセット値 (1次元化要素数)
in_val    : 代入値
ary1_info : 配列情報を格納した変数
%inst
この命令は、多次元配列変数ary1にin_valで指定された値を代入するものです。
^
文字列型、実数型、整数型のすべての次元に対応しています。
ary1_infoはary1に関する情報を格納した配列変数で、あらかじめdim_info命令を使用して取得しておく必要があります。
^
dim_info命令とAuniary命令を用いれば比較的簡単に、多次元配列変数のすべてに値を代入していくことが可能です。

%sample
    #include "02_myarray.hsp"

    dim ary, 10, 10, 5, 3
    dim_info ary, ary_info

    randomize
    repeat ary_info(5)
        Auniary ary, cnt, rnd( ary_info(5) ), ary_info
    loop

%group
配列特殊操作
%type
ユーザー定義命令
%href
dim_info
uniary
uniary_

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
