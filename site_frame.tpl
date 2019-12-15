<!--{printXMLDeclaration}--><!DOCTYPE html>
<!--{*
 * This is template for EC-CUBE 2.13.5 Copyright(c) EC-CUBE CO.,LTD. All Rights Reserved.
 * This file created by Copyright(c) koh-taka.
 * https://github.com/koh-taka/eccube-on-bootstrap3-custom
 * It fork from and respect by http://perl.no-tubo.net/
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 *}-->
<!--{* 初期設定: google analyticsコードを入れてください *}-->
<!--{assign var='ga_code' value="UA-xxxxxxxx"}-->
<!--{* 初期設定: twitterアカウントあれば@なしでvalueに入れてください。 *}-->
<!--{assign var='account_twitter' value="xxxxxxxx"}-->
<!--{* 初期設定: SEO的に有用なタイトルを入れてください。 *}-->
<!--{assign var='shopname' value="xxxxxxxxx"}-->
<!--{* 初期設定: おわり *}-->

<html lang="ja">
<head prefix="og: http://ogp.me/ns# article: http://ogp.me/ns/article# fb: http://ogp.me/ns/fb#">
<script async src="https://www.googletagmanager.com/gtag/js?id=<!--{$ga_code|h}-->"></script>
<script>window.dataLayer=window.dataLayer||[];function gtag(){dataLayer.push(arguments)} gtag('js',new Date());gtag('config','<!--{$ga_code|h}-->');</script>
<meta charset="<!--{$smarty.const.CHAR_CODE}-->" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=<!--{$smarty.const.CHAR_CODE}-->" />

<!--{* SEOに寄せたタイトルを生成 *}-->
<!--{if $tpl_subtitle|strlen >= 1}-->
    <!--{assign var='tit' value="`$tpl_subtitle` / `$shopname`"}-->
<!--{elseif $tpl_title|strlen >= 1}-->
    <!--{assign var='tit' value="`$tpl_title` / `$shopname`"}-->
<!--{else}-->
    <!--{assign var='tit' value="`$shopname`"}-->
<!--{/if}-->
<title><!--{$tit|h}--></title>
<meta property="og:title" content="<!--{$tit|h}-->">

<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />

<!--{if $arrPageLayout.author|strlen >= 1}-->
    <meta name="author" content="<!--{$arrPageLayout.author|h}-->" />
<!--{/if}-->

<!--{* SEOに寄せたdiscriptionを生成。discが無い場合はSHOPマスタのメッセージを呼び出し、何が何でも設定する *}-->
<!--{if $arrPageLayout.description|strlen >= 1}-->
    <!--{assign var='dsc_base' value="`$arrPageLayout.description`"}-->
<!--{else}-->
    <!--{assign var='dsc_base' value="`$arrSiteInfo.message`"}-->
<!--{/if}-->
<!--{if $arrPageLayout.filename === "products/detail"}-->
    <!--{assign var='dsc' value="`$arrProduct.main_list_comment`/`$dsc_base`"}-->
<!--{else}-->
    <!--{assign var='dsc' value="`$dsc_base`"}-->
<!--{/if}-->
<meta name="description" content="<!--{$dsc|mb_strimwidth:0:130|h}-->.." />
<meta property="og:description" content="<!--{$dsc|mb_strimwidth:0:130|h}-->.." />
<meta name="twitter:card" content="<!--{$dsc|mb_strimwidth:0:130|h}-->.." />

<!--{if $arrPageLayout.meta_robots|strlen >= 1}-->
    <meta name="robots" content="<!--{$arrPageLayout.meta_robots|h}-->" />
<!--{/if}-->

<meta name="twitter:site" content="@<!--{$account_twitter|h}-->">
<meta property="og:type" content="website" />

<link rel="alternate" type="application/rss+xml" title="RSS" href="//<!--{$smarty.server.SERVER_NAME}-->/rss/<!--{$smarty.const.DIR_INDEX_PATH}-->" />

<!--{if ($smarty.server.HTTPS != "") && ($smarty.server.HTTPS != "off")}-->
    <meta property="og:url" content="<!--{$smarty.const.HTTPS_URL}-->">
<!--{else}-->
    <meta property="og:url" content="<!--{$smarty.const.HTTP_URL}-->">
<!--{/if}-->

 <!--{if $arrPageLayout.filename === "products/detail"}-->
    <meta property="og:image" content="http://<!--{$smarty.server.SERVER_NAME}--><!--{$smarty.const.IMAGE_SAVE_URLPATH}--><!--{$arrProduct.main_image|h}-->" />
 <!--{/if}-->

<link rel="shortcut icon" href="<!--{$TPL_URLPATH}-->img/common/favicon.ico" />
<link rel="icon" type="image/vnd.microsoft.icon" href="<!--{$TPL_URLPATH}-->img/common/favicon.ico" />

<!--{* CDNから重要ライブラリを先に読み込む／CDNダウン時のフォールバック込 *}-->
<script type="text/javascript" src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.11.3.min.js"></script>
<script>window.jQuery || document.write('<script src="<!--{$TPL_URLPATH}-->js/jquery-1.11.3.min.js"><\/script>')</script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-honoka@3.3.7-a/dist/css/bootstrap.min.css" integrity="sha256-TjxkNWd4Voe/qogGjGjEbaxzWwoIiciIfmzuJgnS0wM=" crossorigin="anonymous" media="all">
<script src="https://cdn.jsdelivr.net/npm/bootstrap-honoka@3.3.7-a/dist/js/bootstrap.min.js" integrity="sha256-U5ZEeKfGNOja007MMD3YBI0A3OSZOQbeG6z2f2Y0hu8=" crossorigin="anonymous"></script>
<script>jQuery.fn.modal || document.write('<link rel="stylesheet" href="<!--{$TPL_URLPATH}-->css/bootstrap.min.css"><script src="<!--{$TPL_URLPATH}-->js/bootstrap.min.js"><\/script>')</script>

<link rel="stylesheet" href="<!--{$TPL_URLPATH}-->css/m.css" type="text/css" media="all" media="print" onload="this.media='all'" />

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.2/css/all.css" integrity="sha256-piqEf7Ap7CMps8krDQsSOTZgF+MU/0MPyPW2enj5I40=" crossorigin="anonymous" onload="this.media='all'">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/photoswipe/4.1.3/photoswipe.min.css" integrity="sha256-LWdHSKWG7zv3DTpee8YAgoTfkj3gNkfauF624h4P2Nw=" crossorigin="anonymous" media="print" onload="this.media='all'">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/photoswipe/4.1.3/default-skin/default-skin.min.css" integrity="sha256-Q9bBMw/rHRRag46GDWY84J3elDNc8JJjKXL9tIC4oe8=" crossorigin="anonymous" media="print" onload="this.media='all'">

<!--{strip}-->
    <!--{* ▼Head COLUMN*}-->
    <!--{if $arrPageLayout.HeadNavi|@count > 0}-->
        <!--{* ▼上ナビ *}-->
        <!--{foreach key=HeadNaviKey item=HeadNaviItem from=$arrPageLayout.HeadNavi}-->
            <!--{* ▼<!--{$HeadNaviItem.bloc_name}--> *}-->
            <!--{if $HeadNaviItem.php_path != ""}-->
                <!--{include_php file=$HeadNaviItem.php_path}-->
            <!--{else}-->
                <!--{include file=$HeadNaviItem.tpl_path}-->
            <!--{/if}-->
            <!--{* ▲<!--{$HeadNaviItem.bloc_name}--> *}-->
        <!--{/foreach}-->
        <!--{* ▲上ナビ *}-->
    <!--{/if}-->
    <!--{* ▲Head COLUMN*}-->
<!--{/strip}-->

<script type="text/javascript" src="<!--{$smarty.const.ROOT_URLPATH}-->js/eccube.js"></script>
<script type="text/javascript" src="<!--{$smarty.const.ROOT_URLPATH}-->js/eccube.legacy.js"></script>
<script src="<!--{$TPL_URLPATH}-->js/jquery.plugin.min.js" defer></script>

<script type="text/javascript">//<![CDATA[
    <!--{$tpl_javascript}-->
    $(function(){
        <!--{$tpl_onload}-->
        <!--{* メニューをハイライトする *}-->
        $('.nav a[href="'+window.location+'"]').parent().addClass('active');
    });

//]]></script>

<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<script src="https://cdnjs.cloudflare.com/ajax/libs/photoswipe/4.1.3/photoswipe.min.js" integrity="sha256-ePwmChbbvXbsO02lbM3HoHbSHTHFAeChekF1xKJdleo=" crossorigin="anonymous" defer></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/photoswipe/4.1.3/photoswipe-ui-default.min.js" integrity="sha256-UKkzOn/w1mBxRmLLGrSeyB4e1xbrp4xylgAWb3M42pU=" crossorigin="anonymous" defer></script>
<script type="text/javascript" src="<!--{$TPL_URLPATH}-->js/photoSwipeConf.min.js" defer></script>

<!--{if $tpl_page_class_name === "LC_Page_Abouts"}-->
    <!--{if ($smarty.server.HTTPS != "") && ($smarty.server.HTTPS != "off")}-->
        <script type="text/javascript" src="https://maps-api-ssl.google.com/maps/api/js?sensor=false" defer></script>
    <!--{else}-->
        <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false" defer></script>
    <!--{/if}-->
<!--{/if}-->

</head>

<!-- ▼BODY部 スタート --> 
<!--{include file='./site_main.tpl'}-->
<!-- ▲BODY部 エンド -->

</html>
