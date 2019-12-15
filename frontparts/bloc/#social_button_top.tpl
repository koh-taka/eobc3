<div id="social_button_top" class="social_button">
  <a target="_blank" 
    href="http://twitter.com/share?url=https://<!--{$smarty.server.SERVER_NAME}--><!--{$smarty.server.REQUEST_URI}-->&via=<!--{$account_twitter|h}-->&related=<!--{$account_twitter|h}-->&text=<!--{$arrProduct.name|h}-->" 
    class="btn btn-default social-twitter"><i class="fab fa-twitter"></i></a>
  <a target="_blank" href="http://www.facebook.com/share.php?u=https://<!--{$smarty.server.SERVER_NAME}--><!--{$smarty.server.REQUEST_URI}-->" class="btn btn-default social-facebook"><i class="fab fa-facebook"></i></a>
  <a target="_blank" href="http://line.me/R/msg/text/?https://<!--{$smarty.server.SERVER_NAME}--><!--{$smarty.server.REQUEST_URI}-->" class="btn btn-default social-line"><i class="fab fa-line"></i></a>
</div>
<style>
.social_button{
  text-align: right;
}
.social_button a{
  background-color: #ffe;
  border: solid 1px #ccc;
  padding: 0.1em 0.4em;
  font-size: 120%;
}
.social_button .social-twitter{
  color:#2196f3;
}
.social_button .social-facebook{
  color:navy;
}
.social_button .social-line{
  color:#23ea00;
}
.social_button .social-instagram{
  color:#f714ff;
}
</style>
