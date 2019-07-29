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
    <!--{include file=$tpl_navi}-->
    <form name="form1" id="form1" method="post" action="?">
        <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
        <input type="hidden" name="refusal_transactionid" value="<!--{$refusal_transactionid}-->" />
        <input type="hidden" name="mode" value="complete" />

        <div id="mycontents_area">
            <h3><!--{$tpl_subtitle|h}--></h3>
            <div id="complete_area">
                <div class="message">退会手続きを実行してもよろしいでしょうか？</div>
                <div class="message_area">
                    <p class="alert alert-danger">
                        <span class="fa fa-warning"></span>
                        退会手続きが完了した時点で、現在保存されている購入履歴やお届け先等の情報は全てなくなりますのでご注意ください。
                    </p>
                    <div class="btn_area row">
                        <div class="col-sm-7 padding-right-none hidden-xs">
                            <a href="./refusal.php" class="btn btn-default btn-block">いいえ、退会しません</a>
                        </div>
                        <div class="col-sm-5">
                            <button name="send_button" name="refuse_do" id="refuse_do" class="btn btn-danger btn-block">はい、退会します</button>
                        </div>
                        <div class="col-xs-12 visible-xs margin-top-sm">
                            <a href="./refusal.php" class="btn btn-default btn-lg btn-block">いいえ、退会しません</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
