<!--{*
 * This is template for EC-CUBE 2.13.5 Copyright(c) EC-CUBE CO.,LTD. All Rights Reserved.
 * This file created by Copyright(c) koh-taka.
 * https://github.com/koh-taka/eccube-on-bootstrap3-custom
 * It fork from and respect by http://perl.no-tubo.net/
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 *}-->

<script type="text/javascript">//<![CDATA[
    $(function(){
        $('#category_area li.level1:last').css('border-bottom', 'none');
    });
//]]></script>

<!--{strip}-->
    <div class="block_outer">
        <div id="category_area" class="panel panel-default">
            <div class="panel-heading">
                <h2 class="panel-title">
                    <span class="glyphicon glyphicon-list-alt"></span> 商品カテゴリ
                </h2>
            </div>
            <div class="block_body panel-body">
                <!--{include file="`$smarty.const.TEMPLATE_REALDIR`frontparts/bloc/category_tree_fork.tpl" children=$arrTree treeID="" display=1}-->
            </div>
        </div>
    </div>
<!--{/strip}-->
