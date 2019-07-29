<!--{*
 * This is template for EC-CUBE 2.13.5 Copyright(c) EC-CUBE CO.,LTD. All Rights Reserved.
 * This file created by Copyright(c) koh-taka.
 * https://github.com/koh-taka/eccube-on-bootstrap3-custom
 * It fork from and respect by http://perl.no-tubo.net/
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 *}-->

<!--{strip}-->
    <div class="block_outer">
        <div id="guide_area" class="block_body">

            <div class="list-group">
              <a href="<!--{$smarty.const.ROOT_URLPATH}-->abouts/<!--{$smarty.const.DIR_INDEX_PATH}-->" class="list-group-item<!--{if $tpl_page_class_name == "LC_Page_Abouts"}--> active<!--{/if}-->">当サイトについて<span class="fa fa-angle-right pull-right"></span></a>
              <a href="<!--{$smarty.const.HTTPS_URL}-->contact/<!--{$smarty.const.DIR_INDEX_PATH}-->" class="list-group-item<!--{if $tpl_page_class_name == "LC_Page_Contact" || $tpl_page_class_name == "LC_Page_Contact_Complete"}--> active<!--{/if}-->">お問い合わせ<span class="fa fa-angle-right pull-right"></span></a>
              <a href="<!--{$smarty.const.ROOT_URLPATH}-->order/<!--{$smarty.const.DIR_INDEX_PATH}-->" class="list-group-item<!--{if $tpl_page_class_name == "LC_Page_Order"}--> active<!--{/if}-->">特定商取引法に基づく表記<span class="fa fa-angle-right pull-right"></span></a>
              <a href="<!--{$smarty.const.ROOT_URLPATH}-->guide/privacy.php" class="list-group-item<!--{if $tpl_page_class_name == "LC_Page_Guide_Privacy"}--> active<!--{/if}-->">プライバシーポリシー<span class="fa fa-angle-right pull-right"></span></a>
            </div>
        </div>
    </div>
<!--{/strip}-->
