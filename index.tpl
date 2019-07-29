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

<!--{strip}-->
<div id="main_image" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#main_image" data-slide-to="0" class="active"></li>
        <li data-target="#main_image" data-slide-to="1"></li>
    </ol>
    <div class="carousel-inner">
        <a href="<!--{$smarty.const.P_DETAIL_URLPATH}-->1" class="item active"><img class="hover_change_image img-responsive"
                src="<!--{$TPL_URLPATH}-->img/banner/bnr_test.jpg" alt="詳細はこちら" width="100%" /></a>
        <a href="<!--{$smarty.const.P_DETAIL_URLPATH}-->1" class="item"><img class="hover_change_image img-responsive"
                src="<!--{$TPL_URLPATH}-->img/banner/bnr_top_main.jpg" alt="詳細はこちら" width="100%" /></a>
        <a class="left carousel-control" href="#main_image" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        </a>
        <a class="right carousel-control" href="#main_image" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        </a>
    </div>
</div>
<!--{/strip}-->