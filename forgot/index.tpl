<!--{*
 * This is template for EC-CUBE 2.13.5 Copyright(c) EC-CUBE CO.,LTD. All Rights Reserved.
 * This file created by Copyright(c) koh-taka.
 * https://github.com/koh-taka/eccube-on-bootstrap3-custom
 * It fork from and respect by http://perl.no-tubo.net/
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 *}-->
<!--{include file="`$smarty.const.TEMPLATE_REALDIR`popup_header.tpl" subtitle="パスワードを忘れた方(入力ページ)"}-->

<div id="window_area">
    <h2>パスワードの再発行</h2>
    <p class="information">
        ご登録時のお名前とメールアドレスを入力して「次へ」ボタンをクリックしてください。
    </p>
    <form action="?" method="post" name="form1">
        <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
        <input type="hidden" name="mode" value="mail_check" />

        <div id="forgot">
            <div class="contents">
                <div class="name form-group">
                    <div class="row">
                        <div class="col-xs-12">お名前</div>
                        <div class="col-xs-6<!--{if $arrErr.name01 or $errmsg}--> has-error<!--{/if}-->">
                            <input type="text" class="box120 form-control" name="name01" value="<!--{$arrForm.name01|default:''|h}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" style="<!--{$errmsg|sfGetErrorColor}-->;<!--{$arrErr.name01|sfGetErrorColor}-->; ime-mode: active;" placeholder="姓" />
                            <p class="attention"><!--{$arrErr.name01}--></p>
                        </div>
                        <div class="col-xs-6<!--{if $arrErr.name02 or $errmsg}--> has-error<!--{/if}-->">
                            <input type="text" class="box120 form-control" name="name02" value="<!--{$arrForm.name02|default:''|h}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" style="<!--{$errmsg|sfGetErrorColor}-->;<!--{$arrErr.name02|sfGetErrorColor}-->; ime-mode: active;" placeholder="名" />
                            <p class="attention"><!--{$arrErr.name02}--></p>
                        </div>
                    </div>
                </div>
                <div class="mailaddres form-group">
                    <div class="row">
                        <div class="col-xs-12">メールアドレス</div>
                        <div class="col-xs-12<!--{if $arrErr.email or $errmsg}--> has-error<!--{/if}-->">
                            <input type="email" name="email" value="<!--{$arrForm.email|default:$tpl_login_email|h}-->" class="box300 form-control" style="<!--{$errmsg|sfGetErrorColor}-->;<!--{$arrErr.email|sfGetErrorColor}-->; ime-mode: disabled;" placeholder="メールアドレス" />
                            <p class="attention"><!--{$arrErr.email}--></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <p class="attention">
            <!--{$errmsg}-->
        </p>
        <div class="btn_area row">
            <div class="col-sm-12 col-md-4">
                <button name="next" id="next" class="btn-action btn btn-primary btn-block xs-btn-lg sm-btn-lg">次へ</button>
            </div>
        </div>
    </form>
</div>
<!--{include file="`$smarty.const.TEMPLATE_REALDIR`popup_footer.tpl"}-->

