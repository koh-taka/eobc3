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
<!--{include file="`$smarty.const.TEMPLATE_REALDIR`popup_header.tpl" subtitle="新しいお届け先の追加・変更"}-->

<div id="window_area">
    <h2 class="title"><!--{$tpl_title|h}--></h2>
    <p class="alert alert-info"><strong>必須項目</strong>「<span class="attention">※</span>」印は入力必須項目です。</p>

    <form name="form1" id="form1" class="form-horizontal" method="post" action="?">
        <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
        <input type="hidden" name="mode" value="edit" />
        <input type="hidden" name="other_deliv_id" value="<!--{$smarty.session.other_deliv_id|h}-->" />
        <input type="hidden" name="ParentPage" value="<!--{$ParentPage}-->" />

        <!--{include file="`$smarty.const.TEMPLATE_REALDIR`frontparts/form_personal_input.tpl" flgFields=1 emailMobile=false prefix=""}-->

        <div class="btn_area form-group padding-bottom-lg">
            <div class="col-sm-12 col-md-4 col-md-push-2">
                <a class="btn-action btn btn-primary btn-block xs-btn-lg sm-btn-lg" href="javascript:" onclick="eccube.setValueAndSubmit('form1', 'mode', 'edit'); return false;">登録する</a>
            </div>
        </div>
    </form>
</div>

<!--{include file="`$smarty.const.TEMPLATE_REALDIR`popup_footer.tpl"}-->
