# マイ・アレイ ![GitHub release (latest by date including pre-releases)](https://img.shields.io/github/v/release/YUZRANIUM/02_myarray?include_prereleases&style=flat-square)

多次元配列変数を簡単に書き出す、なんてことないモジュール

不具合報告や要望等は [Twitter](https://twitter.com/YUZRANIUM) のDMか [HSPの掲示板](http://hsp.tv/play/pforum.php) 等で頂けると幸いです。

## 特徴（Feature）

* 多次元配列変数に格納されている全ての値を複数行文字列として変数に格納.
* 1次元、２次元、3次元、4次元、全ての次元に対応.
* 標準命令のみで動作し、変数名の表示が可能.

<br>

* 対応している変数の型は文字列に変換できる型である、実数型、整数型、文字列型です.
* 実体を持たない型（ラベル型など）は対応していません.（※モジュール型も対応していません ）

<br>

* 値が格納された変数はそのままテキストファイルとして出力可能です.
* デバッグウィンドウのログ出力でも多次元配列変数の中身をテキストに出力できますが、このモジュールで追加される命令を使えばより柔軟なデバッグ作業、確認作業が可能になるはずです.

<br>

※あくまでも、デバッグ用、確認用としてお使い下さい.

<br>

## 今後の予定
* [ ] ヘルプファイルの作製
* [ ] ヘッダファイルのコメントの充実
* [ ] サンプルファイルのコメントの充実

<br>

## 導入方法（Introduction）

~~~
.
├── 02_myarray.hsp
│
├── 02_myarray
│   ├── 02_myarray.hs
│   ├── 02_myarraysmpl.hsp
│   └── 02_myarray.txt
│
├── README.md
├── README.html
└── License.txt
~~~

* 02_myarray.hsp をユーザースクリプトのディレクトリか、HSP のインストールディレクトリ下の commonフォルダ内において、02_myarray.hspをインクルードしてください。

        例） hsp36/common/02_myarray.hsp

* 02_myarrayフォルダをHSPのインストールディレクトリ下にある **doclibフォルダ内に02_myarrayフォルダごと** 置いて下さい。サンプルファイルもそのままで構いません。

        例） hsp36/doclib/02_myarray

<br>

## 機能（Function）

<details>

<summary>追加される使用可能命令･関数</summary>

~~~ c
// 条件分岐マクロ    length系で条件分岐し内部命令を呼び出すものです
//
// p1 : 中身を受け取る文字列型変数
// p2 : 多次元配列変数
priaray p1, p2
~~~

</details>

<br>

## 必要環境（Environment）

* Windows10, 11
* HSP3.6以上

<br>

## 使用言語（Coding Language）

* [Hot Soup Processor(HSP3)](https://hsp.tv/)


## 開発環境（Development environment）

* Windows11 Pro 22H2 x64
* Hot Soup Processor 3.7beta4
* Visual Studio Code ver 1.73.1


## LICENSE

本ソフトウェアおよび関連文書のファイル（以下「ソフトウェア」）の複製を取得するすべての人に対し、ソフトウェアを無制限に扱うことを無償で許可します。

これには、ソフトウェアの複製を使用、複写、変更、結合、掲載、頒布、サブライセンス、および/または販売する権利、およびソフトウェアを提供する相手に同じことを許可する権利も無制限に含まれます。


ソフトウェアは「現状のまま」で、明示であるか暗黙であるかを問わず、何らの保証もなく提供されます。ここでいう保証とは、商品性、特定の目的への適合性、および権利非侵害についての保証も含みますが、それに限定されるものではありません。

作者または著作権者は、契約行為、不法行為、またはそれ以外であろうと、ソフトウェアに起因または関連し、あるいはソフトウェアの使用またはその他の扱いによって生じる一切の請求、損害、その他の義務について何らの責任も負わないものとします。

<br>

## 更新履歴（Change Log）

### ver 0.20
2022/11/26
ヘッダファイル、サンプルファイルの修正

### ver 0.10
2022/11/25
初公開