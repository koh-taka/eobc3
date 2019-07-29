<!--{*
 * This is template for EC-CUBE 2.13.5 Copyright(c) EC-CUBE CO.,LTD. All Rights Reserved.
 * This file created by Copyright(c) koh-taka.
 * https://github.com/koh-taka/eccube-on-bootstrap3-custom
 * It fork from and respect by http://perl.no-tubo.net/
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 *}-->

<!--{strip}-->
    <div class="block_outer">
        <div id="search_area" class="panel panel-default">
            <div class="panel-heading">
                <h2 class="panel-title">
                    <span class="fa fa-search"></span> 検索条件
                </h2>
            </div>
            <div class="block_body panel-body">
                <!--検索フォーム-->
                <form name="search_form" id="search_form" method="get" action="<!--{$smarty.const.ROOT_URLPATH}-->products/list.php">
                    <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
                    <dl class="formlist">
                        <dt>商品カテゴリ</dt>
                        <dd><input type="hidden" name="mode" value="search" />
                        <select name="category_id" class="box145 form-control">
                            <option label="全ての商品" value="">全ての商品</option>
                            <!--{html_options options=$arrCatList selected=$category_id}-->
                        </select>
                        </dd>
                    </dl>
                    <dl class="formlist">
                        <!--{if $arrMakerList}-->
                        <dt>メーカー</dt>
                        <dd><select name="maker_id" class="box145 form-control">
                            <option label="全てのメーカー" value="">全てのメーカー</option>
                            <!--{html_options options=$arrMakerList selected=$maker_id}-->
                        </select>
                        </dd>
                    </dl>
                    <dl class="formlist">
                        <!--{/if}-->
                        <dt>商品名を入力</dt>
                        <dd><input type="text" name="name" class="box140 form-control" maxlength="50" value="<!--{$smarty.get.name|h}-->" placeholder="キーワード" /></dd>
                    </dl>
                    <button class="btn btn-block btn-default">検索</button>
                </form>
            </div>
        </div>
    </div>
<!--{/strip}-->
