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
            <!--{include file="`$smarty.const.TEMPLATE_REALDIR`shopping/process/step1.tpl"}-->
        </p>
        <h2 class="title"><!--{$tpl_title|h}--></h2>

        <div id="address_area" class="clearfix">
            <div class="information margin-bottom-xl">
                <p>下記一覧よりお届け先住所を選択して下さい。</p>
                <!--{if $tpl_addrmax < $smarty.const.DELIV_ADDR_MAX}-->
                    <p>一覧にご希望の住所が無い場合は、新しいお届け先を追加登録してください。</p>
                    <p class="mini attention">※最大<!--{$smarty.const.DELIV_ADDR_MAX|h}-->件まで登録できます。</p>
                <!--{/if}-->
            </div>
            <!--{if $smarty.const.USE_MULTIPLE_SHIPPING !== false}-->
                <div class="add_multiple list-group">
                    <a href="javascript:;" onclick="eccube.setModeAndSubmit('multiple', '', ''); return false" class="list-group-item padding-top-lg padding-bottom-lg">
                        <strong>
                            <span class="hidden-xs">この商品を</span>複数のお届け先に送りますか？
                            <span class="fa fa-angle-right pull-right"></span>
                        </strong>
                    </a>
                </div>
            <!--{/if}-->
        </div>

        <form name="form1" id="form1" method="post" action="?">
            <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
            <input type="hidden" name="mode" value="customer_addr" />
            <input type="hidden" name="uniqid" value="<!--{$tpl_uniqid}-->" />
            <input type="hidden" name="other_deliv_id" value="" />
            <!--{if $arrErr.deli != ""}-->
                <p class="attention"><!--{$arrErr.deli}--></p>
            <!--{/if}-->

            <div class="list-group">
                <!--{section name=cnt loop=$arrAddr}-->
                    <div class="list-group-item padding-none">
                        <h4 class="deliv-heading list-group-item-heading">
                            <!--{if $smarty.section.cnt.first}-->
                                <input type="radio" name="deliv_check" id="chk_id_<!--{$smarty.section.cnt.iteration}-->" value="-1" <!--{if $arrForm.deliv_check.value == "" || $arrForm.deliv_check.value == -1}--> checked="checked"<!--{/if}--> />
                            <!--{else}-->
                                <input type="radio" name="deliv_check" id="chk_id_<!--{$smarty.section.cnt.iteration}-->" value="<!--{$arrAddr[cnt].other_deliv_id}-->"<!--{if $arrForm.deliv_check.value == $arrAddr[cnt].other_deliv_id}--> checked="checked"<!--{/if}--> />
                            <!--{/if}-->
                            <label for="chk_id_<!--{$smarty.section.cnt.iteration}-->">
                                <!--{if $smarty.section.cnt.first}-->
                                    会員登録住所
                                <!--{else}-->
                                    追加登録住所
                                <!--{/if}-->
                            </label>

                            <div class="pull-right">
                                <!--{if !$smarty.section.cnt.first}-->
                                    <a class="btn btn-default btn-xs" href="<!--{$smarty.const.ROOT_URLPATH}-->mypage/delivery_addr.php" onclick="eccube.openWindow('<!--{$smarty.const.ROOT_URLPATH}-->mypage/delivery_addr.php?page=<!--{$smarty.server.SCRIPT_NAME|h}-->&amp;other_deliv_id=<!--{$arrAddr[cnt].other_deliv_id}-->','new_deiv','600','640'); return false;">変更</a>
                                <!--{/if}-->

                                <!--{if !$smarty.section.cnt.first}-->
                                    <a class="btn btn-link btn-delete padding-right-none" href="?" onclick="eccube.setModeAndSubmit('delete', 'other_deliv_id', '<!--{$arrAddr[cnt].other_deliv_id}-->'); return false">
                                        <span class="fa fa-times-circle fa-lg"></span>
                                        <span class="hidden-xs"> 削除</span>
                                    </a>
                                <!--{/if}-->
                            </div>
                        </h4>

                        <div class="list-group-item-text padding-md">
                            <!--{assign var=key1 value=$arrAddr[cnt].pref}-->
                            <!--{assign var=key2 value=$arrAddr[cnt].country_id}-->
                            <!--{if $smarty.const.FORM_COUNTRY_ENABLE}-->
                            <!--{$arrCountry[$key2]|h}--><br/>
                            <!--{/if}-->
                            <!--{$arrPref[$key1]|h}--><!--{$arrAddr[cnt].addr01|h}--><!--{$arrAddr[cnt].addr02|h}--><br />
                            <!--{$arrAddr[cnt].company_name|h}--> <!--{$arrAddr[cnt].name01|h}--> <!--{$arrAddr[cnt].name02|h}-->
                        </div>
                    </div>
                <!--{/section}-->
                <!--{if $tpl_addrmax < $smarty.const.DELIV_ADDR_MAX}-->
                <div class="list-group-item">
                    <div class="row">
                        <div class="col-xs-10 col-xs-offset-1 col-md-4 col-md-offset-0">
                            <a class="btn btn-default btn-block btn-sm" href="<!--{$smarty.const.ROOT_URLPATH}-->mypage/delivery_addr.php" onclick="eccube.openWindow('<!--{$smarty.const.ROOT_URLPATH}-->mypage/delivery_addr.php?page=<!--{$smarty.server.SCRIPT_NAME|h}-->','new_deiv','600','640'); return false;">
                                新しいお届け先を追加する
                            </a>
                        </div>
                    </div>
                </div>
                <!--{/if}-->
            </div>

            <div class="btn_area row">
                <div class="col-sm-3 padding-right-none hidden-xs">
                    <a href="<!--{$smarty.const.CART_URL}-->" class="btn btn-default btn-block">戻る</a>
                </div>
                <div class="col-sm-6">
                    <button name="send_button" id="send_button" class="btn btn-primary btn-block xs-btn-lg sm-btn-lg">選択したお届け先に送る</button>
                </div>
                <div class="col-xs-12 visible-xs margin-top-sm">
                    <a href="<!--{$smarty.const.CART_URL}-->" class="btn btn-default btn-sm btn-block">戻る</a>
                </div>
            </div>

        </form>
    </div>
</div>
