<!--{*
 * This is template for EC-CUBE 2.13.5 Copyright(c) EC-CUBE CO.,LTD. All Rights Reserved.
 * This file created by Copyright(c) koh-taka.
 * https://github.com/koh-taka/eccube-on-bootstrap3-custom
 * It fork from and respect by http://perl.no-tubo.net/
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 *}-->

<!--▼FOOTER-->
<!--{strip}-->
    <div id="footer_wrap">
        <div id="footer" class="container">
            <div id="pagetop" class="pull-right"><a href="#top">このページの先頭へ</a></div>
        </div>
    </div>
    <!--{* ▼FooterBottom COLUMN*}-->
    <!--{if $arrPageLayout.FooterBottomNavi|@count > 0}-->
        <div id="footerbottomcolumn">
            <!--{* ▼上ナビ *}-->
            <!--{foreach key=FooterBottomNaviKey item=FooterBottomNaviItem from=$arrPageLayout.FooterBottomNavi}-->
                <!-- ▼<!--{$FooterBottomNaviItem.bloc_name}--> -->
                <!--{if $FooterBottomNaviItem.php_path != ""}-->
                    <!--{include_php file=$FooterBottomNaviItem.php_path items=$FooterBottomNaviItem}-->
                <!--{else}-->
                    <!--{include file=$FooterBottomNaviItem.tpl_path items=$FooterBottomNaviItem}-->
                <!--{/if}-->
                <!-- ▲<!--{$FooterBottomNaviItem.bloc_name}--> -->
            <!--{/foreach}-->
            <!--{* ▲上ナビ *}-->
        </div>
    <!--{/if}-->
    <!--{* ▲FooterBottom COLUMN*}-->

<nav class="navbar navbar-inverse" id="footer-bottom">
	<div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">Copyright ©
                &nbsp;<!--{if $smarty.const.RELEASE_YEAR != $smarty.now|date_format:"%Y"}--><!--{$smarty.const.RELEASE_YEAR}-->-<!--{/if}--><!--{$smarty.now|date_format:"%Y"}-->
                &nbsp;<!--{$arrSiteInfo.shop_name_eng|default:$arrSiteInfo.shop_name|h}--> All rights reserved.
            </a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li class="<!--{if $tpl_page_class_name == "LC_Page_Abouts"}--> active<!--{/if}-->"><a href="<!--{$smarty.const.ROOT_URLPATH}-->abouts/<!--{$smarty.const.DIR_INDEX_PATH}-->">当サイトについて</a>
            <li class="<!--{if $tpl_page_class_name == "LC_Page_Contact" || $tpl_page_class_name == "LC_Page_Contact_Complete"}--> active<!--{/if}-->"><a href="<!--{$smarty.const.HTTPS_URL}-->contact/<!--{$smarty.const.DIR_INDEX_PATH}-->">お問い合わせ</a>
            <li class="<!--{if $tpl_page_class_name == "LC_Page_Order"}--> active<!--{/if}-->"><a href="<!--{$smarty.const.ROOT_URLPATH}-->order/<!--{$smarty.const.DIR_INDEX_PATH}-->">特定商取引法に基づく表記</a>
            <li class="<!--{if $tpl_page_class_name == "LC_Page_Guide_Privacy"}--> active<!--{/if}-->"><a href="<!--{$smarty.const.ROOT_URLPATH}-->guide/privacy.php">プライバシーポリシー</a>
        </ul>
	</div>
</nav>
<!--{/strip}-->
<!--▲FOOTER-->
