<!--{*
 * This is template for EC-CUBE 2.13.5 Copyright(c) EC-CUBE CO.,LTD. All Rights Reserved.
 * This file created by Copyright(c) koh-taka.
 * https://github.com/koh-taka/eccube-on-bootstrap3-custom
 * It fork from and respect by http://perl.no-tubo.net/
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 *}-->
<!--{$tpl_header}-->
　※本メールは自動配信メールです。
　等幅フォント(MSゴシック12ポイント、Osaka-等幅など)で
　最適にご覧になれます。

┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
　※本メールは、
　<!--{$tpl_shopname}-->より、お問い合わせをされた方に
　お送りしています。
　もしお心当たりが無い場合は、このままこのメールを破棄して
　ください。
　またその旨、 <!--{$tpl_infoemail}--> まで
　ご連絡いただければ幸いです。
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

<!--{$arrForm.name01.value}-->様

以下のお問い合わせを受付致しました。
確認次第ご連絡いたしますので、少々お待ちください。

■お名前　：<!--{$arrForm.name01.value}--> <!--{$arrForm.name02.value}--> (<!--{$arrForm.kana01.value}--> <!--{$arrForm.kana02.value}-->) 様
■郵便番号：<!--{if $arrForm.zip01.value && $arrForm.zip02.value}-->〒<!--{$arrForm.zip01.value}-->-<!--{$arrForm.zip02.value}--><!--{/if}-->

■住所　　：<!--{$arrPref[$arrForm.pref.value]}--><!--{$arrForm.addr01.value}--><!--{$arrForm.addr02.value}-->
■電話番号：<!--{$arrForm.tel01.value}-->-<!--{$arrForm.tel02.value}-->-<!--{$arrForm.tel03.value}-->
■メールアドレス：<!--{$arrForm.email.value}-->
■お問い合わせの内容
<!--{$arrForm.contents.value}-->
<!--{$tpl_footer}-->
