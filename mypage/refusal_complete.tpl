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
    <!--{include file = $tpl_navi}-->
    <div id="mycontents_area">
        <h3><!--{$tpl_subtitle|h}--></h3>
        <div id="complete_area">
            <div class="message alert alert-info">
                退会手続きが完了いたしました。
            </div>

            <div class="shop_information col-xs-12 padding-bottom-xl">
                <p>
                    MYページをご利用いただき誠にありがとうございました。<br />
                    またのご利用を心よりお待ち申し上げます。
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
                    <a href="<!--{$smarty.const.TOP_URL}-->" class="btn btn-default btn-block">トップページへ</a>
                </div>
            </div>
        </div>
    </div>
</div>
