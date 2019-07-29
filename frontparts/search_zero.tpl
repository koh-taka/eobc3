<!--{*
 * This is template for EC-CUBE 2.13.5 Copyright(c) EC-CUBE CO.,LTD. All Rights Reserved.
 * This file created by Copyright(c) koh-taka.
 * https://github.com/koh-taka/eccube-on-bootstrap3-custom
 * It fork from and respect by http://perl.no-tubo.net/
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 *}-->

<!--{strip}-->
    <!--{* 検索該当0件 *}-->
    <div id="undercolumn_error">
        <div class="message_area">
            <!--★エラーメッセージ-->
            <p class="alert alert-danger">
                <!--{if $smarty.get.mode == "search"}-->
                    該当件数<strong>0件</strong>です。<br />
                    他の検索キーワードより再度検索をしてください。
                <!--{else}-->
                    現在、商品はございません。
                <!--{/if}-->
            </p>
        </div>
    </div>
<!--{/strip}-->
