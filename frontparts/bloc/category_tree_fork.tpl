<!--{*
 * This is template for EC-CUBE 2.13.5 Copyright(c) EC-CUBE CO.,LTD. All Rights Reserved.
 * This file created by Copyright(c) koh-taka.
 * https://github.com/koh-taka/eccube-on-bootstrap3-custom
 * It fork from and respect by http://perl.no-tubo.net/
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 *}-->

<!--{strip}-->
    <ul <!--{if $treeID != ""}-->id="<!--{$treeID}-->"<!--{/if}--> style="<!--{if !$display}-->display: none;<!--{/if}-->" class="nav nav-pills nav-stacked">
        <!--{foreach from=$children item=child}-->
            <li id="cat_list<!--{$child.category_id}-->" class="level<!--{$child.level}--><!--{if in_array($child.category_id, $tpl_category_id)}--> onmark active<!--{/if}-->">
                <a href="<!--{$smarty.const.ROOT_URLPATH}-->products/list.php?category_id=<!--{$child.category_id}-->"<!--{if in_array($child.category_id, $tpl_category_id)}--> class="onlink"<!--{/if}-->>
                    <!--{$child.category_name|h}--> <span class="badge"><!--{$child.product_count|default:0}--></span></a>
                <!--{if in_array($child.category_id, $arrParentID)}-->
                    <!--{assign var=disp_child value=1}-->
                <!--{else}-->
                    <!--{assign var=disp_child value=0}-->
                <!--{/if}-->
                <!--{if isset($child.children|smarty:nodefaults)}-->
                    <!--{include file="`$smarty.const.TEMPLATE_REALDIR`frontparts/bloc/category_tree_fork.tpl" children=$child.children display=$disp_child}-->
                <!--{/if}-->
            </li>
        <!--{/foreach}-->
    </ul>
<!--{/strip}-->
