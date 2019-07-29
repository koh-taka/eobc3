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
        <div id="complete_area">
            <p class="message alert alert-info margin-bottom-xl">会員登録の受付が完了いたしました。<br />
            現在<span class="attention">仮会員</span>の状態です。</p>
            <div class="col-sm-12 margin-bottom-lg">
                <p>
                    ご入力いただいたメールアドレス宛に、ご連絡が届いておりますので、ご確認ください。
                </p>
                <p>
                    本会員になった上でお買い物をお楽しみください。よろしくお願いいたします。
                </p>
                <address class="shop_information">
                    <strong class="font-size-lg"><!--{$arrSiteInfo.company_name|h}--></strong><br />
                    TEL：<!--{$arrSiteInfo.tel01}-->-<!--{$arrSiteInfo.tel02}-->-<!--{$arrSiteInfo.tel03}-->
                    <!--{if $arrSiteInfo.business_hour != ""}-->
                    (受付時間/<!--{$arrSiteInfo.business_hour}-->)
                    <!--{/if}--><br />
                    E-mail：<a href="mailto:<!--{$arrSiteInfo.email02|escape:'hex'}-->"><!--{$arrSiteInfo.email02|escape:'hexentity'}--></a>
                </address>
            </div>

            <div class="btn_area row">
                <div class="col-sm-12 col-md-6">
                    <a href="<!--{$smarty.const.TOP_URL}-->" class="btn btn-default btn-block xs-btn-lg sm-btn-lg">トップページへ</a>
                </div>
            </div>
        </div>
    </div>
</div>
