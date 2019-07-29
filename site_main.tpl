<!--{*
 * This is template for EC-CUBE 2.13.5 Copyright(c) EC-CUBE CO.,LTD. All Rights Reserved.
 * This file created by Copyright(c) koh-taka.
 * https://github.com/koh-taka/eccube-on-bootstrap3-custom
 * It fork from and respect by http://perl.no-tubo.net/
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 *}-->

<!--{strip}-->
    <body class="<!--{$tpl_page_class_name|h}-->">
        <!--{$GLOBAL_ERR}-->
        <noscript>
            <p>JavaScript を有効にしてご利用下さい.</p>
        </noscript>

        <div class="frame_outer">
            <a name="top" id="top"></a>

            <!--{* ▼HeaderHeaderTop COLUMN*}-->
            <!--{if $arrPageLayout.HeaderTopNavi|@count > 0}-->
                <div id="headertopcolumn">
                    <!--{* ▼上ナビ *}-->
                    <!--{foreach key=HeaderTopNaviKey item=HeaderTopNaviItem from=$arrPageLayout.HeaderTopNavi}-->
                        <!-- ▼<!--{$HeaderTopNaviItem.bloc_name}--> -->
                        <!--{if $HeaderTopNaviItem.php_path != ""}-->
                            <!--{include_php file=$HeaderTopNaviItem.php_path items=$HeaderTopNaviItem}-->
                        <!--{else}-->
                            <!--{include file=$HeaderTopNaviItem.tpl_path items=$HeaderTopNaviItem}-->
                        <!--{/if}-->
                        <!-- ▲<!--{$HeaderTopNaviItem.bloc_name}--> -->
                    <!--{/foreach}-->
                    <!--{* ▲上ナビ *}-->
                </div>
            <!--{/if}-->
            <!--{* ▲HeaderHeaderTop COLUMN*}-->
            <!--{* ▼HEADER *}-->
            <!--{if $arrPageLayout.header_chk != 2}-->
                <!--{include file= $header_tpl}-->
            <!--{/if}-->
            <!--{* ▲HEADER *}-->

            <div id="container" class="container">
                    <!--{* ▼TOP COLUMN*}-->
                    <!--{if $arrPageLayout.TopNavi|@count > 0}-->
                        <div id="topcolumn">
                            <!--{* ▼上ナビ *}-->
                            <!--{foreach key=TopNaviKey item=TopNaviItem from=$arrPageLayout.TopNavi}-->
                                <!-- ▼<!--{$TopNaviItem.bloc_name}--> -->
                                <!--{if $TopNaviItem.php_path != ""}-->
                                    <!--{include_php file=$TopNaviItem.php_path items=$TopNaviItem}-->
                                <!--{else}-->
                                    <!--{include file=$TopNaviItem.tpl_path items=$TopNaviItem}-->
                                <!--{/if}-->
                                <!-- ▲<!--{$TopNaviItem.bloc_name}--> -->
                            <!--{/foreach}-->
                            <!--{* ▲上ナビ *}-->
                        </div>
                    <!--{/if}-->
                    <!--{* ▲TOP COLUMN*}-->

                <div class="row row-offcanvas row-offcanvas-left">
                    <!--{* ▼CENTER COLUMN *}-->
                    <div id="main_column" class="
                        <!--{if $tpl_column_num == 3}-->
                        col-sm-8 col-sm-push-4 col-md-6 col-md-push-3
                        <!--{elseif $tpl_column_num == 2}-->
                        col-sm-8 col-md-9
                            <!--{if $arrPageLayout.LeftNavi|@count == 0}-->
                            <!--{" "}-->col-sm-push-0 col-md-push-0 left
                            <!--{else}-->
                            <!--{" "}-->col-sm-push-4 col-md-push-3 right
                            <!--{/if}-->
                        <!--{else}-->
                        col-md-10 col-md-offset-1
                        <!--{/if}--> colnum<!--{$tpl_column_num|h}-->
                    ">
                        <!--{* ▼メイン上部 *}-->
                        <!--{if $arrPageLayout.MainHead|@count > 0}-->
                            <!--{foreach key=MainHeadKey item=MainHeadItem from=$arrPageLayout.MainHead}-->
                                <!-- ▼<!--{$MainHeadItem.bloc_name}--> -->
                                <!--{if $MainHeadItem.php_path != ""}-->
                                    <!--{include_php file=$MainHeadItem.php_path items=$MainHeadItem}-->
                                <!--{else}-->
                                    <!--{include file=$MainHeadItem.tpl_path items=$MainHeadItem}-->
                                <!--{/if}-->
                                <!-- ▲<!--{$MainHeadItem.bloc_name}--> -->
                            <!--{/foreach}-->
                        <!--{/if}-->
                        <!--{* ▲メイン上部 *}-->

                        <!-- ▼メイン -->
                        <!--{include file=$tpl_mainpage}-->
                        <!-- ▲メイン -->

                        <!--{* ▼メイン下部 *}-->
                        <!--{if $arrPageLayout.MainFoot|@count > 0}-->
                            <!--{foreach key=MainFootKey item=MainFootItem from=$arrPageLayout.MainFoot}-->
                                <!-- ▼<!--{$MainFootItem.bloc_name}--> -->
                                <!--{if $MainFootItem.php_path != ""}-->
                                    <!--{include_php file=$MainFootItem.php_path items=$MainFootItem}-->
                                <!--{else}-->
                                    <!--{include file=$MainFootItem.tpl_path items=$MainFootItem}-->
                                <!--{/if}-->
                                <!-- ▲<!--{$MainFootItem.bloc_name}--> -->
                            <!--{/foreach}-->
                        <!--{/if}-->
                        <!--{* ▲メイン下部 *}-->
                    </div>
                    <!--{* ▲CENTER COLUMN *}-->

                    <!--{* ▼LEFT COLUMN *}-->
                    <!--{if $arrPageLayout.LeftNavi|@count > 0}-->
                        <div id="leftcolumn" class="side_column sidebar-offcanvas
                            <!--{if $tpl_column_num == 3}-->
                                <!--{" "}-->col-xs-12 col-sm-4 col-sm-pull-8 col-md-3 col-md-pull-6
                            <!--{elseif $tpl_column_num == 2}-->
                                <!--{" "}-->col-xs-12 col-sm-4 col-sm-pull-8 col-md-3 col-md-pull-9
                            <!--{else}-->
                                <!--{" "}-->col-xs-12 col-sm-6 col-md-3
                            <!--{/if}-->
                        ">
                            <!--{* ▼左ナビ *}-->
                            <!--{foreach key=LeftNaviKey item=LeftNaviItem from=$arrPageLayout.LeftNavi}-->
                                <!-- ▼<!--{$LeftNaviItem.bloc_name}--> -->
                                <!--{if $LeftNaviItem.php_path != ""}-->
                                    <!--{include_php file=$LeftNaviItem.php_path items=$LeftNaviItem}-->
                                <!--{else}-->
                                    <!--{include file=$LeftNaviItem.tpl_path items=$LeftNaviItem}-->
                                <!--{/if}-->
                                <!-- ▲<!--{$LeftNaviItem.bloc_name}--> -->
                            <!--{/foreach}-->
                            <!--{* ▲左ナビ *}-->
                            <p class="visible-xs">
                                <button class="btn btn-default col-xs-4 toggle-offcanvas">
                                    <span class="glyphicon glyphicon-chevron-left"></span>
                                </button>
                            </p>
                        </div>
                    <!--{/if}-->
                    <!--{* ▲LEFT COLUMN *}-->

                    <!--{* ▼RIGHT COLUMN *}-->
                    <!--{if $arrPageLayout.RightNavi|@count > 0}-->
                        <div id="rightcolumn" class="side_column col-xs-12 col-sm-4 col-md-3
                            <!--{if $tpl_column_num == 3}-->
                                <!--{" "}-->col-sm-pull-8 col-md-pull-0
                            <!--{elseif $tpl_column_num == 2}-->
                                <!--{if $arrPageLayout.LeftNavi|@count == 0}-->
                                <!--{" "}-->col-sm-push-0
                                <!--{else}-->
                                <!--{" "}-->col-sm-pull-8 col-md-pull-0
                                <!--{/if}-->
                            <!--{/if}-->
                        ">
                            <!--{* ▼右ナビ *}-->
                            <!--{foreach key=RightNaviKey item=RightNaviItem from=$arrPageLayout.RightNavi}-->
                                <!-- ▼<!--{$RightNaviItem.bloc_name}--> -->
                                <!--{if $RightNaviItem.php_path != ""}-->
                                    <!--{include_php file=$RightNaviItem.php_path items=$RightNaviItem}-->
                                <!--{else}-->
                                    <!--{include file=$RightNaviItem.tpl_path items=$RightNaviItem}-->
                                <!--{/if}-->
                                <!-- ▲<!--{$RightNaviItem.bloc_name}--> -->
                            <!--{/foreach}-->
                            <!--{* ▲右ナビ *}-->
                        </div>
                    <!--{/if}-->
                    <!--{* ▲RIGHT COLUMN *}-->
                </div><!--offcanvas-->

                    <!--{* ▼BOTTOM COLUMN*}-->
                    <!--{if $arrPageLayout.BottomNavi|@count > 0}-->
                        <div id="bottomcolumn">
                            <!--{* ▼下ナビ *}-->
                            <!--{foreach key=BottomNaviKey item=BottomNaviItem from=$arrPageLayout.BottomNavi}-->
                                <!-- ▼<!--{$BottomNaviItem.bloc_name}--> -->
                                <!--{if $BottomNaviItem.php_path != ""}-->
                                    <!--{include_php file=$BottomNaviItem.php_path items=$BottomNaviItem}-->
                                <!--{else}-->
                                    <!--{include file=$BottomNaviItem.tpl_path items=$BottomNaviItem}-->
                                <!--{/if}-->
                                <!-- ▲<!--{$BottomNaviItem.bloc_name}--> -->
                            <!--{/foreach}-->
                            <!--{* ▲下ナビ *}-->
                        </div>
                    <!--{/if}-->
                    <!--{* ▲BOTTOM COLUMN*}-->
            </div><!--container-->

            <!--{* ▼FOOTER *}-->
            <!--{if $arrPageLayout.footer_chk != 2}-->
                <!--{include file=$footer_tpl}-->
            <!--{/if}-->
            <!--{* ▲FOOTER *}-->
            <!--{* ▼FooterBottom COLUMN*}-->
            <!--{if $arrPageLayout.FooterBottomNavi|@count > 0}-->
                <div id="footerbottomcolumn">
                    <!--{* ▼上ナビ *}-->
                    <!--{foreach key=FooterBottomNaviKey item=FooterBottomNaviItem from=$arrPageLayout.FooterBottomNavi}-->
                        <!-- ▼<!--{$FooterBottomNaviItem.bloc_name}--> -->
                        <!--{if $FooterBottomNaviItem.php_path != ""}-->
                            <!--{include_php file=$FooterBottomNaviItem.php_path items=$FooterBottomNaviItem}-->
                        <!--{else}-->
                            <!--{include file=$FooterBottomNaviItem.tpl_path items=$FooterBottomNaviItem}-->
                        <!--{/if}-->
                        <!-- ▲<!--{$FooterBottomNaviItem.bloc_name}--> -->
                    <!--{/foreach}-->
                    <!--{* ▲上ナビ *}-->
                </div>
            <!--{/if}-->
            <!--{* ▲FooterBottom COLUMN*}-->
        </div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap-honoka@3.3.7-a/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery-colorbox@1.6.4/jquery.colorbox-min.js"></script>
<!--{if $tpl_page_class_name === "LC_Page_Abouts"}-->
    <!--{if ($smarty.server.HTTPS != "") && ($smarty.server.HTTPS != "off")}-->
        <script type="text/javascript" src="https://maps-api-ssl.google.com/maps/api/js?sensor=false"></script>
    <!--{else}-->
        <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
    <!--{/if}-->
<!--{/if}-->
    </body>
<!--{/strip}-->
