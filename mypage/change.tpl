<!--{*
/*
 * This is template for EC-CUBE 2.13.5 Copyright(c) EC-CUBE CO.,LTD. All Rights Reserved.
 * This file created by Copyright(c) koh-taka.
 * https://github.com/koh-taka/eccube-on-bootstrap3-custom
 * It fork from and respect by http://perl.no-tubo.net/
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 */
*}-->

<div id="mypagecolumn">
    <h2 class="title"><!--{$tpl_title|h}--></h2>
    <!--{include file=$tpl_navi}-->
    <div id="mycontents_area">
        <h3><!--{$tpl_subtitle|h}--></h3>
        <p class="alert alert-info"><strong>必須項目</strong>「<span class="attention">※</span>」印は入力必須項目です。</p>
        <br />
        <p>入力後、一番下の「確認ページへ」ボタンをクリックしてください。</p>

        <form name="form1" id="form1" class="form-horizontal" method="post" action="?">
            <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
            <input type="hidden" name="mode" value="confirm" />
            <input type="hidden" name="customer_id" value="<!--{$arrForm.customer_id.value|h}-->" />

            <!--{include file="`$smarty.const.TEMPLATE_REALDIR`frontparts/form_personal_input.tpl" flgFields=3 emailMobile=true prefix=""}-->

            <div class="btn_area form-group">
                <div class="col-sm-12 col-md-4 col-md-push-2">
                    <button name="refusal" id="refusal" class="btn btn-primary btn-block xs-btn-lg sm-btn-lg">確認ページヘ</button>
                </div>
            </div>
        </form>
    </div>
</div>
