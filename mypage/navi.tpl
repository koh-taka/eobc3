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

<div id="mynavi_area">
    <!--{strip}-->
        <div class="mynavi_list btn-group btn-group-justified margin-bottom-lg">
          <a href="<!--{if $tpl_login}-->./<!--{$smarty.const.DIR_INDEX_PATH}--><!--{else}--><!--{$smarty.const.TOP_URL}--><!--{/if}-->" class="btn btn-default<!--{if $tpl_mypageno == 'index'}--> active<!--{/if}-->" role="button">購入履歴</a>
          <a href="<!--{if $tpl_login}-->favorite.php<!--{else}--><!--{$smarty.const.TOP_URL}--><!--{/if}-->" class="btn btn-default<!--{if $tpl_mypageno == 'favorite'}--> active<!--{/if}-->" role="button">お気に入り</a>
          <div class="btn-group">
            <a href="#" class="btn btn-default dropdown-toggle<!--{if $tpl_mypageno == 'change' or $tpl_mypageno == 'delivery' or $tpl_mypageno == 'refusal'}--> active<!--{/if}-->" data-toggle="dropdown">
              <span class="fa fa-cog"></span> 設定 <span class="caret"></span>
            </a>
            <ul class="dropdown-menu dropdown-menu-right" role="menu">
              <li><a href="<!--{if $tpl_login}-->change.php<!--{else}--><!--{$smarty.const.TOP_URL}--><!--{/if}-->"><span class="fa fa-wrench"></span> 会員登録内容変更</a></li>
              <li><a href="<!--{if $tpl_login}-->delivery.php<!--{else}--><!--{$smarty.const.TOP_URL}--><!--{/if}-->"><span class="fa fa-truck"></span> お届け先追加・変更</a></li>
              <li class="divider"></li>
              <li><a href="<!--{if $tpl_login}-->refusal.php<!--{else}--><!--{$smarty.const.TOP_URL}--><!--{/if}-->"><span class="fa fa-ban"></span> 退会手続き</a></li>
            </ul>
          </div>
        </div>

        <!--▼現在のポイント-->
        <!--{if $point_disp !== false}-->
            <div class="point_announce alert alert-warning">
                <p>ようこそ&nbsp;／&nbsp;
                    <span class="user_name"><!--{$CustomerName1|h}--> <!--{$CustomerName2|h}-->様</span>
                    <!--{if $smarty.const.USE_POINT !== false}-->&nbsp;
                        現在の所持ポイントは&nbsp;<span class="point st"><!--{$CustomerPoint|number_format|default:"0"|h}-->pt</span>&nbsp;です。
                    <!--{/if}-->
                </p>
            </div>
        <!--{/if}-->
        <!--▲現在のポイント-->
    <!--{/strip}-->

</div>
<!--▲NAVI-->
