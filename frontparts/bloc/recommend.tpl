<!--{*
 * This is template for EC-CUBE 2.13.5 Copyright(c) EC-CUBE CO.,LTD. All Rights Reserved.
 * This file created by Copyright(c) koh-taka.
 * https://github.com/koh-taka/eccube-on-bootstrap3-custom
 * It fork from and respect by http://perl.no-tubo.net/
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 *}-->
 
<!--{strip}-->
    <!--{if count($arrBestProducts) > 0}-->
        <div class="block_outer">
            <div id="recommend_area">
                <div class="page-header">
                    <h2>
                        <span class="fa fa-star"></span> おすすめ商品
                        <small class="pull-right">
                            <a href="<!--{$smarty.const.ROOT_URLPATH}-->products/list.php">
                                全ての商品
                            </a>
                        </small>
                    </h2>
                </div>
                <div class="clearfix re_content">
                    <!--{foreach from=$arrBestProducts item=arrProduct name="recommend_products"}-->
                    <div class="col-sm-4 col-md-3">
                        <a href="<!--{$smarty.const.P_DETAIL_URLPATH}--><!--{$arrProduct.product_id|u}-->" class="thumbnail">
                            <img src="<!--{$smarty.const.IMAGE_SAVE_URLPATH}--><!--{$arrProduct.main_image|sfNoImageMainList|h}-->" alt="<!--{$arrProduct.name|h}-->" class="img-responsive img-rounded" />
                            <div class="caption">
                                <h4><!--{$arrProduct.name|mb_substr:0:21|h}--><!--{if $arrProduct.name|mb_strlen > 21}-->..<!--{/if}--></h4>
                                <p class="sale_price">
                                    <span class="price"><!--{$arrProduct.price02_min_inctax|number_format}--> <span class="yen">円</span><span class="inctax">(税込)</span></span>
                                </p>
                                <p class="mini comment"><!--{$arrProduct.comment|h|nl2br|mb_substr:0:19}--><!--{if $arrProduct.comment|mb_strlen > 19}-->..<!--{/if}--></p>
                            </div>
                        </a>
                    </div>
                    <!--{/foreach}-->
                </div>
            </div>
        </div>
    <!--{/if}-->
<style>
#recommend .re_content {
    display: flex;
    flex-wrap: wrap;
}
#recommend .label.label-warning {
    display: inline-block;
    max-width: 100%;
}
#recommend .row::before,#recommend .row::after{
    display: none;
}
</style>
<!--{/strip}-->
