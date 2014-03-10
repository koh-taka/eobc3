<!--{*
 * This file is part of EC-CUBE
 *
 * Copyright(c) 2000-2013 LOCKON CO.,LTD. All Rights Reserved.
 *
 * http://www.lockon.co.jp/
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 *}-->

<script type="text/javascript">//<![CDATA[
    function fnSetClassCategories(form, classcat_id2_selected) {
        var $form = $(form);
        var product_id = $form.find('input[name=product_id]').val();
        var $sele1 = $form.find('select[name=classcategory_id1]');
        var $sele2 = $form.find('select[name=classcategory_id2]');
        eccube.setClassCategories($form, product_id, $sele1, $sele2, classcat_id2_selected);
    }
    // 並び順を変更
    function fnChangeOrderby(orderby) {
        eccube.setValue('orderby', orderby);
        eccube.setValue('pageno', 1);
        eccube.submitForm();
    }
    // 表示件数を変更
    function fnChangeDispNumber(dispNumber) {
        eccube.setValue('disp_number', dispNumber);
        eccube.setValue('pageno', 1);
        eccube.submitForm();
    }
    // カートに入れる
    function fnInCart(productForm) {
        var searchForm = $("#form1");
        var cartForm = $(productForm);
        // 検索条件を引き継ぐ
        var hiddenValues = ['mode','category_id','maker_id','name','orderby','disp_number','pageno','rnd'];
        $.each(hiddenValues, function(){
            // 商品別のフォームに検索条件の値があれば上書き
            if (cartForm.has('input[name='+this+']').length != 0) {
                cartForm.find('input[name='+this+']').val(searchForm.find('input[name='+this+']').val());
            }
            // なければ追加
            else {
                cartForm.append($('<input type="hidden" />').attr("name", this).val(searchForm.find('input[name='+this+']').val()));
            }
        });
        // 商品別のフォームを送信
        cartForm.submit();
    }
//]]></script>

<div id="undercolumn">
    <form name="form1" id="form1" method="get" action="?">
        <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
        <input type="hidden" name="mode" value="<!--{$mode|h}-->" />
        <!--{* ▼検索条件 *}-->
        <input type="hidden" name="category_id" value="<!--{$arrSearchData.category_id|h}-->" />
        <input type="hidden" name="maker_id" value="<!--{$arrSearchData.maker_id|h}-->" />
        <input type="hidden" name="name" value="<!--{$arrSearchData.name|h}-->" />
        <!--{* ▲検索条件 *}-->
        <!--{* ▼ページナビ関連 *}-->
        <input type="hidden" name="orderby" value="<!--{$orderby|h}-->" />
        <input type="hidden" name="disp_number" value="<!--{$disp_number|h}-->" />
        <input type="hidden" name="pageno" value="<!--{$tpl_pageno|h}-->" />
        <!--{* ▲ページナビ関連 *}-->
        <input type="hidden" name="rnd" value="<!--{$tpl_rnd|h}-->" />
    </form>

    <!--★タイトル★-->
    <h2 class="title"><!--{$tpl_subtitle|h}--></h2>

    <!--▼検索条件-->
    <!--{if $tpl_subtitle == "検索結果"}-->
        <ul class="pagecond_area">
            <li><strong>商品カテゴリ：</strong><!--{$arrSearch.category|h}--></li>
        <!--{if $arrSearch.maker|strlen >= 1}--><li><strong>メーカー：</strong><!--{$arrSearch.maker|h}--></li><!--{/if}-->
            <li><strong>商品名：</strong><!--{$arrSearch.name|h}--></li>
        </ul>
    <!--{/if}-->
    <!--▲検索条件-->

    <!--▼ページナビ(本文)-->
    <!--{capture name=page_navi_body}-->
        <div class="pagenumber_area clearfix">
            <div class="change btn-group">
                <!--{if $orderby != 'price'}-->
                    <a href="javascript:fnChangeOrderby('price');" class="btn btn-default">価格順</a>
                <!--{else}-->
                    <strong class="btn btn-default active">価格順</strong>
                <!--{/if}-->
                <!--{if $orderby != "date"}-->
                        <a href="javascript:fnChangeOrderby('date');" class="btn btn-default">新着順</a>
                <!--{else}-->
                    <strong class="btn btn-default active">新着順</strong>
                <!--{/if}-->
                <div class="disp_number btn-group">
                    <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                        表示件数 <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu">
                    <!--{foreach from=$arrPRODUCTLISTMAX item="dispnum" key="num"}-->
                        <!--{if $num == $disp_number}-->
                            <li><a href="javascript:fnChangeDispNumber(<!--{$num}-->);"><strong><!--{$dispnum}--></strong></a></li>
                        <!--{else}-->
                            <li><a href="javascript:fnChangeDispNumber(<!--{$num}-->);"><!--{$dispnum}--></a></li>
                        <!--{/if}-->
                    <!--{/foreach}-->
                    </ul>
                </div>
            </div>
            <div class="navi"><!--{$tpl_strnavi}--></div>
        </div>
    <!--{/capture}-->
    <!--▲ページナビ(本文)-->

    <!--{foreach from=$arrProducts item=arrProduct name=arrProducts}-->

        <!--{if $smarty.foreach.arrProducts.first}-->
            <!--▼件数-->
            <div>
                <span class="attention"><!--{$tpl_linemax}-->件</span>の商品がございます。
            </div>
            <!--▲件数-->

            <!--▼ページナビ(上部)-->
            <form name="page_navi_top" id="page_navi_top" action="?">
                <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
                <!--{if $tpl_linemax > 0}--><!--{$smarty.capture.page_navi_body|smarty:nodefaults}--><!--{/if}-->
            </form>
            <!--▲ページナビ(上部)-->
            <!--▼商品wrap-->
            <div id="product-list-wrap" class="row">
        <!--{/if}-->

        <!--{assign var=id value=$arrProduct.product_id}-->
        <!--{assign var=arrErr value=$arrProduct.arrErr}-->
        <!--▼商品-->
        <div class="list_area clearfix col-sm-4 col-md-3">
            <a name="product<!--{$id|h}-->"></a>
            <div class="listphoto col-xs-5 col-sm-12 pull-left">
                <!--★画像★-->
                <a href="<!--{$smarty.const.P_DETAIL_URLPATH}--><!--{$arrProduct.product_id|u}-->">
                    <img src="<!--{$smarty.const.IMAGE_SAVE_URLPATH}--><!--{$arrProduct.main_image|sfNoImageMainList|h}-->" alt="<!--{$arrProduct.name|h}-->" class="picture img-responsive img-rounded" width="180" /></a>
            </div>

            <div class="listrightbloc col-sm-12">
                <!--▼商品ステータス-->
                <!--{if count($productStatus[$id]) > 0}-->
                    <div class="status_icon text-size-sm">
                        <!--{foreach from=$productStatus[$id] item=status}-->
                        <span class="label
                            <!--{if $status == 1}-->
                            label-primary
                            <!--{elseif $status == 2}-->
                            label-success
                            <!--{elseif $status == 3}-->
                            label-warning
                            <!--{elseif $status == 4}-->
                            label-danger
                            <!--{elseif $status == 5}-->
                            label-info
                            <!--{else}-->
                            label-default
                            <!--{/if}-->"><!--{$arrSTATUS[$status]}--></span>
                        <!--{/foreach}-->
                    </div>
                <!--{/if}-->
                <!--▲商品ステータス-->

                <!--★商品名★-->
                <h3>
                    <a href="<!--{$smarty.const.P_DETAIL_URLPATH}--><!--{$arrProduct.product_id|u}-->"><!--{$arrProduct.name|h}--></a>
                </h3>
                <!--★価格★-->
                <div class="pricebox sale_price">
                    <!--{$smarty.const.SALE_PRICE_TITLE}-->(税込)：
                    <span class="price">
                        <span id="price02_default_<!--{$id}-->"><!--{strip}-->
                            <!--{if $arrProduct.price02_min_inctax == $arrProduct.price02_max_inctax}-->
                                <!--{$arrProduct.price02_min_inctax|number_format}-->
                            <!--{else}-->
                                <!--{$arrProduct.price02_min_inctax|number_format}-->～<!--{$arrProduct.price02_max_inctax|number_format}-->
                            <!--{/if}-->
                        </span><span id="price02_dynamic_<!--{$id}-->"></span><!--{/strip}-->
                        円</span>
                </div>

                <!--★コメント★-->
                <div class="listcomment"><!--{$arrProduct.main_list_comment|h|nl2br}--></div>

                <!--▼買い物かご-->
                <div class="cart_area clearfix">
                    <!--{if $tpl_stock_find[$id]}-->
                        詳細はこちら
                    <!--{else}-->
                        <div class="cartbtn attention">申し訳ございませんが、只今品切れ中です。</div>
                    <!--{/if}-->
                </div>
                <!--▲買い物かご-->
            </div>
        </div>
        <!--▲商品-->

        <!--{if $smarty.foreach.arrProducts.last}-->
            </div>
            <!--▲商品wrap-->
            <!--▼ページナビ(下部)-->
            <form name="page_navi_bottom" id="page_navi_bottom" action="?">
                <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
                <!--{if $tpl_linemax > 0}--><!--{$smarty.capture.page_navi_body|smarty:nodefaults}--><!--{/if}-->
            </form>
            <!--▲ページナビ(下部)-->
        <!--{/if}-->

    <!--{foreachelse}-->
        <!--{include file="frontparts/search_zero.tpl"}-->
    <!--{/foreach}-->

</div>
