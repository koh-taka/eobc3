eccube-on-bootstrap3-custom
====================
TwitterBootstrapを使った[EC-CUBE](http://www.ec-cube.net)用のデザインテンプレートで、
名作と名高い [clicktx/eccube-on-bootstrap3](https://github.com/clicktx/eccube-on-bootstrap3) の私的カスタマイズフォーク。

### 開発環境
- EC-CUBE 2.13.5
- [Twitter Bootstrap Honoka 3.3.7](https://github.com/windyakin/Honoka)


## まずは本家readmeを見てくれ

[clicktx/eccube-on-bootstrap3](https://github.com/clicktx/eccube-on-bootstrap3)

## カスタムのコンセプト

1. Bootstrap は、日本語表示を改善させたカスタマイズテーマ Honoka を利用する
2. 可能な限り外部ライブラリはCDNを利用する（上記Honoka含む）
3. 可能な限り内部ライブラリを減らし、転送量を下げる
4. ついでにfontawesomeいっぱい使いたい

### こんな方にお勧めします

- 運用サーバの速度が遅い
- 運用サーバが従量制・転送量制課金である
- [Honoka](https://honokak.osaka/)の日本語処理・丸みを抑えたデザインが好きだ

## 本家にはないカスタマイズのキモ

### CSSのカスタマイズ

css容量削減と読込最適化のため、scss/sassにて管理しています。
当方ではnode-sassを使用し、コマンド例を/_packages/scss/m.scss に記述してあります。
これを編集してコンパイルしてください。

bootstrapが外部CDNからの読み込みのため、元テンプレートで可能だった
全文grep置換で色を変える、みたいなことは不可能です。
cssセレクタによる上書きを検討してください。

## プラグインについて
eccube-on-bootstrap3対応プラグインの検証はしてませんが、基本bootstrapの構造はそのままのため、使えるんじゃないでしょうか（てきとう）。