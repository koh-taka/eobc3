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
            <div id="copyright">Copyright ©
                &nbsp;<!--{if $smarty.const.RELEASE_YEAR != $smarty.now|date_format:"%Y"}--><!--{$smarty.const.RELEASE_YEAR}-->-<!--{/if}--><!--{$smarty.now|date_format:"%Y"}-->
                &nbsp;<!--{$arrSiteInfo.shop_name_eng|default:$arrSiteInfo.shop_name|h}--> All rights reserved.
            </div>
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

<!--{/strip}-->
<!--▲FOOTER-->
