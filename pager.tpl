<!--{*
 * This is template for EC-CUBE 2.13.5 Copyright(c) EC-CUBE CO.,LTD. All Rights Reserved.
 * This file created by Copyright(c) koh-taka.
 * https://github.com/koh-taka/eccube-on-bootstrap3-custom
 * It fork from and respect by http://perl.no-tubo.net/
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 *}-->
        <!--{* $max_pageが取得できないので作成 *}-->
        <!--{if $disp_number}-->
            <!--{assign var=page_max value=$disp_number}-->
            <!--{else}-->
            <!--{assign var=page_max value=$smarty.const.SEARCH_PMAX}-->
        <!--{/if}-->
        <!--{math equation=ceil(a/b) a=$tpl_linemax b=$page_max assign=max_page}-->

        <!--{if !$tpl_pageno}--><!--{assign var=tpl_pageno value=1}--><!--{/if}-->
        <!--{* class=disabledの条件 *}-->
        <!--{if $tpl_pageno ==1 or $max_page == 1}-->
            <!--{* prev disabled 最初のページ 最大数1ページ *}-->
            <!--{assign var=prev_disabled value=" disabled"}-->
        <!--{/if}-->
        <!--{if $tpl_pageno == $max_page or $max_page == 1}-->
            <!--{* next disabled 最後のページ 最大数1ページ *}-->
            <!--{assign var=next_disabled value=" disabled"}-->
        <!--{/if}-->

        <!--{* リンクするページ番号 *}-->
        <!--{assign var=prev_pageno value=$tpl_pageno}-->
        <!--{assign var=next_pageno value=$tpl_pageno}-->
        <!--{if $max_page > 1 and $tpl_pageno != $max_page}-->
            <!--{assign var=next_pageno value=$next_pageno+1}-->
        <!--{/if}-->
        <!--{if $max_page > 1 and $tpl_pageno != 1 }-->
            <!--{assign var=prev_pageno value=$prev_pageno-1}-->
        <!--{/if}-->

        <ul class="pager padding-top-lg visible-xs">
            <li class="previous<!--{$prev_disabled}-->"><a href="?category_id=<!--{$arrSearchData.category_id}-->&pageno=<!--{$prev_pageno}-->" onclick="eccube.movePage('<!--{$prev_pageno}-->'); return false;"><span class="fa fa-angle-double-left"> 前のページ</span></a></li>
            <li class="next<!--{$next_disabled}-->"><a href="?category_id=<!--{$arrSearchData.category_id}-->&pageno=<!--{$next_pageno}-->" onclick="eccube.movePage('<!--{$next_pageno}-->'); return false;">次のページ <span class="fa fa-angle-double-right"></span></a></li>
        </ul>
