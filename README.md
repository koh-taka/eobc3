eccube-on-bootstrap3-custom
====================
TwitterBootstrapを使った[EC-CUBE](http://www.ec-cube.net)用のデザインテンプレートで、

傑作と名高い [clicktx/eccube-on-bootstrap3](https://github.com/clicktx/eccube-on-bootstrap3) の私的カスタマイズフォーク。

### 開発環境
- EC-CUBE 2.13.5
- [Twitter Bootstrap Honoka 3.3.7](https://github.com/windyakin/Honoka)


## まずは本家readmeを見てくれ

[clicktx/eccube-on-bootstrap3](https://github.com/clicktx/eccube-on-bootstrap3)

## カスタムのコンセプト

1. Bootstrap は、日本語表示を改善させたカスタマイズテーマ Honoka を利用する
2. 可能な限り外部ライブラリはCDNを利用する（上記Honoka含む）
3. 可能な限り内部ライブラリを減らし、転送量を下げる
4. お客様がわかりやすい・理解しやすい・ヘイトを溜めないECサイトとしての表現に直す

### こんな方にお勧めします

- 運用サーバの速度が遅い
- 運用サーバが従量制・転送量制課金である
- [Honoka](https://honokak.osaka/)の日本語処理・丸みを抑えたデザインが好きだ
- 諸々の過程で強化されたfont awesomeが4.7.0を使いたい

## 本家にはないカスタマイズのキモ

### CSS/JSのカスタマイズ

css容量削減と読込最適化のため、scss/sassにて管理しています。
当方ではnode-sassを使用し、コマンド例を/_packages/scss/m.scss に記述してあります。
これを編集してコンパイルしてください。

bootstrapが外部CDNからの読み込みのため、元テンプレートで可能だった
全文grep置換で色を変える、みたいなことは不可能です。
cssセレクタによる上書きを検討してください。

また転送量削減・高速化の為に不要なjsを省き、読込位置を深刻な影響が出ない程度に配置を変更しています。

### ログイン遷移のカスタマイズ

ヘッダの部分のログイン箇所「アカウントサービス」と書かれた箇所は、非ログイン状態では、ログインページまで２回のクリックが掛かるため、ただのログインボタンにしました。また、「アカウントサービス」はEC-CUBE石器時代より伝承されし呪文「MYページ」と同義と判断し、MYページに統一しています。


### 税込表示義務化のカスタマイズ

https://webtan-tsushin.com/next_20181017_tax

2021/04/01以降は商品に対する消費税の総額表示（税込）が必要になるため、税込表示を、商品の表示時、それと注文における合計の表示時に、(税込)記述を付与しました。うざったくなりすぎないように抑えてます。また、「円」「（税込）」それぞれにclass付spanを付与している為、カスタマイズがラクです。税抜がいいと仰るクライアント様にはその辺修正する前に、「2021/04/01になる前に再び別途見積をお出し致します」とお伝えすれば、先方もきっと喜ばれるかと思います。


### トップページのスライドショーカスタマイズ

スライドショーをつけました。実装はbootstrap3標準のカルーセルを使っています。使用箇所はトップページ（index.tpl）のみですが、他に適用する場合はそこを参考にしてください。


### ECサイトとしての表現のカスタマイズ

この辺は各ECサイトや運営企業の色が出る箇所ですので、色々こねくりまわしてみてください。自身の運営経験による勘所を信じて、以下の変更を施しました。

- 割と長めの警告の場合、敬語をカスタマイズして短縮化しています（長いと読まんのよ）。
- お問い合わせは、電話ではなく、なるべくお問い合わせフォームからお願いしたい形にしています（お問い合わせ担当が困るのよ）。
- 「パスワードを忘れた」は、お客様自身の瑕疵だと認識することがありヘイトを溜めやすいため、「パスワードがわからない」と替え、外的要因からわからないこともあるんやでという話を行間に込めました。
- 「コンピューターに記憶する」は、そもそもスマホをコンピューターだと認識していない層に納得させるため、その辺いい感じに替えました。
- その他ゆらぎ表現や遷移状の問題など諸々修正。


## プラグインについて
eccube-on-bootstrap3対応プラグインの検証はしてませんが、基本bootstrapの構造はそのままのため、使えるんじゃないでしょうか（てきとう）。


## ライセンスについて
元のテンプレートにGPLの記載があった為（きっとご先祖様はEC-CUBE2標準テーマ）、そこから派生したとなればGPLに汚染されておくのが無難だと感じ、GPLv2を名言化しております。つーより元のテンプレートのGPL範疇曖昧って話ですよEC-CUBEサン（本当はMIT辺り使いたかった顔）。