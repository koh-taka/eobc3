<!--{printXMLDeclaration}--><!DOCTYPE html>
<!--{*
 * This is template for EC-CUBE 2.13.5 Copyright(c) EC-CUBE CO.,LTD. All Rights Reserved.
 * This file created by Copyright(c) koh-taka.
 * https://github.com/koh-taka/eccube-on-bootstrap3-custom
 * It fork from and respect by http://perl.no-tubo.net/
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 *}-->

<html lang="ja">
<head prefix="og: http://ogp.me/ns# article: http://ogp.me/ns/article# fb: http://ogp.me/ns/fb#">
<meta charset="<!--{$smarty.const.CHAR_CODE}-->" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<meta http-equiv="Content-Type" content="text/html; charset=<!--{$smarty.const.CHAR_CODE}-->" />
<title><!--{$arrSiteInfo.shop_name|h}--><!--{if $tpl_subtitle|strlen >= 1}--> / <!--{$tpl_subtitle|h}--><!--{elseif $tpl_title|strlen >= 1}--> / <!--{$tpl_title|h}--><!--{/if}--></title>
<meta property="og:title" content="<!--{$arrSiteInfo.shop_name|h}--><!--{if $tpl_subtitle|strlen >= 1}--> / <!--{$tpl_subtitle|h}--><!--{elseif $tpl_title|strlen >= 1}--> / <!--{$tpl_title|h}--><!--{/if}-->">
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<!--{if $arrPageLayout.author|strlen >= 1}-->
    <meta name="author" content="<!--{$arrPageLayout.author|h}-->" />
<!--{/if}-->
<!--{if $arrPageLayout.description|strlen >= 1}-->
    <meta name="description" content="<!--{$arrPageLayout.description|h}-->" />
    <meta property="og:description" content="<!--{$arrPageLayout.description|h}-->">
    <meta name="twitter:card" content="<!--{$arrPageLayout.description|h}-->">
<!--{/if}-->
<!--{if $arrPageLayout.meta_robots|strlen >= 1}-->
    <meta name="robots" content="<!--{$arrPageLayout.meta_robots|h}-->" />
<!--{/if}-->
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

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-honoka@3.3.7-a/dist/css/bootstrap.min.css" integrity="sha256-TjxkNWd4Voe/qogGjGjEbaxzWwoIiciIfmzuJgnS0wM=" crossorigin="anonymous" media="all">
<link rel="stylesheet" href="<!--{$TPL_URLPATH}-->css/m.css" type="text/css" media="all" media="print" onload="this.media='all'" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css" integrity="sha256-eZrrJcwDc/3uDhsdt61sL2oOBY362qM3lon1gyExkL0=" crossorigin="anonymous" media="print" onload="this.media='all'">
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
</head>

<script type="text/javascript" src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="<!--{$smarty.const.ROOT_URLPATH}-->js/eccube.js"></script>
<script type="text/javascript" src="<!--{$smarty.const.ROOT_URLPATH}-->js/eccube.legacy.js"></script>

<script src="<!--{$TPL_URLPATH}-->js/jquery.plugin.min.js"></script>

<script type="text/javascript">//<![CDATA[
    <!--{$tpl_javascript}-->
    $(function(){
        <!--{$tpl_onload}-->
    });

//]]></script>

<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<!-- ▼BODY部 スタート --> 
<!--{include file='./site_main.tpl'}-->
<!-- ▲BODY部 エンド -->

</html>
