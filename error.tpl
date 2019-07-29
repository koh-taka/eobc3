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
                        <!--★エラーメッセージ-->
                        <p class="error panel-body text-center"><!--{$tpl_error}--></p>
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
