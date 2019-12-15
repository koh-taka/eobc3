/*jQuery input clear button*/
$(function(){
    $(document).on('click', '.toggle-offcanvas', function(){
        $('.row-offcanvas').toggleClass('active');
        return false;
    });

    $("#main_column, #rightcolumn").on("touchstart", TouchStart);
    $("#main_column, #rightcolumn").on("touchmove" , TouchMove);

    function Position(e){
        var x = e.originalEvent.touches[0].pageX;
        var y = e.originalEvent.touches[0].pageY;
        x = Math.floor(x);
        y = Math.floor(y);
        var pos = {'x':x , 'y':y};
        return pos;
    }
    function TouchStart( event ) {
        var pos = Position(event);
        $("#main_column").data("memory",pos.x);
    }
    function TouchMove( event ) {
        var pos = Position(event);
        var start = $("#main_column").data("memory");
        var range = start - pos.x;
        if( range > 50){
            $('.row-offcanvas').removeClass('active'); // 左に移動
        } else if (start < 30 && range < -10){
            $('.row-offcanvas').addClass('active'); // 右に移動
        }
    }

    var pageTop = function(){
        $((navigator.userAgent.indexOf("Opera") != -1) ? document.compatMode == 'BackCompat' ? 'body' : 'html' :'html,body').animate({scrollTop:0}, 'slow');
        return false;
    };
    var pageBottom = function(){
        $((navigator.userAgent.indexOf("Opera") != -1) ? document.compatMode == 'BackCompat' ? 'body' : 'html' :'html,body').animate({scrollTop: $(document).height()-$(window).height()}, 'slow');
        return false;
    };
    $("a[href^=#top]").click(pageTop);
});