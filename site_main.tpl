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
        </div>


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/photoswipe/4.1.3/photoswipe.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/photoswipe/4.1.3/default-skin/default-skin.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/photoswipe/4.1.3/photoswipe.min.js" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/photoswipe/4.1.3/photoswipe-ui-default.min.js"></script>

<script type="text/javascript" src="<!--{$TPL_URLPATH}-->js/photoSwipeConf.min.js"></script>

    <!-- Root element of PhotoSwipe. Must have class pswp. -->
    <div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="pswp__bg"></div>
        <div class="pswp__scroll-wrap">
            <div class="pswp__container">
                <div class="pswp__item"></div>
                <div class="pswp__item"></div>
                <div class="pswp__item"></div>
            </div>
            <div class="pswp__ui pswp__ui--hidden">
                <div class="pswp__top-bar">
                    <div class="pswp__counter"></div>
                    <button class="pswp__button pswp__button--close" title="Close (Esc)"></button>
                    <button class="pswp__button pswp__button--share" title="Share"></button>
                    <button class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button>
                    <button class="pswp__button pswp__button--zoom" title="Zoom in/out"></button>
                    <div class="pswp__preloader">
                        <div class="pswp__preloader__icn">
                        <div class="pswp__preloader__cut">
                            <div class="pswp__preloader__donut"></div>
                        </div>
                        </div>
                    </div>
                </div>
                <div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
                    <div class="pswp__share-tooltip"></div> 
                </div>
                <button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)">
                </button>
                <button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)">
                </button>
                <div class="pswp__caption">
                    <div class="pswp__caption__center"></div>
                </div>
            </div>
        </div>
    </div>

    </body>
<!--{/strip}-->
