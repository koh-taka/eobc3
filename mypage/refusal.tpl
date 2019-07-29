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
    <div id="mycontents_area">
        <h3><!--{$tpl_subtitle|h}--></h3>
        <form name="form1" id="form1" method="post" action="?">
            <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
            <input type="hidden" name="mode" value="confirm" />
            <div id="complete_area">
                <div class="message">
                    退会処理を行います。
                </div>
                <div class="message_area">
                    <p class="alert alert-danger">
                        <span class="fa fa-warning"></span>
                        会員を退会された場合には、現在保存されている購入履歴や、
                        お届け先などの情報は、全て削除されます。
                    </p>

                    <div class="btn_area row">
                        <div class="col-sm-12 col-md-4">
                            <button name="refusal" id="refusal" class="btn btn-danger btn-block">会員退会手続きへ</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
