<!--{*
 * This is template for EC-CUBE 2.13.5 Copyright(c) EC-CUBE CO.,LTD. All Rights Reserved.
 * This file created by Copyright(c) koh-taka.
 * https://github.com/koh-taka/eccube-on-bootstrap3-custom
 * It fork from and respect by http://perl.no-tubo.net/
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 *}-->

<div id="undercolumn">
    <div id="undercolumn_entry">
        <h2 class="title"><!--{$tpl_title|h}--></h2>
        <p>下記の内容で送信してもよろしいでしょうか？<br />
            よろしければ、一番下の「会員登録をする」ボタンをクリックしてください。</p>
        <form name="form1" id="form1" method="post" action="?">
            <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
            <input type="hidden" name="mode" value="complete">
            <!--{foreach from=$arrForm key=key item=item}-->
                <input type="hidden" name="<!--{$key|h}-->" value="<!--{$item.value|h}-->" />
            <!--{/foreach}-->

            <div class="col-sm-12">
                <div class="panel panel-default">
                    <table class="table table-bordered" summary="入力内容確認">
                        <!--{include file="`$smarty.const.TEMPLATE_REALDIR`frontparts/form_personal_confirm.tpl" flgFields=3 emailMobile=false prefix=""}-->
                    </table>
                </div>
            </div>
            <div class="btn_area row padding-left-md padding-right-md">
                <div class="col-sm-3 padding-right-none hidden-xs">
                    <a href="?" onclick="eccube.setModeAndSubmit('return', '', ''); return false;" class="btn btn-default btn-block">戻る</a>
                </div>
                <div class="col-sm-6">
                    <button name="send_button" id="send_button" class="btn btn-primary btn-block xs-btn-lg sm-btn-lg">会員登録する</button>
                </div>
                <div class="col-xs-12 visible-xs margin-top-sm">
                    <a href="?" onclick="eccube.setModeAndSubmit('return', '', ''); return false;" class="btn btn-default btn-sm btn-block">戻る</a>
                </div>
            </div>

        </form>
    </div>
</div>
