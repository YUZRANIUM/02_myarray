; INFO ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; FileName : 02_myarray_srch.hs
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
; sortgetc
; twinsortary
;
; str2ASCI
; ASCI2str
; ASCIcomp
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
探索・ソート関連
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
探索・ソート関連
%type
ユーザー拡張入出力制御命令
%href
sortgetc
sortval
sortstr

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%index
str2ASCI
文字列からASCIIコードへ
%prm
ary1, s_v1
ary1 : 読み出し先の変数名
s_v1 : 文字列または文字列型変数名
%inst
この命令はs_v1に指定された文字列を1文字ずつASCIIコードに変換してary1に代入するものです。
^
* ary1はsdim等で初期化する必要はありません。
^
終了コードか、改行コードまでを連続してASCIIコードへ変換します。
半角英数はもちろん、全角文字(2バイトコード, シフトJIS)が含まれている文字列でもASCIIコードに変換可能です。
実行後、ary1にはs_v1で指定された文字列のASCIIコードが10進数で一つずつ格納された整数型の1次元配列となります。
^
例えば、
    str2ASCI ascii_1, "こんにちはHSP3"
とすると、ascii_1は

    ascii_1(0)  = 130
    ascii_1(1)  = 177
    ascii_1(2)  = 130
    ascii_1(3)  = 241
    ascii_1(4)  = 130
    ascii_1(5)  = 201
    ascii_1(6)  = 130
    ascii_1(7)  = 191
    ascii_1(8)  = 130
    ascii_1(9)  = 205
    ascii_1(10) = 72
    ascii_1(11) = 83
    ascii_1(12) = 80
    ascii_1(13) = 51
    ascii_1(14) = 0

となります。最後の0は終了コードです。
^
これを文字列に復元させるにはASCI2str関数を利用して下さい。

%sample
    #include "02_myarray.hsp"

    str2ASCI ascii_1, "こんにちはＨＳＰ３"
    str2ASCI ascii_2, "こんにちはHSP3"

    foreach ascii_1
        mes ascii_1(cnt)
    loop
    mes ASCI2str(ascii_1)

    pos 100, 0
    foreach ascii_2
        mes ascii_2(cnt)
    loop
    mes ASCI2str(ascii_2)

    stop

%group
ASCII関連
%type
ユーザー定義命令
%href
ASCI2str
ASCIcomp

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%index
ASCI2str
ASCIIコードから文字列へ
%prm
(ary1)
ary1 : ASCIIコードを格納した変数名
%inst
この関数はary1で指定されたASCIIコードを文字列として読み出すためのものです。
^
* ary1にはstr2ASCI命令で出力された変数名を指定して下さい。
^
内部でgetstr命令を利用しているので改行コードは読み出せません。

%sample

%group
ASCII関連
%type
ユーザー定義関数
%href
str2ASCI
ASCIcomp

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%index
ASCIcomp
文字列をASCIIコードで比較
%prm
(ary1, ary2, p1)
ary1, ary2 : ASCIIコードを格納した変数名
p1         : 返りフラグ (= 0, 0:小さい方 / 1:大きい方)
%inst
この関数はstr2ASCI命令で出力されたASCIIコードで文字列を比較するものです。
^
* p1 を省略、または0を指定した場合は小さい方の、1を指定した場合は大きい方の引数(パラメータ)番号が返ります。
^
            返り値 (stat)
-----------------------------------
     1  |  ary1 の方が小さい(大きい)
     2  |  ary2 の方が小さい(大きい)
     0  |  完全一致
^


%sample
    #include "02_myarray.hsp"

    str2ASCI ascii_1, "Hot Soup Processor"
    str2ASCI ascii_2, "HOT SOUP PROCESSOR"

    foreach ascii_1
        mes ascii_1(cnt)
    loop
    mes ASCI2str(ascii_1)

    foreach ascii_2
        mes ascii_2(cnt)
    loop
    mes ASCI2str(ascii_2)

    mes ASCIcomp(ascii_1, ascii_2)

%group
ASCII関連
%type
ユーザー定義関数
%href
str2ASCI
ASCI2str

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
* item には文字列、実数値、整数値、またはそれらを格納した変数を指定して下さい。
* srch_ary はあらかじめ、昇順ソートされていることが前提です。
^
実行後、探索に成功した場合はsrch_aryの配列要素がsrchに代入されます。探索に失敗した場合はsrchに-1が代入されます。
多次元配列変数をソートする場合はMDAQSortかMFCMQSort命令を使用して下さい。

%sample

%group
探索・ソート関連
%type
ユーザー定義命令
%href
mlgetc
MDABisrch
MDAQSort
MFCQSort

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
* item には文字列、実数値、整数値、またはそれらを格納した変数を指定して下さい。
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
探索・ソート関連
%type
ユーザー定義関数
%href
uniary
str2ASCI
ASCI2str
ASCIcomp
bisrch
MDALiSrch
MDAQSort
MFCQSort

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
線形探索なのでsrch_aryをソートしておく必要はなく必要はありません。また、探索回数をなるべく少なくなるよう探索箇所を6分して探索を行うので、最大探索回数は元のデータ量のおよそ6分の一程度となります。


%sample
    :
    k = MDALiSrch("りんご", item_values)

    if (k != -1) {mes uniary(item_values, k)} else {mes "not found!"}

    stop
%group
探索・ソート関連
%type
ユーザー定義関数
%href
linedim
uniary
bisrch
MDABiSrch

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%index
MDAQSort
多次元配列クイックソート
%prm
ary1, mode, frst, last
ary1 : 変数名
mode : 昇降順切り替え (= 0, 0:昇順 / 1:降順)
frst : ソート区間の開始値 (1次元化要素数)
last : ソート区間の終了値 (1次元化要素数)
%inst
この命令は、ary1に指定された配列変数の値をソートするものです。
^
ary1は文字列型、実数型、整数型の1, 2, 3, 4、いずれの次元にも対応しています。
modeではソート時の昇降順を選択でき、省略もしくは0指定で昇順、1指定で降順となります。
frstおよびlastを指定した場合は、配列変数のfrstからlastまでの一部分のみをソーティングの対象とします。省略時は配列変数のすべての値（全区間）をソートします。
^
frstおよびlastは、ary1が1次元配列変数の場合はその要素数で、多次元配列変数（2, 3, 4次元）の場合はdimlinec関数で得られる1次元化要素数で、それぞれソーティングの区間を指定できます。

%sample
    #include "02_myarray.hsp"

    dim test, 12, 10, 5, 4

    dim_info test, test_info   ; testの配列情報をtest_infoへ読み出す
                               ; test_info(5)には、4次元配列変数testの配列総数が代入されている
    ; testの要素の数だけ繰り返す
    repeat test_info(5)
        Auniary test, cnt, rnd(100), test_info   ; testの1次元化要素数がcntのところにrnd(100)を代入する
    loop

    ; test(6, 5, 4, 2) から test(0, 0, 0, 3) までの範囲を昇順でソート
    MDAQSort test, 0, dimlinec(test, 6, 5, 4, 2), dimlinec(test, 0, 0, 0, 3)

    repeat test_info(5)
        mes "" + uniary_(test, cnt, test_info)
    loop

%group
探索・ソート関連
%type
ユーザー定義命令
%href
dimlinec
bisrch
MDABiSrch
MFCQSort

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%index
MFCQSort
多機能複合型クイックソート
%prm
ary1, mode, frst, last
ary1 : 変数名
mode : 昇降順切り替え (= 0, 0:昇順 / 1:降順)
frst : ソート区間の開始値 (1次元化要素数)
last : ソート区間の終了値 (1次元化要素数)
%inst
この命令は、ary1に指定された配列変数の値をソートするものです。
^
ary1は文字列型、実数型、整数型の1, 2, 3, 4、いずれの次元にも対応しています。
modeではソート時の昇降順を選択でき、省略もしくは0指定で昇順、1指定で降順となります。
frstおよびlastを指定した場合は、配列変数のfrstからlastまでの一部分のみをソーティングの対象とします。省略時は配列変数のすべての値（全区間）をソートします。
^
frstおよびlastは、ary1が1次元配列変数の場合はその要素数で、多次元配列変数（2, 3, 4次元）の場合はdimlinec関数で得られる1次元化要素数で、それぞれソーティングの区間を指定できます。
^
機能的にはMDAQSort命令と変わりません。


%sample

%group
探索・ソート関連
%type
ユーザー定義命令
%href
dimlinec
bisrch
MDABiSrch
MDAQSort

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
