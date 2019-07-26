<!--{*
 * EC-CUBE on Bootstrap3. This file is part of EC-CUBE
 *
 * Copyright(c) 2014 clicktx. All Rights Reserved.
 *
 * http://perl.no-tubo.net/
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 *}-->

<div id="undercolumn">
    <h2 class="title"><!--{$tpl_title|h}--></h2>
    <div id="undercolumn_contact">
        <div id="complete_area">
            <p class="message alert alert-info margin-bottom-xl">お問い合わせ内容の送信が完了いたしました。</p>
            <div class="col-sm-12 margin-bottom-lg">
                <p>確認メールが届かない場合は、<a href="<!--{$smarty.const.HTTPS_URL}-->contact/<!--{$smarty.const.DIR_INDEX_PATH}-->">こちらからお問い合わせください。</a></p>
                <address class="shop_information">
                    <strong class="font-size-lg"><!--{$arrSiteInfo.company_name|h}--></strong><br />
                    TEL：<!--{$arrSiteInfo.tel01}-->-<!--{$arrSiteInfo.tel02}-->-<!--{$arrSiteInfo.tel03}-->
                    <!--{if $arrSiteInfo.business_hour != ""}-->
                    (受付時間/<!--{$arrSiteInfo.business_hour}-->)
                    <!--{/if}--><br />
                    E-mail：<a href="mailto:<!--{$arrSiteInfo.email02|escape:'hex'}-->"><!--{$arrSiteInfo.email02|escape:'hexentity'}--></a>
                </address>
            </div>

            <div class="btn_area row">
                <div class="col-sm-12 col-md-6">
                    <a href="<!--{$smarty.const.TOP_URL}-->" class="btn btn-default btn-block xs-btn-lg sm-btn-lg">トップページへ</a>
                </div>
            </div>
        </div>
    </div>
</div>
