<!--{*
 * This is template for EC-CUBE 2.13.5 Copyright(c) EC-CUBE CO.,LTD. All Rights Reserved.
 * This file created by Copyright(c) koh-taka.
 * https://github.com/koh-taka/eccube-on-bootstrap3-custom
 * It fork from and respect by http://perl.no-tubo.net/
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 *}-->

<!--▼HEADER-->
<!--{strip}-->
    <div id="header_wrap" class="navbar navbar-default navbar-static-top" role="navigation">
        <div id="header" class="container">
            <div class="navbar-header">
                <button class="navbar-toggle" data-toggle="collapse" data-target="#header_navi">
                    <span class="sr-only">navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<!--{$smarty.const.TOP_URL}-->"><!--{$arrSiteInfo.shop_name|h}--></a>
            </div>

            <div id="header_utility">
                <div id="header_navi" class="collapse navbar-collapse">
                    <div class="navbar-form navbar-left hidden-xs hidden-sm hidden-md">
                        <form role="search" name="search_form" id="header_search_form" method="get" action="<!--{$smarty.const.ROOT_URLPATH}-->
                            products/list.php">
                            <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
                            <input type="hidden" name="mode" value="search" />
                            <div class="input-group">
                              <input type="text" id="header-search" class="form-control" name="name" maxlength="50" value="<!--{$smarty.get.name|h}-->" placeholder="キーワードを入力">
                                <span class="input-group-btn">
                                    <button type="submit" class="btn btn-default hidden-xs hidden-sm">検索</button>
                                </span>
                            </div>
                        </form>
                    </div>
                    <ul class="nav navbar-nav navbar-right">       
                        <!--{if $smarty.session.customer}-->
                        <li class="mypage dropdown">
                             <a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                <!--{* 氏名を表示させる際は以下をコメントアウト *}-->
                                <!--{* ようこそ <!--{$smarty.session.customer.name01}--><!--{$smarty.session.customer.name02}--> 様 *}-->
                                ようこそ 会員様
                                <br />
                                <span class="font-size-md">
                                    <span class="glyphicon glyphicon-user"></span> MYページ<span class="caret"></span>
                                </span>
                            </a>
                            <ul class="dropdown-menu">
                                <a href="<!--{$smarty.const.HTTPS_URL}-->mypage/login.php">
                                <li class="dropdown-header">
                                    <span class="glyphicon glyphicon-user"></span> MYページ
                                </li>
                                </a>
                                <li>
                                    <a href="<!--{$smarty.const.HTTPS_URL}-->mypage/login.php"><span class="fa fa-clock-o"></span> 購入履歴</a>
                                </li>
                                <li>
                                    <a href="<!--{$smarty.const.HTTPS_URL}-->mypage/favorite.php"><span class="fa fa-star"></span> お気に入り</a>
                                </li>
                                <li class="dropdown-header">
                                    設定
                                </li>
                                <li>
                                    <a href="<!--{$smarty.const.HTTPS_URL}-->mypage/change.php"><span class="fa fa-wrench"></span> 会員登録内容変更</a>
                                </li>
                                <li>
                                    <a href="<!--{$smarty.const.HTTPS_URL}-->mypage/delivery.php"><span class="fa fa-truck"></span> お届け先追加・変更</a>
                                </li>
                                <li class="divider"></li>
                                <!--{* 氏名を表示させる際は以下をコメントアウト *}-->
                                <!--{* <li class="dropdown-header"><!--{$smarty.session.customer.name01}--><!--{$smarty.session.customer.name02}-->様ではありませんか？</li> *}-->
                                <li>
                                    <a href="<!--{$smarty.const.HTTPS_URL}-->frontparts/login_check.php?mode=logout"><span class="glyphicon glyphicon-log-out"></span> ログアウト</a>
                                </li>
                            </ul>
                        </li>
                        <!--{else}-->
                        <li>
                            <a class="btn btn-default" href="<!--{$smarty.const.HTTPS_URL}-->mypage/login.php">
                                会員様はこちらから<br>
                                <span class="font-size-md">
                                    <span class="glyphicon glyphicon-log-in"></span> MYページにログイン<span class="caret"></span>
                                </span>
                            </a>
                        </li>
                        <!--{/if}-->

                        <li class="hidden-xs">
                            <a href="<!--{$smarty.const.CART_URL}-->">
                                <br />
                                <span class="font-size-md">
                                    <span class="glyphicon glyphicon-shopping-cart"></span> カート<span class="badge bg-red" data-role="cart-total-quantity"></span>
                                </span>
                            </a>
                        </li>
                        <li class="visible-xs"><a href="<!--{$smarty.const.ROOT_URLPATH}-->abouts/<!--{$smarty.const.DIR_INDEX_PATH}-->">当サイトについて</a></li>
                        <li class="visible-xs"><a href="<!--{$smarty.const.HTTPS_URL}-->contact/<!--{$smarty.const.DIR_INDEX_PATH}-->">お問い合わせ</a></li>
                        <li class="visible-xs"><a href="<!--{$smarty.const.ROOT_URLPATH}-->order/<!--{$smarty.const.DIR_INDEX_PATH}-->">特定商取引法に基づく表示</a></li>
                        <li class="visible-xs"><a href="<!--{$smarty.const.ROOT_URLPATH}-->guide/privacy.php">プライバシーポリシー</a></li>
                    </ul>
                </div>
                <div id="headerInternalColumn">
                <!--{* ▼HeaderInternal COLUMN *}-->
                <!--{if $arrPageLayout.HeaderInternalNavi|@count > 0}-->
                    <!--{* ▼上ナビ *}-->
                    <!--{foreach key=HeaderInternalNaviKey item=HeaderInternalNaviItem from=$arrPageLayout.HeaderInternalNavi}-->
                        <!-- ▼<!--{$HeaderInternalNaviItem.bloc_name}--> -->
                        <!--{if $HeaderInternalNaviItem.php_path != ""}-->
                            <!--{include_php file=$HeaderInternalNaviItem.php_path items=$HeaderInternalNaviItem}-->
                        <!--{else}-->
                            <!--{include file=$HeaderInternalNaviItem.tpl_path items=$HeaderInternalNaviItem}-->
                        <!--{/if}-->
                        <!-- ▲<!--{$HeaderInternalNaviItem.bloc_name}--> -->
                    <!--{/foreach}-->
                    <!--{* ▲上ナビ *}-->
                <!--{/if}-->
                <!--{* ▲HeaderInternal COLUMN *}-->
                </div>
            </div>
        </div>
    </div>

    <!-- for small mobile -->
    <section id="mobile-nav" class="hidden-lg">
        <div class="container margin-bottom-lg">
            <form name="search_form" method="get" action="<!--{$smarty.const.ROOT_URLPATH}-->products/list.php">
                <div class="input-group">
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-search"></span>
                    </span>
                    <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
                    <input type="hidden" name="mode" value="search" />
                    <input type="text" class="form-control" name="name" value="<!--{$smarty.get.name|h}-->" placeholder="キーワードを入力" />
                </div>
            </form>
        </div>
        <nav class="navbar navbar-default hidden-md hidden-sm" role="navigation">
          <div class="container text-center">
            <ul class="nav navbar-nav">
                <li class="col-xs-3">
                    <a href="#" class="btn btn-link toggle-offcanvas">
                        <span class="glyphicon glyphicon-list-alt fa-2x"></span><br />
                        <small>カテゴリ</small>
                    </a>
                </li>
                <li class="col-xs-3">
                    <a href="<!--{$smarty.const.HTTPS_URL}-->mypage/login.php" class="btn btn-link">
                        <span class="glyphicon glyphicon-user fa-2x"></span><br />
                        <small>MYページ</small>
                    </a>
                </li>
                <li class="col-xs-3">
                    <a href="<!--{$smarty.const.HTTPS_URL}-->mypage/favorite.php" class="btn btn-link">
                        <span class="glyphicon glyphicon-star-empty fa-2x"></span><br />
                        <small>お気に入り</small>
                    </a>
                </li>
                <li class="col-xs-3">
                    <a href="<!--{$smarty.const.CART_URL}-->" class="btn btn-link">
                        <span class="glyphicon glyphicon-shopping-cart fa-flip-horizontal fa-2x"></span><br />
                        <small>カート</small>
                        <span class="cart-total-quantity badge bg-red" data-role="cart-total-quantity"></span>
                    </a>
                </li>
            </ul>
          </div>
        </nav>
    </section>
    <!-- for small mobile -->
<!--{/strip}-->
<!--▲HEADER-->
