; INFO ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; FileName : 02_myarray.hs
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
myarray
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
; mlgetc
;
; dimlinec
; linedim
;
; ctlarray
; ctlarray_start
; ctlarray_end
; ctlexcld
;
; calc_ary
; calc_continue
;
; priarray
; setarray
; outarray
; cnvarray
; labarray
; ------------------
; logpri
; mesans
;
; objprh
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%index
mlgetc
モジュール･ラベル名取得
%prm
(v1)
v1 : 変数名
%inst
この関数は、v1に指定されたラベル型、もしくはモジュール型変数のラベル名･モジュール名を返すものです。
^
* v1 にはラベル型、もしくはモジュール型の変数のみ指定可能です。
^
HSPCTX構造体からラベル名･モジュール名の一覧をクローンし、リスト化したものの中から探索します。探索方法は二分木探索です。
探索に成功した場合は一致した名称を文字列で返します。探索に失敗した場合は、ラベル型は<null-label>, モジュール型は[not-found]がそれぞれ返ります。
%sample

%group
拡張入出力制御
%type
ユーザー拡張入出力制御関数
%href
bisrch

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%index
dimlinec
要素数からオフセット値へ
%prm
(ary1, d1, d2, d3, d4)
ary1        : 多次元配列の変数名
d1,d2,d3,d4 : 各次元要素 (= 0)
%inst
この関数は、ary1に指定された多次元配列の要素(d1, d2, d3, d4)を、1次元配列に変換した際の要素を返すものです。
^
* ary1 には対象となる多次元配列の変数名を指定して下さい。
* d1,d2,d3,d4 には、ary1で指定した配列の要素を指定して下さい。
^
d1以降全てを省略した場合はary1で指定した配列の "長さ" が返されます。
^
例えば、dim a, 3, 3, 2 と初期化した3次元配列aは、1次元配列zで下のように表すことができます。
^
        a(0, 0, 0)   ==>   z(0)
        a(1, 0, 0)   ==>   z(1)
        a(2, 0, 0)   ==>   z(2)
        a(0, 1, 0)   ==>   z(3)
             :               :
        a(0, 1, 1)   ==>   z(12)
             :               :
        a(1, 2, 1)   ==>   z(16)
        a(2, 2, 1)   ==>   z(17)
^
上記のように、多次元配列を1次元配列で表す操作のことを他言語では "1次元化" または "平坦化"、"フラット化"、 などと呼ぶことがあります。
^
このとき、1次元配列zの要素は3次元配列aの先頭a(0, 0, 0)を基点としたオフセット値と捉えることができ、3次元配列aの要素に対して一対一の関係にあります。この関係は3次元配列aの次元数が変化しない限り保持されます。そのため、1次元配列zの要素を、"配列aのオフセット値" または "配列aの1次元化要素数" と呼んでいます。
^
特に、"配列のオフセット値" ("1次元化要素数") の総数を "配列の長さ" または 単に "長さ" と呼ぶことがあります。例えば、1次元配列zの要素数の総数は 17 + 1 の 18 であることから、「3次元配列aの "長さ" は 18 である」と表現できます。
^
d1以降を省略しdimlinec(a)とした場合は "配列の長さ" 、つまり上の例では 18 が返り、d1以降を指定した場合、例えば上記a(0, 1, 1)のときz(12)ですので、dimlinec(a, 0, 1, 1)とした場合は 12 が返ります。
^
このように、"配列のオフセット値" ("1次元化要素数") を返す関数がdimlinec関数です。
^
dimlinec関数を利用することで、多次元配列を1次元配列のように扱うことが可能になります。ctlarray命令では "1次元化要素数" で開始値と終了値を指定することになります。ctlarray命令で多次元配列を扱う場合はdimlinec関数を使用して下さい。
^
※linedim命令の項目も合わせて読んでください。
%sample

%group
配列特殊変換
%type
ユーザー拡張入出力制御関数
%href
linedim
ctlarray
uniary

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%index
linedim
オフセット値から要素数へ
%prm
ary1, i_, dim_ofset
ary1      : 多次元配列の変数名
i_        : 各次元要素を読み出す変数名
dim_ofset : 配列のオフセット値
%inst
この命令は、dim_ofsetで指定された値から、ary1で指定された配列に対する各次元要素を算出し、i_に読み出すものです。
^
* i_ にはary1の各次元要素が読み出されます。
* dim_ofset には配列のオフセット値を指定して下さい。
^
実行後、i_に指定された変数は整数型の配列変数となります。
^
例えば、dim a, 3, 3, 2 と初期化した3次元配列aは、1次元配列zで下のように表すことができます。
^
        a(0, 0, 0)   ==>   z(0)
        a(1, 0, 0)   ==>   z(1)
        a(2, 0, 0)   ==>   z(2)
        a(0, 1, 0)   ==>   z(3)
             :               :
        a(0, 1, 1)   ==>   z(12)
             :               :
        a(1, 2, 1)   ==>   z(16)
        a(2, 2, 1)   ==>   z(17)
^
ここで、
^
        linedim a, i, 12
^
とすると実行後、変数iには下のように数値が代入されます。
^
        i(0) = 0
        i(1) = 1
        i(2) = 1
        i(3) = 0
^
これは、3次元配列aの先頭(0, 0, 0)を0として、12番目の各次元要素は順番に、(0, 1, 1)であるということを示しています。存在しない場合、length2,length3,length4と同様に0を返します。
^
この様に、1次元化された配列の要素から、元の各次元要素を返す命令がlinedim命令です。
^
※dimlinec関数の項目も合わせて読んでください。
%sample

%group
配列特殊変換
%type
ユーザー拡張入出力制御命令
%href
dimlinec
ctlarray
uniary

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%index
ctlarray
動作制御命令
%prm
p1, p2
p1 : 動作を開始する配列のオフセット値
p2 : 動作を終了する配列のオフセット値
%inst
この命令は、priarray,setarray,outarray,labarray,cnvarray命令の動作を制御するものです。
^
* p1,p2 には、それぞれ配列のオフセット値を指定して下さい。
^
ここでいう、配列のオフセット値とは多次元配列を1次元化した要素数のことをいいます。そのため1次元配列であればその要素をそのまま指定して下さい。多次元配列の場合はdimlinec関数を使用すれば簡単に指定することが可能になります。
^
ctlarray命令の直後に置いた命令の動作がp1からp2の範囲に制限されます。複数の命令に同じ範囲の制限をかける場合は、ctlarray_start及びctlarray_endを使用して下さい。
^
※dimlinec関数、linedim命令の項目も合わせて読んでください。

%sample
    ; 配列の先頭からオフセット値25番目から50番目までを表示
    ctlarray 25, 50
    priarray moni, sary

    ; 配列の各次元要素数で動作範囲を指定することも可能
    ctlarray dimlinec(sary, 7, 6), dimlinec(sary)    ; 要素の指定を省略すると最後までになる
    priarray moni, sary


    ; 複数処理をまとめて制御することも可能
    ;
    ctlarray_start    //// 制御開始 ////
        ;-------------------------------
        ctlarray 55, 120        ; はじめに動作範囲を指定する必要があります。

        setarray iary, 35, 1, -3    ; 途中から連続代入
        linedim iary, i, 55         ; iaryの先頭から55番目の各次元要素数を確認

        ; 制御の除外
        ctlexcld : priarray moni, i

        ;-------------------------------
        ctlarray 125, 150       ; 再度呼び出すと、以降の動作範囲が更新される

        setarray iary, 15, 1, 2
        priarray moni, iary

    ctlarray_end     //// 制御終了 ////
    ;
    ; 終了時は必ず呼び出して下さい。

%group
動作制御命令
%type
ユーザー拡張入出力制御命令
%href
dimlinec
linedim
ctlarray_start
ctlarray_end
ctlexcld

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%index
calc_ary
配列演算
%prm
ans_ary, ary1, ary2, calc_type, error_stop
ans_ary    : 解答を受け取る変数名
ary1,ary2  : 変数名
calc_type  : 演算タイプ (= 0)
error_stop : 0除算フラグ (= 0, 0:停止しない / 1:停止する)
%inst
この命令は、ary1, ary2で指定された多次元配列どうしを計算し、結果をans_aryに代入するものです。
^
        ans_ary = ary1 / ary2   (※イメージ)
^
* ans_ary は初期化する必要はありません。
* ary1, ary2 には、多次元配列の他、通常変数も指定可能です。
* calc_type には以下の値を指定して下さい。省略時は0(加算)となります。
* error_stopはエラーコード19 "0で除算しました" を回避せずに停止するかどうかを指定して下さい。
^
        calc_typeの指定値と動作
       -----------------------------
        0  |  加算  ( + ) (省略時)
        1  |  減算  ( - )
        2  |  乗算  ( * )
        3  |  除算  ( / )
        4  |  剰余  ( \ )
        5  |  割増1 (ary1 + ary1 * ary2)
        6  |  割引1 (ary1 - ary1 * ary2)
        7  |  割増2 (ary1 + ary1 * ary2 * 0.01)
        8  |  割引2 (ary1 - ary1 * ary2 * 0.01)
^
calc_type 5(割増1), 6(割引1)は、実数指定での割増･割引計算、7(割増2), 8(割引2)は、百分率(%)指定による割増･割引計算です。
^
        error_stopの指定値と動作
       -------------------------
        0  |  停止しない (省略時)
        1  |  停止する
^
error_stopを省略または0を指定するとary2の値の確認を行い、0で除算してしまうような場合には計算を行わず、代わりに異常値を代入して配列演算を続行します。代入される異常値は下の様になります。1を指定すると内部で値の確認を行うことはせず通常通り計算が進みます。
^
       代わりに代入される異常値
      ---------------------------
        実数型  |  -214748364.8
        整数型  |  -2147483648
^
^
この命令の実行後、ans_aryは
^
dimtype ans_ary, vartype(ary1), length(ary1), length2(ary1), length3(ary1), length4(ary1)
^
で初期化された状態となるのでary1と同じ変数型、次元要素数の配列となります。ary2の変数型や次元要素数はans_aryに何らの影響はありません。これは、HSPの言語仕様にならっての仕様です。またこの仕様によって、総計算回数はary1の配列の長さになります。ary1よりも、ary2の方が配列として短い場合は短い分だけary2が周回し、ary2の方が長い場合はary1の長さで計算を終えます。
^
例えば、下のようなary1とary2を加算する場合
^
    dim ary1, 5, 2
    dim ary2, 3
    calc_ary ans, ary1, ary2, 0

    ans(0, 0) = ary1(0, 0) + ary2(0)
    ans(1, 0) = ary1(1, 0) + ary2(1)
    ans(2, 0) = ary1(2, 0) + ary2(2) ; ←ary2はここで終了 (配列の長さ3)

    ans(3, 0) = ary1(3, 0) + ary2(0) ; ary1がまだ続いているので、ary2は2周目に入る
    ans(4, 0) = ary1(4, 0) + ary2(1)
          :                :
          :                :
    ans(4, 1) = ary1(4, 1) + ary2(0) ; ary1がここで終了 よって配列演算を終了
^
^
※この命令は配列操作のみを行っており、実際の数値計算はcpu_ary_(local)関数で行わせています。比較的簡単な作りとなっており、計算式を追加していくことでカスタムすることが可能です。02_myarray.hspのEOF近くにあります。

%sample
    :
    ddim value1, 10, 5
    setarray value1, 50.0, 1, 0.125

    ddim tax, 50
    ctlarray 0, 25   :  setarray tax, 0.25, 1, 0.15  ;  0～25番目だけ連続代入
    ctlarray 26, 50  :  setarray tax, 1.5, 1, 0.75   ; 26～50番目だけ連続代入

    ; value1をtaxだけ割り増し計算
    calc_ary value2, value1, tax, 5

    ; 消費税8%の割り増し計算
    a = 8
    calc_ary value3, value2, a, 7
    cnvarray value4, value3, 3  ; 配列コピー

    ctlarray_start
        ; 10%の割り引き計算
        b = 10
        ctlarray 25, 45    ; 10%OFF は25～45番目のみ
        calc_continue      ; 演算継続 (ここではcnvarrayの配列コピーを利用するため)
        calc_ary value4, value3, b, 8

        ; 25%OFFセールは 46番目～最後まで
        b = 25
        ctlarray 46, 50
        calc_continue      ; 演算継続
        calc_ary value4, value3, b, 8

    ctlarray_end

    stop
%group
配列演算
%type
ユーザー拡張入出力制御命令
%href
calc_continue
ctlarray
priarray
setarray

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%index
calc_continue
演算を継続
%prm
%inst
この命令は、calc_ary命令の計算を継続させるものです。
^
calc_ary命令は呼び出されるたびに第1パラメータに指定された変数名を初期化します。calc_continue命令はその初期化を防ぐフラグを立てます。
^
初期化を防ぐことで動作制御命令(ctlarray, ctlarray_start, ctlarray_end, ctlexcld)を用いた配列の部分演算を可能にする他、部分的に異なる計算をさせることも可能です。

%sample

%group
配列演算
%type
ユーザー拡張入出力制御命令
%href
calc_ary
ctlarray

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%index
ctlarray_end
制御フィールド終了
%prm
%inst
この命令は、ctlarray_start命令によって展開された制御フィールドを終了させるものです。
^
ctlarray_start及びctlarray_endで囲まれた制御フィールド内では、ctlarray命令で設定された開始値と終了値にそれぞれの動作が限定されるようになります。これにより、同じ制限値を複数の命令に一括して適用させることが可能です。
^
ctlarray_start命令の実行直後は必ずctlarray命令で開始値と終了値を設定する必要があります。また、制御フィールドの最後には必ずctlarray_endで制御フィールドを終了する必要があります。
%sample

%group
動作制御命令
%type
ユーザー拡張入出力制御命令
%href
ctlarray
ctlarray_start
ctlexcld

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%index
ctlarray_start
制御フィールド開始
%prm
%inst
この命令は、ctlarray命令の動作制御を複数の命令に適用させるための制御フィールドを展開するものです。
^
ctlarray_start及びctlarray_endで囲まれた制御フィールド内では、ctlarray命令で設定された開始値と終了値にそれぞれの動作が限定されるようになります。これにより、同じ制限値を複数の命令に一括して適用させることが可能です。
^
ctlarray_start命令の実行直後は必ずctlarray命令で開始値と終了値を設定する必要があります。また、制御フィールドの最後には必ずctlarray_endで制御フィールドを終了する必要があります。

%sample

%group
動作制御命令
%type
ユーザー拡張入出力制御命令
%href
ctlarray
ctlarray_end
ctlexcld

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%index
ctlexcld
制御除外
%prm
%inst
この命令は、ctlarray_start及びctlarray_endの制御フィールド内で制御値の除外を行うものです。
^
制御フィールド内でctlexcld命令の直後の命令を、1回だけctlarray命令の制御値から除外させ、通常動作を可能にします。
%sample

%group
動作制御命令
%type
ユーザー拡張入出力制御命令
%href
ctlarray
ctlarray_start
ctlarray_end

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%index
priarray
配列の情報書出し
%prm
s_v1, ary1, coment
s_v1   : 読み出し先となる変数名 (文字列型)
ary1   : 読み出し元の配列変数名
coment : コメント (省略可)
%inst
この命令は、ary1で指定した配列変数の情報と値を、s_v1で指定された変数に複数行文字列として代入するものです。
^
* s_v1 は、あらかじめsdim等でメモリ(文字列バッファ)を確保しておいて下さい。
* ary1 は、2, 3, 4次元配列はもちろん、通常変数も指定可能です。
* coment に"文字列"または変数を指定すると、その内容をコメントとして表示します。
^
ここでいう配列の情報とは、変数名、型名、配列の各次元要素数、priarray命令を呼び出した行数のことです。それに続くかたちで、格納されている値が一覧で表示されます。
^
ary1にラベル型、文字列型、実数型、整数型の変数を指定した場合は、配列の情報と値一覧を表示します。
特に、ラベル型の場合はラベル名を表示しますが、ldim等で初期化された直後や配列に空きがあるなど、有効なラベルが存在しない場合は<null-label>と表示されます。
モジュール型、COMオブジェクト型に関しては、値を書き出すことは出来ず、一部の情報のみ表示します。
^
例えば、編集エディタの123行目で
    122行目 |    dim i_ary, 10, 5, 3
    123行目 |    priarray hyouj, i_ary, "コメントです"
^
とした場合、hyoujの内容は、
^
[ i_ary ] int(10, 5, 3) L=123       // <-- この行から
/*------------------------------
コメントです
------------------------------*/
(0, 0, 0) = 0
(1, 0, 0) = 0
(2, 0, 0) = 0
    :       :
(9, 4, 2) = 0
^
                                    // <-- この行まで (空行2含)
といったようになります。  ( ※.i )
^
この命令はデバッグや確認のための補助としての用途を想定しています。
変数の値だけを書き出す場合はoutarray命令を使用してください。
^
※.i
上記例の全体の書式及び型名は、02_myarray.hsp内のmyarrayモジュール内で使用する変数の定義･初期化を行う_myarray_init_命令(local指定)内で定義されています。型名や書式を変更したい場合はそちらを編集して下さい。
%sample
    dim  array1, 3, 3, 3 : array1 = 1, 1, 2, 3, 5, 8, 13, 21, 34
    ddim array2, 5, 6    : array2 = 1.41421356, 2.2360679, 3.141592
    sdim array3, 10, 5   : array3 = "ABC", "DEF", "GHI", "?"
    ldim array4, 3, 3    : array4 = *labl1, *labl2, *labl3

    ary4 = {"array4ラベルのジャンプ先一覧
    (0, 0) : ...
    (0, 1) : ...
       :      :"}

    priarray hyouj, array1, "フィボナッチ数列ですね"
    priarray hyouj, array2, "ルート2とルート3...のはずです。覚えてない"
    priarray hyouj, array3
    priarray hyouj, array4, ary4

    notesel hyouj
    notesave dir_cur + "\\print_array.txt"

%group
配列操作
%type
ユーザー拡張入出力制御命令
%href
setarray
outarray
cnvarray
labarray
vartype

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%index
setarray
配列の連続代入
%prm
ary1, in_v1, iflag, index
ary1  : 代入先の配列変数名
in_v1 : 代入値
iflag : 増減フラグ (= 0, 0:OFF / 1:ON)
index : 増減値     (= +1, +/-)
%inst
この命令は、in_v1で指定された値を、ary1で指定された配列変数に連続代入するものです。
^
* ary1 は、あらかじめdim命令等で配列の要素を確保しておく必要があります。
* in_v1 に指定できる変数の型は文字列型、実数型、整数型です。配列変数は指定できません。
* iflag には、増減機能を使用するフラグを指定して下さい。省略時または0でOFF、1でONになります。
* index は、正負両方の値を取ることができ、さらに実数、整数、文字列を指定できます。省略時は+1です。
^
この命令は、0以外の値や特定の文字列で配列を初期化したい場合や、検証用として利用する配列の準備等での利用を想定してします。

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

%group
配列操作
%type
ユーザー拡張入出力制御命令
%href
priarray
outarray
cnvarray
labarray

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%index
cnvarray
複数行文字列から配列へ
%prm
ary_, in_v1, vtype, d1, d2, d3, d4
ary_        : 変換先 変数名
in_v1       : 変換元 変数名
vtype       : 変換後の変数型を表す数値 (= 2, 2:文字列型 / 3:実数型 / 4:整数型)
d1,d2,d3,d4 : 変換後の各次元要素数     (= 0)
%inst
この命令は、ary_に指定された変数を多次元配列として初期化し、その変数にin_v1で指定した複数行文字列または多次元配列を、1行ごとまたは要素ごとに代入するものです。note2arrayの上位互換になります。
^
イメージとしては dimtype ary_, vtype, d1, d2, d3, d4 で、in_v1に指定した値で初期化されるといったものになります。
^
* ary_  には、変数名を指定してください。sdim等で初期化する必要はありません。
* in_v1 には、多次元配列に変換したい複数行文字列変数、または多次元配列変数を指定してください。
* vtype には、ary_で指定した変数の型を表す値を指定してください。
* d1,d2,d3,d4には変換後、多次元配列変数となるary_の各次元要素数を指定してください。
^
vtypeの指定値はvartypeと同様で、2で文字列型、3で実数型、4で整数型となります。
d4省略時は3次元配列、d3以降省略時は2次元配列、d2以降省略時は1次元配列となります。
^
in_v1で指定された変数が複数行文字列の場合、d1以降を省略するとうまく変換できませんので、複数行文字列を指定した場合は必ずd1以降の指定をしてください。配列変数の場合は、d1以降を省略することでin_v1の各次元要素数をそのまま使用してary_を初期化します。そのため配列コピー、もしくは型変換として機能します。

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
配列変換
%type
ユーザー拡張入出力制御命令
%href
priarray
outarray
labarray

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%index
labarray
ラベル型配列生成
%prm
s_v1, ary1, "*文字列", index, coment
s_v1      : 読み出し先となる変数名 (文字列型)
ary1      : 代入先となる配列変数名 (文字列型)
"*文字列" : 代入値   (ラベル名にしたい文字列)
index     : 増減値   (= +1, +/-)
coment    : コメント (省略可)
%inst
この命令は文字列型の変数をラベル型として利用できるようにするものです。
^
setarray命令とoutarray命令を掛け合わせたもので、
ary1に指定された多次元配列に対して、"*文字列" + indexで得られる値を連続代入しつつ、(setarray)
s_v1に指定された変数に一定の書式で"*文字列" + indexを複数行文字列として代入していきます。(outarray)
^
* s_v1 には、読み出し先となる変数名を指定して下さい。
* ary1 には、代入先となる配列変数名を指定して下さい。
* "*文字列" には、基本となるラベル名を指定して下さい。通常のラベル名と同様、必ずアスタリスク"*"をつけて下さい。
* index には、ラベルのインデックスとなる実数値、整数値を指定して下さい。
* coment には、文字列を指定することで.hspファイルでの出力時にコメントとして表示することができます。
^
s_v1は、あらかじめsdimで文字列バッファを確保しておいて下さい。また、ary1もあらかじめsdimで配列の要素を確保しておく必要があります。
^
この命令の実行後、s_v1に指定した複数行文字列とary1に指定した文字列型配列変数、2つの文字列型の変数を出力します。
s_v1に指定した複数行文字列はnotesave等で拡張子を.hspなどとして保存して下さい。
出力したファイルを#include(#addition)することで、ary1に指定した多次元配列変数を、以降ラベル型として利用することができます。

%sample
    :
    sdim hyouj, 64
    sdim str_ary, 64, 5
    labarray hyouj, str_ary, "*labl_", 1
    notesel hyouj
    notesave "labl_test.hsp"

////////  ( 出力結果 )  ////////
    dimtype str_ary, vartype("label"), 5
    str_ary(0) = *labl_
    str_ary(1) = *labl_1
    str_ary(2) = *labl_2
    str_ary(3) = *labl_3
    str_ary(4) = *labl_4

%group
配列操作
%type
ユーザー拡張入出力制御命令
%href
priarray
setarray
outarray
cnvarray

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%index
outarray
配列から複数行文字列へ
%prm
s_v1, ary1, iflag
s_v1  : 読み出し先となる変数名 (文字列型)
ary1  : 読み出し元の配列変数名
iflag : ラベルフラグ (= 0, 0:OFF / 1:ON)
%inst
この命令は多次元配列変数の値のみを複数行文字列として書き出すものです。array2noteの上位互換になります。
^
各パラメータの解説はpriarray命令と同様で、ary1に指定できる変数の型はラベル型、文字列型、実数型、整数型の4つです。
^
ary1にラベル型を指定した場合、もしくはiflagに1を指定した場合は、ラベル生成モードとなり出力時の書式が変化します。
labarray命令とともに利用することでラベルを数多く用意することが可能です。
^
この命令はデバッグ仕様のpriarray命令から不要な表示を削減し、配列の値を書き出す文字列操作仕様となっています。

%sample
    :
    sdim hyouj, 64
    sdim str_ary, 64, 5
    labarray hyouj, str_ary, "*labl_", 1
    outarray hyouj, str_ary, 1
    notesel hyouj
    notesave "labl_test.hsp"

////////  ( 出力結果 )  ////////
    dimtype str_ary vartype("label"), 5
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
///  ( 出力結果ここまで )  ///
%group
配列変換
%type
ユーザー拡張入出力制御命令
%href
priarray
setarray
cnvarray
labarray

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%index
logpri
デバッグ表示
%prm
v1, d1, d2, d3, d4
v1          : 変数名
d1,d2,d3,d4 : インデックス用変数名 (省略可)
%inst
この命令は、v1に指定された変数名とその値をデバッグウィンドウに表示するものです。
^
* v1 には、多次元配列はもちろん、通常の変数も指定可能です。
* d1,d2,d3,d4 には、v1で指定した変数が配列の場合に、その要素を管理している変数を指定することができます。
^
例えば、dim b, 5, 4 と初期化した2次元配列bの要素をiで管理している場合に、
^
5行目 |    dim b, 5, 4
6行目 |    i = 3, 2
7行目 |    logpri b(i(0), i(1)), i(0), i(1)
^
とすると、デバッグウィンドウには下のように表示されます。
^
/*** 7 ***/
b(3, 2) = 0
^
上記のように、エディターでlogpri命令を呼び出した行数と、表示させたい変数名とその値、そして配列要素を管理している変数が保持している値に置換されて表示されます。これは、配列操作のpriarray, labarrayと同じく、#defineの%1,%2,%3,...がダブルクォーテーションで囲まれた状態でも展開されるという性質を利用しています。
^
指定変数に表示内容を読み出すmesans命令もあります。
^
※注意事項として、v1にはダブルクォーテーション("文字列", "\n", "\t")を使用することはできません。

%sample
    :
    dim i, 2

    repeat length2(ary3)
        i(0) = 0

        repeat length(ary3)
            logpri ary3(i(0), i(1)), i(0), i(1)
            i(0)++

        loop
        i(1)++

    loop

    a = 1 : b = 0
    mesans hyouj, a & b
    mesans hyouj, a | b

%group
拡張入出力制御
%type
ユーザー拡張入出力制御命令
%href
mesans
logmes
mes
%dll
mytool

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%index
mesans
デバッグ表示
%prm
s_v1, v1, d1, d2, d3, d4
s_v1        : 読み出し先の変数名
v1          : 読み出す変数名
d1,d2,d3,d4 : インデックス用変数名 (省略可)
%inst
この命令は、v1に指定された変数名とその変数の値をs_v1に指定された変数に読み出すものです。
^
* s_v1 は、あらかじめsdim等でメモリ(文字列バッファ)を確保しておいて下さい。
* v1 には、多次元配列はもちろん、通常の変数も指定可能です。
* d1,d2,d3,d4 には、v1で指定した変数が配列の場合に、その要素を管理している変数を指定することができます。
^
例えば、dim b, 5, 4 と初期化した2次元配列bの要素をiで管理している場合に、
^
    dim b, 5, 4
    i = 3, 2
    mesans hyouj, b(i(0), i(1)), i(0), i(1)
^
とすると、変数hyoujには下のように読み出されます。
^
    b(3, 2) = 0
^
上記のように、表示させたい変数名とその値、そして配列要素を管理している変数が保持している値に置換されて表示されます。これは、配列操作のpriarray, labarrayと同じく、#defineの%1,%2,%3,...がダブルクォーテーションで囲まれた状態でも展開されるという性質を利用しています。
^
表示内容をデバッグウィンドウに表示させるlogpri命令もあります。
^
※注意事項として、v1にはダブルクォーテーション("文字列", "\n", "\t")を使用することはできません。

%sample
    :
    foreach ary2
        mesans hyouj, ary2(cnt), cnt
    loop

    a = 1 : b = 0
    logpri a & b
    logpri a | b

%group
拡張入出力制御
%type
ユーザー拡張入出力制御命令
%href
logpri
mes
logmes
%dll
mytool

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%index
objprh
オブジェクトの更新
%prm
objhwnd, p1
objhwnd : オブジェクトのハンドル
p1      : 変更するパラメータの内容
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
ユーザーオブジェクト制御命令
%href
objprm
sendmsg
objinfo
%dll
mytool

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
