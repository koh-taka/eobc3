<?xml version="1.0" encoding="<!--{$encode}-->"?>
<!--{*
 * This is template for EC-CUBE 2.13.5 Copyright(c) EC-CUBE CO.,LTD. All Rights Reserved.
 * This file created by Copyright(c) koh-taka.
 * https://github.com/koh-taka/eccube-on-bootstrap3-custom
 * It fork from and respect by http://perl.no-tubo.net/
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 *}-->

<rss version="2.0">
    <channel>
        <title><!--{$site_title|sfMbConvertEncoding:$encode|h}--></title>
        <link><!--{$smarty.const.HTTP_URL}--></link>
        <description><!--{$description|sfMbConvertEncoding:$encode|h}--></description>
        <language>ja</language>
        <managingEditor><!--{$email|h}--></managingEditor>
        <webMaster><!--{$email|h}--></webMaster>
        <generator>web shoppings v1.0</generator>
        <copyright>(c) COPYRIGHT</copyright>
        <category>WEB SHOPPING</category>
        <docs>http://backend.userland.com/rss</docs>

        <!--{section name=cnt loop=$arrNews}-->
            <item>
                <link><!--{$arrNews[cnt].news_url|h}--></link>
                <title><!--{$arrNews[cnt].news_title|sfMbConvertEncoding:$encode|h}--></title>
                <description><!--{$arrNews[cnt].news_comment|truncate:256|sfMbConvertEncoding:$encode|h}--></description>
                <pubDate><!--{$arrNews[cnt].news_date|h}--></pubDate>
            </item>
        <!--{/section}-->

    </channel>
</rss>
