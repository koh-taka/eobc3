<!--{*
 * This is template for EC-CUBE 2.13.5 Copyright(c) EC-CUBE CO.,LTD. All Rights Reserved.
 * This file created by Copyright(c) koh-taka.
 * https://github.com/koh-taka/eccube-on-bootstrap3-custom
 * It fork from and respect by http://perl.no-tubo.net/
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 *}-->
<!--{include file="`$smarty.const.TEMPLATE_REALDIR`popup_header.tpl" subtitle="パスワードを忘れた方(確認ページ)"}-->

<div id="window_area">
    <h2>パスワードの再発行 秘密の質問の確認</h2>
    <p class="information">
        ご登録時に入力した下記質問の答えを入力して「次へ」ボタンをクリックしてください。<br />
        ※下記質問の答えがわからない場合は、<a href="mailto:<!--{$arrSiteInfo.email02|escape:'hex'}-->"><!--{$arrSiteInfo.email02|escape:'hexentitiy'}--></a>までご連絡ください。<br />
    </p>
    <p class="message alert alert-danger">
        <span class="fa fa-warning"></span>
        【重要】新しくパスワードを発行いたしますので、以前のパスワードはご利用できなくなります。</p>
    </p>
    <form action="?" method="post" name="form1">
        <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
        <input type="hidden" name="mode" value="secret_check" />

        <!--{foreach key=key item=item from=$arrForm}-->
            <!--{if $key ne 'reminder_answer'}-->
                <input type="hidden" name="<!--{$key}-->" value="<!--{$item|h}-->" />
            <!--{/if}-->
        <!--{/foreach}-->

        <div id="completebox" class="row">
            <div class="col-xs-12">
                <!--{$arrReminder[$arrForm.reminder]}--><!--★答え入力★-->
            </div>
            <div class="col-xs-12<!--{if $arrErr.reminder or $arrErr.reminder_answer or $errmsg}--> has-error<!--{/if}-->">
                <input type="text" name="reminder_answer" value="" class="box300 form-control" style="<!--{$arrErr.reminder_answer|sfGetErrorColor}--><!--{$errmsg|sfGetErrorColor}-->" />
                <span class="attention">
                    <!--{$errmsg}-->
                    <!--{$arrErr.reminder}-->
                    <!--{$arrErr.reminder_answer}-->
                </span>
            </div>
        </div>
        <div class="btn_area row">
            <div class="col-sm-12 col-md-4">
                <button name="next" id="next" class="btn-action btn btn-primary btn-block xs-btn-lg sm-btn-lg">パスワードを再発行</button>
            </div>
        </div>
    </form>
</div>

<!--{include file="`$smarty.const.TEMPLATE_REALDIR`popup_footer.tpl"}-->
