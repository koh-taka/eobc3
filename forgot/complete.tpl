<!--{*
 * This is template for EC-CUBE 2.13.5 Copyright(c) EC-CUBE CO.,LTD. All Rights Reserved.
 * This file created by Copyright(c) koh-taka.
 * https://github.com/koh-taka/eccube-on-bootstrap3-custom
 * It fork from and respect by http://perl.no-tubo.net/
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 *}-->
<!--{include file="`$smarty.const.TEMPLATE_REALDIR`popup_header.tpl" subtitle="パスワードを忘れた方(完了ページ)"}-->

<div id="window_area">
    <h2 class="title">パスワードがわからない方</h2>
    <p class="information alert alert-info">パスワードの発行が完了いたしました。ログインには下記のパスワードをご利用ください。<br />
        ※下記パスワードは、MYページの「会員登録内容変更」よりご変更いただけます。</p>

        <div id="forgot">
            <!--{if $smarty.const.FORGOT_MAIL != 1}-->
                    <p>
                        <span class="attention"><!--{$arrForm.new_password}--></span>
                    </p>
            <!--{else}-->
            <p>
                <span class="attention">ご登録メールアドレスに送付致しました。</span>
            </p>
            <!--{/if}-->
        </div>
    <form action="?" method="post" name="form1">
        <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
        <div class="btn_area">
            <a href="javascript:window.close()" class="btn btn-default btn-block xs-btn-lg sm-btn-lg">
                    閉じる
            </a>
        </div>
    </form>
</div>

<!--{include file="`$smarty.const.TEMPLATE_REALDIR`popup_footer.tpl"}-->
