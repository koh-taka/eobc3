<!--{*
 * This is template for EC-CUBE 2.13.5 Copyright(c) EC-CUBE CO.,LTD. All Rights Reserved.
 * This file created by Copyright(c) koh-taka.
 * https://github.com/koh-taka/eccube-on-bootstrap3-custom
 * It fork from and respect by http://perl.no-tubo.net/
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 *}-->

<!--{strip}-->
    <div id="undercolumn">
        <div id="undercolumn_error">
            <div class="row">
                <div class="col-sm-10 col-sm-push-1">
                    <div class="message_area panel panel-default margin-top-lg">
                        <!--{*★エラーメッセージ *}-->
                        <!--{if $type === PRODUCT_NOT_FOUND || $type === CATEGORY_NOT_FOUND}-->
                            <h1 class="panel-body text-center">404 - <!--{$tpl_error}--></h1>
                            <p class="panel-body text-center">
                                こちらから、お探しの商品を検索してみてください。
                            </p>
                            <!--検索フォーム-->
                            <form name="search_form" id="search_form" method="get" action="<!--{$smarty.const.ROOT_URLPATH}-->products/list.php" class="panel-body">
                                <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
                                <dl class="formlist col-xs-8 col-xs-offset-2">
                                    <dt>商品名を入力</dt>
                                    <dd><input type="text" name="name" class="box140 form-control" maxlength="50" value="<!--{$smarty.get.name|h}-->" placeholder="キーワード" /></dd>
                                </dl>
                                <div class="col-xs-8 col-xs-offset-2"><button class="btn btn-block btn-primary">検索</button></div>
                            </form>

                            <div class="panel-body list-group">
                                <div class="list-group-item  list-group-item-success">検索のコツ：</div>
                                <div class="list-group-item">
                                    商品の名前の一部だけを入力して探すと見つかりやすくなります。
                                    <br>例：「汚れっちまった悲しみに」➔「悲しみに」
                                </div>
                                <div class="list-group-item">
                                    漢字・ひらがな・カタカナなど、色々な読み方で検索してみてください。
                                    <br>例：「人上人不造」➔「ひとのうえにひとをつくらず」・「ヒトノウエニヒトヲツクラズ」
                                </div>
                                <div class="list-group-item">
                                    単語の中にスペース(空白)を入れると、探しやすくなります。
                                    <br>「トム・ソーヤ」「バスコ＝ダ＝ガマ」などが見つかりやすくなります。
                                    <br>例：「ドグラマグラ」➔「ドグラ マグラ」
                                </div>
                            </div>
                        <!--{else}-->
                            <h1 class="error panel-body text-center"><!--{$tpl_error}--></h1>
                        <!--{/if}-->
                        <div class="panel-body text-center alert alert-danger" role="alert">
                        この画面が何回も表示される場合、<a href="<!--{$smarty.const.HTTPS_URL}-->contact/<!--{$smarty.const.DIR_INDEX_PATH}-->"><b><u>お問い合わせフォーム</u></b></a>までご連絡ください。
                        </div>
                    </div>
                </div>
                <div class="col-sm-10 col-sm-push-1 col-md-4 col-md-push-4">
                    <div class="btn_area">
                        <!--{if $return_top}-->
                            <a href="<!--{$smarty.const.TOP_URL}-->" class="btn btn-default btn-block">トップページへ</a>
                        <!--{else}-->
                            <a href="javascript:history.back()" class="btn btn-default btn-block">戻る</a>
                        <!--{/if}-->
                    </div>
                </div>
            </div>
        </div>
    </div>
<!--{/strip}-->
