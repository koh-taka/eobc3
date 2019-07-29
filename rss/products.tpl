<?xml version="1.0" encoding="<!--{$encode}-->"?>
<!--{*
 * This is template for EC-CUBE 2.13.5 Copyright(c) EC-CUBE CO.,LTD. All Rights Reserved.
 * This file created by Copyright(c) koh-taka.
 * https://github.com/koh-taka/eccube-on-bootstrap3-custom
 * It fork from and respect by http://perl.no-tubo.net/
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 *}-->

<rss version="2.0" xmlns:dc="http://purl.org/dc/elements/1.1/">
<channel>
<title><!--{$arrSiteInfo.shop_name|sfMbConvertEncoding:$encode}--> : <!--{$title|sfMbConvertEncoding:$encode}--></title>
<link><!--{$smarty.const.HTTP_URL}--></link>
<description><!--{$arrSiteInfo.message|sfMbConvertEncoding:$encode}--></description>
<language>ja</language>
<!--{foreach from=$arrProducts item=arrProduct}-->
    <item>
        <title><!--{$arrProduct.name|h|sfMbConvertEncoding:$encode}--></title>
        <link><!--{$smarty.const.HTTP_URL}-->products/detail.php?product_id=<!--{$arrProduct.product_id}--></link>
        <description><![CDATA[
            <div class="hproduct">
                <a href="<!--{$smarty.const.HTTP_URL}-->products/detail.php?product_id=<!--{$arrProduct.product_id}-->" rel="product">
                    <img src="<!--{$arrProduct.main_list_image}-->" alt="<!--{$arrProduct.product_name|h|sfMbConvertEncoding:$encode}-->" class="product-thumb" />
                </a>
                <div class="product-title"><a href="<!--{$smarty.const.HTTP_URL}-->products/detail.php?product_id=<!--{$arrProduct.product_id}-->" rel="product"><!--{$arrProduct.product_name|h|sfMbConvertEncoding:$encode}--></a></div>
                商品コード：<!--{$arrProduct.product_code_max|h|sfMbConvertEncoding:$encode}-->
                <div><!--{$smarty.const.SALE_PRICE_TITLE}-->：
                    <span class="price">
                        <!--{if $arrProduct.price02_min_inctax == $arrProduct.price02_max_inctax}-->
                            <!--{$arrProduct.price02_min_inctax|number_format}-->
                        <!--{else}-->
                            <!--{$arrProduct.price02_min_inctax|number_format}-->〜<!--{$arrProduct.price02_max_inctax|number_format}-->
                        <!--{/if}-->円</span>
                </div>
                <div class="description">
                    <!--{$arrProduct.main_list_comment|h|sfMbConvertEncoding:$encode|nl2br}-->
                </div>
            </div>
        ]]></description>
        <pubDate><!--{$arrProduct.update_date|date_format:"%Y-%m-%dT%T+09:00"}--></pubDate>
    </item>
<!--{/foreach}-->
</channel>
</rss >
