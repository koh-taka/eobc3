<!--{*
 * This is template for EC-CUBE 2.13.5 Copyright(c) EC-CUBE CO.,LTD. All Rights Reserved.
 * This file created by Copyright(c) koh-taka.
 * https://github.com/koh-taka/eccube-on-bootstrap3-custom
 * It fork from and respect by http://perl.no-tubo.net/
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 *}-->

<!--{if $arrCartList.0.TotalQuantity}-->
    <script>
        $(function(){
            var quantity = <!--{$arrCartList.0.TotalQuantity}--> < 100
            ? <!--{$arrCartList.0.TotalQuantity|number_format|default:0}-->
            : '99+';
            $('[data-role="cart-total-quantity"]').text(quantity);
        });
    </script>
<!--{/if}-->
<!--{strip}-->
    <div class="block_outer hidden-xs">
        <div id="cart_area" class="panel panel-default">
            <div class="panel-heading">
                <h2 class="panel-title">
                    <span class="glyphicon glyphicon-shopping-cart"></span> 現在のカートの中
                </h2>
            </div>
            <div class="block_body panel-body">
                <div class="information">
                    <p class="item">合計数量：<span class="attention"><!--{$arrCartList.0.TotalQuantity|number_format|default:0}--></span></p>
                    <p class="total">商品金額：<span class="price"><!--{$arrCartList.0.ProductsTotal|number_format|default:0}-->円</span></p>
                    <!--{*************************************
                         * カートの中に商品がある場合にのみ表示
                         * 複数の商品種別が存在する場合は非表示
                         *************************************}-->
                    <!--{if $arrCartList.0.TotalQuantity > 0 and $arrCartList.0.free_rule > 0 and !$isMultiple and !$hasDownload}-->
                    <p class="postage">
                        <!--{if $arrCartList.0.deliv_free > 0}-->
                            <span class="fa-stack">
                              <i class="fa fa-circle fa-stack-2x orange"></i>
                              <i class="fa fa-jpy fa-stack-1x fa-inverse"></i>
                            </span>
                            <span class="point_announce"> 送料手数料無料まで</span>あと<span class="price"><!--{$arrCartList.0.deliv_free|number_format|default:0}-->円（税込）</span>です。
                        <!--{else}-->
                            現在、送料は「<span class="price">無料</span>」です。
                        <!--{/if}-->
                    </p>
                    <!--{/if}-->
                </div>
                <a href="<!--{$smarty.const.CART_URL}-->" class="btn btn-block btn-warning">カートの中を見る</a>
            </div>
        </div>
    </div>
<!--{/strip}-->
