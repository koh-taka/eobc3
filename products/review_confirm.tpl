<!--{*
 * This is template for EC-CUBE 2.13.5 Copyright(c) EC-CUBE CO.,LTD. All Rights Reserved.
 * This file created by Copyright(c) koh-taka.
 * https://github.com/koh-taka/eccube-on-bootstrap3-custom
 * It fork from and respect by http://perl.no-tubo.net/
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 *}-->
<!--{include file="`$smarty.const.TEMPLATE_REALDIR`popup_header.tpl" subtitle="お客様の声書き込み（確認ページ）"}-->

<div id="window_area">
    <h2 class="title">商品レビューの投稿</h2>
    <div class="panel-body">
        <form name="form1" id="form1" class="form" method="post" action="?">
            <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
            <input type="hidden" name="mode" value="complete" />
            <!--{foreach from=$arrForm key=key item=item}-->
                <!--{if $key ne "mode"}-->
                    <input type="hidden" name="<!--{$key|h}-->" value="<!--{$item|h}-->" />
                <!--{/if}-->
            <!--{/foreach}-->

            <table class="table" summary="お客様の声書き込み">
                <col width="30%" />
                <col width="70%" />
                <tr>
                    <th>商品名</th>
                    <td><!--{$arrForm.name|h}--></td>
                </tr>
                <tr>
                    <th>投稿者名</th>
                    <td><!--{$arrForm.reviewer_name|h}--></td>
                </tr>
                <tr>
                    <th>投稿者URL</th>
                    <td><!--{$arrForm.reviewer_url|h}--></td>
                </tr>
                <tr>
                    <th>性別</th>
                    <td><!--{if $arrForm.sex eq 1}-->男性<!--{elseif $arrForm.sex eq 2}-->女性<!--{/if}--></td>
                </tr>
                <tr>
                    <th>おすすめレベル</th>
                    <td><span class="recommend_level"><!--{$arrRECOMMEND[$arrForm.recommend_level]}--></span></td>
                </tr>
                <tr>
                    <th>タイトル</th>
                    <td><!--{$arrForm.title|h}--></td>
                </tr>
                <tr>
                    <th>コメント</th>
                    <td><!--{$arrForm.comment|h|nl2br}--></td>
                </tr>
            </table>
            <div class="btn_area margin-top-lg ">
                <button id="back" class="btn btn-default col-xs-4 col-sm-3 margin-left-sm" onclick="mode.value='return';">戻る</button>
                <button id="send" class="btn btn-primary col-xs-6 col-sm-5 margin-left-sm">この内容で投稿する</button>
            </div>
        </form>
    </div>
</div>
<!--{include file="`$smarty.const.TEMPLATE_REALDIR`popup_footer.tpl"}-->
