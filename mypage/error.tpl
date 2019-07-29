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
<!--{include file="`$smarty.const.TEMPLATE_REALDIR`popup_header.tpl" subtitle="エラー"}-->

<div id="compbox" class="alert alert-danger margin-top-xl">
    <span class="fa fa-warning"></span>
    <span class="red"><!--{$tpl_error}--></span><br />
</div>

<div class="button">
    <a href="javascript:window.close()" class="btn btn-default">
      閉じる
    </a>
</div>

<!--{include file="`$smarty.const.TEMPLATE_REALDIR`popup_footer.tpl"}-->
