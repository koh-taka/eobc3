<!--{*
 * This is template for EC-CUBE 2.13.5 Copyright(c) EC-CUBE CO.,LTD. All Rights Reserved.
 * This file created by Copyright(c) koh-taka.
 * https://github.com/koh-taka/eccube-on-bootstrap3-custom
 * It fork from and respect by http://perl.no-tubo.net/
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 *}-->

<div id="undercolumn">
    <div id="undercolumn_shopping">
        <p class="flow_area">
            <!--{include file="`$smarty.const.TEMPLATE_REALDIR`shopping/process/step4.tpl"}-->
        </p>
        <h2 class="title"><!--{$tpl_title|h}--></h2>

        <!-- ▼その他決済情報を表示する場合は表示 -->
        <!--{if $arrOther.title.value}-->
            <p class="alert alert-warning"><strong>■<!--{$arrOther.title.name}-->情報</strong><br />
                <!--{foreach key=key item=item from=$arrOther}-->
                    <!--{if $key != "title"}-->
                        <!--{if $item.name != ""}-->
                            <!--{$item.name}-->：
                        <!--{/if}-->
                            <!--{$item.value|nl2br}--><br />
                    <!--{/if}-->
                <!--{/foreach}-->
            </p>
        <!--{/if}-->
        <!-- ▲コンビに決済の場合には表示 -->

        <div id="complete_area">
            <p class="message"><!--{$arrInfo.shop_name|h}-->から商品をご購入いただき、誠にありがとうございました。</p>
            <p>ただいま、ご注文の確認メールをお送りいたしました。</p>
            <p>確認メールが届かない場合は、<a href="<!--{$smarty.const.HTTPS_URL}-->contact/<!--{$smarty.const.DIR_INDEX_PATH}-->">こちらからお問い合わせください。</a></p>

            <div class="shop_information">
                <p class="name"><strong class="font-size-lg"><!--{$arrInfo.shop_name|h}--></strong></p>
                <p>TEL：<!--{$arrInfo.tel01}-->-<!--{$arrInfo.tel02}-->-<!--{$arrInfo.tel03}--> <!--{if $arrInfo.business_hour != ""}-->（受付時間/<!--{$arrInfo.business_hour}-->）<!--{/if}--><br />
                E-mail：<a href="mailto:<!--{$arrInfo.email02|escape:'hex'}-->"><!--{$arrInfo.email02|escape:'hexentity'}--></a>
                </p>
            </div>
        </div>

        <div class="btn_area row">
            <div class="col-md-6 padding-right-none hidden-xs">
                <a href="<!--{$smarty.const.TOP_URL}-->" class="btn btn-default btn-block">トップページへ戻る</a>
            </div>
            <div class="col-xs-12 visible-xs margin-top-sm">
                <a href="<!--{$smarty.const.TOP_URL}-->" class="btn btn-default btn-sm btn-block">トップページへ戻る</a>
            </div>
        </div>

    </div>
</div>

<!--{*
 * 注文確認ページから来た注文情報（個人情報なし）を解凍してgoogle analyticsなどに与える
 *}-->
<!--{strip}-->
<script>
var load_order_cache_complete = (function() {
	if(!sessionStorage.gtag_purchase){return false;}
	gtp = JSON.parse( sessionStorage.gtag_purchase );
	
	<!--{* order_idが取得できるなら、transactionではなく、注文番号を入れる *}-->
	var oid = "<!--{$arrMyOrder.order_id|h}-->";
	if(oid != ""){ gtp.transaction_id = oid; }

    gtag('event', 'purchase', gtp);
    sessionStorage.removeItem("gtag_purchase");

    return oid;
}());
</script>
<!--{/strip}-->

<!--{*

order_idを取得したい場合、本体のカスタマイズが必要。

path:
data/class_extends/page_extends/shopping/LC_Page_Shopping_Complete_Ex.php

以下を LC_Page_Shopping_Complete_Ex 内に差し込む:

    /**
     * Page のアクション.
     *
     * @return void
     */
    public function action()
    {
    $this->arrInfo = SC_Helper_DB_Ex::sfGetBasisData();
    
        // 注文情報を取得
        $objPurchase = new SC_Helper_Purchase();
        $arrOrder = $objPurchase->getOrder($_SESSION['order_id']);
 
        // 必要な値を完了画面に引き渡す
        $this->arrMyOrder = array(
            'order_id'  => $arrOrder['order_id'], // 注文番号
            'price'     => $arrOrder['subtotal'] - $arrOrder['tax'], // 小計-消費税
        );
    }


 *}-->