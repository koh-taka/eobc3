<!--{*
 * This is template for EC-CUBE 2.13.5 Copyright(c) EC-CUBE CO.,LTD. All Rights Reserved.
 * This file created by Copyright(c) koh-taka.
 * https://github.com/koh-taka/eccube-on-bootstrap3-custom
 * It fork from and respect by http://perl.no-tubo.net/
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 *}-->

<!--{strip}-->
<div id="main_image" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#main_image" data-slide-to="0" class="active"></li>
        <li data-target="#main_image" data-slide-to="1"></li>
    </ol>
    <div class="carousel-inner">
        <a href="<!--{$smarty.const.P_DETAIL_URLPATH}-->1" class="item active"><img class="hover_change_image img-responsive"
                src="<!--{$TPL_URLPATH}-->img/banner/bnr_test.jpg" alt="詳細はこちら" width="100%" /></a>
        <a href="<!--{$smarty.const.P_DETAIL_URLPATH}-->1" class="item"><img class="hover_change_image img-responsive"
                src="<!--{$TPL_URLPATH}-->img/banner/bnr_top_main.jpg" alt="詳細はこちら" width="100%" /></a>
        <a class="left carousel-control" href="#main_image" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        </a>
        <a class="right carousel-control" href="#main_image" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        </a>
    </div>
</div>
<!--{/strip}-->