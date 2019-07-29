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
    <!--{if $tpl_navi != ""}-->
        <!--{include file=$tpl_navi}-->
    <!--{else}-->
        <!--{include file=`$smarty.const.TEMPLATE_REALDIR`mypage/navi.tpl}-->
    <!--{/if}-->
    <div id="mycontents_area">
        <form name="form1" id="form1" method="post" action="?">
            <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
            <input type="hidden" name="order_id" value="" />
            <input type="hidden" name="pageno" value="<!--{$tpl_pageno}-->" />
            <input type="hidden" name="mode" value="" />
            <input type="hidden" name="product_id" value="" />
            <h3><!--{$tpl_subtitle|h}--></h3>

            <!--{if $tpl_linemax > 0}-->

                <p><span class="attention"><!--{$tpl_linemax}-->件</span>のお気に入りがあります。</p>

                <div class="list-group">
                <!--{section name=cnt loop=$arrFavorite}-->
                    <!--{assign var=product_id value="`$arrFavorite[cnt].product_id`"}-->
                    <div class="list-group-item">
                        <div class="row">
                            <div class="col-xs-3 col-sm-2 col-md-1 padding-right-none">
                                <a href="<!--{$smarty.const.P_DETAIL_URLPATH}--><!--{$product_id|u}-->">
                                    <img src="<!--{$smarty.const.IMAGE_SAVE_URLPATH}--><!--{$arrFavorite[cnt].main_list_image|sfNoImageMainList|h}-->" class="img img-responsive" alt="<!--{$arrFavorite[cnt].name|h}-->" />
                                </a>
                            </div>
                            <div class="col-xs-7 col-sm-8 col-md-9">
                                <div>
                                    <a href="<!--{$smarty.const.P_DETAIL_URLPATH}--><!--{$product_id|u}-->">
                                        <!--{$arrFavorite[cnt].name|h}--></a>
                                </div>
                                <div class="alignR sale_price">
                                    <span class="price">
                                        <!--{if $arrFavorite[cnt].price02_min_inctax == $arrFavorite[cnt].price02_max_inctax}-->
                                            <!--{$arrFavorite[cnt].price02_min_inctax|number_format}-->
                                        <!--{else}-->
                                            <!--{$arrFavorite[cnt].price02_min_inctax|number_format}-->～<!--{$arrFavorite[cnt].price02_max_inctax|number_format}-->
                                        <!--{/if}--><span class="yen">円</span><span class="inctax">(税込)</span></span>
                                </div>
                            </div>
                            <div class="col-xs-2 text-right">
                                <a class="btn-delete" href="javascript:eccube.setModeAndSubmit('delete_favorite','product_id','<!--{$product_id|h}-->');">
                                    <span class="fa fa-trash-o fa-lg"></span>
                                    <span class="hidden-xs hidden-sm">削除</span>
                                </a>
                            </div>
                        </div>
                    </div>
                <!--{/section}-->
                </div>

            <!--{else}-->
                <p class="alert alert-warning">お気に入りが登録されておりません。</p>
            <!--{/if}-->

                <div class="paging pagination hidden-xs">
                    <!--▼ページナビ-->
                    <!--{$tpl_strnavi}-->
                    <!--▲ページナビ-->
                </div>
                <!--{include file= "pager.tpl"}-->
        </form>
    </div>
</div>
