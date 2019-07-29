<!--{*
 * This is template for EC-CUBE 2.13.5 Copyright(c) EC-CUBE CO.,LTD. All Rights Reserved.
 * This file created by Copyright(c) koh-taka.
 * https://github.com/koh-taka/eccube-on-bootstrap3-custom
 * It fork from and respect by http://perl.no-tubo.net/
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 *}-->

<!--{strip}-->
    <div class="block_outer">
        <div id="calender_area" class="panel panel-default">
            <div class="panel-heading">
                <h2 class="panel-title">
                    <span class="fa fa-calendar"></span> 営業カレンダー
                </h2>
            </div>
            <div class="block_body panel-body">
                <!--{section name=num loop=$arrCalendar}-->
                    <!--{assign var=arrCal value=`$arrCalendar[num]`}-->
                    <!--{section name=cnt loop=$arrCal}-->
                        <!--{if $smarty.section.cnt.first}-->
                            <table class="table table-condensed">
                                <caption class="month"><!--{$arrCal[cnt].year}-->年<!--{$arrCal[cnt].month}-->月の定休日</caption>
                                <thead><tr><th>日</th><th>月</th><th>火</th><th>水</th><th>木</th><th>金</th><th>土</th></tr></thead>
                        <!--{/if}-->
                        <!--{if $arrCal[cnt].first}-->
                            <tr>
                            <!--{/if}-->
                            <!--{if !$arrCal[cnt].in_month}-->
                                <td></td>
                            <!--{elseif $arrCal[cnt].holiday}-->
                                <td class="off<!--{if $arrCal[cnt].today}--> today<!--{/if}-->"><!--{$arrCal[cnt].day}--></td>
                            <!--{else}-->
                                <td<!--{if $arrCal[cnt].today}--> class="today info"<!--{/if}-->><!--{$arrCal[cnt].day}--></td>
                            <!--{/if}-->
                            <!--{if $arrCal[cnt].last}-->
                                </tr>
                        <!--{/if}-->
                    <!--{/section}-->
                    <!--{if $smarty.section.cnt.last}-->
                        </table>
                    <!--{/if}-->
                <!--{/section}-->
                <p class="information"><small class="red">※赤字は休業日です</small></p>
            </div>

        </div>
    </div>
<!--{/strip}-->
