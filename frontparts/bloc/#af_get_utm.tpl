<!--{*
 * google analytics特有のURLクエリ・utmを保存する
 *}-->
<!--{strip}-->
<script>
function search_query(qid){
	var _param = location.search.substring(1).split("&");
	for (var i = 0; _param[i]; i++) {
	    var kv = _param[i].split("=");
	    if (kv[0] == qid && kv[1].length > 0) {
	        return kv[1];
	    }
	}
	return false;
}
var ga_get_utm = (function () {
    var utms = search_query("utm_source");
    if(!utms){ return false; }
    return sessionStorage.utm = utms + "--" +search_query("utm_medium") + "--" + search_query("utm_campaign");
}());
</script>
<!--{/strip}-->