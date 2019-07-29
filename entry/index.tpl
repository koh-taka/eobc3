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
        <!--{if $smarty.const.CUSTOMER_CONFIRM_MAIL}-->
            <p class="alert alert-warning">ご登録されますと、まずは仮会員となります。<br />
                入力されたメールアドレスに、ご連絡が届きますので、本会員になった上でお買い物をお楽しみください。</p>
        <!--{/if}-->
        <div class="alert alert-info fade in">
          <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
          <strong>必須項目</strong> 「<span class="attention">※</span>」印は入力必須項目です。
        </div>
        <form name="form1" id="form1" class="form-horizontal" method="post" action="?">
            <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
            <input type="hidden" name="mode" value="confirm" />

            <!--{include file="`$smarty.const.TEMPLATE_REALDIR`frontparts/form_personal_input.tpl" flgFields=3 emailMobile=false prefix=""}-->

            <div class="btn_area form-group">
                <div class="col-sm-12 col-md-4 col-md-push-2">
                    <button id="next" class="btn btn-primary btn-block xs-btn-lg sm-btn-lg">確認ページヘ</button>
                </div>
            </div>

        </form>
    </div>
</div>
