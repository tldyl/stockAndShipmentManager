function setCookie(c_name,value,expiredays) {
    var exdate=new Date();
    exdate.setDate(exdate.getDate() + expiredays);
    document.cookie=c_name+ "=" + escape(value) + ((expiredays == null) ? "" : ";expires=" + exdate.toGMTString());
}
function getCookie(c_name) {
    if (document.cookie.length > 0) {
        c_start = document.cookie.indexOf(c_name + "=");
        if (c_start != -1) {
            c_start = c_start + c_name.length + 1;
            c_end = document.cookie.indexOf(";",c_start);
            if (c_end == -1) c_end = document.cookie.length;
            return unescape(document.cookie.substring(c_start,c_end));
        }
    }
    return "";
}
function removeCookie(c_name) {
    var exp = new Date();
    exp.setTime(exp.getTime() - 86400000);
    var cval = getCookie(c_name);
    document.cookie = c_name + "=" + cval + "; expires=" + exp.toGMTString();
}
$(document).ready(function(){
    jQuery.fn.shake = function (intShakes /*Amount of shakes*/, intDistance /*Shake distance*/, intDuration /*Time duration*/) {
        this.each(function () {
            var jqNode = $(this);
            jqNode.css({ position: 'relative' });
            for (var x = 1; x <= intShakes; x++) {
                jqNode.animate({ left: (intDistance * -1) }, (((intDuration / intShakes) / 4)))
                .animate({ left: intDistance }, ((intDuration / intShakes) / 2))
                .animate({ left: 0 }, (((intDuration / intShakes) / 4)));
            }
        });
        return this;
    }
     $("#btn").click(function(){
        $.ajax({
            url: 'authentication/form',
            dataType: "json",
            data: {
                username:$("#username").val(),
                password:$("#password").val()
            },
            type: "POST",
            success: function (response) {
                if(response.code === 0){
                    document.getElementsByClassName('tips')[0].style.opacity='0';
                    document.getElementsByClassName('tips')[1].style.opacity='0';
                    self.location='signIn?accessToken='+response.data;
                    setCookie("accessToken",response.data,1);
                }
                else if(response.code === 1){
                    document.getElementsByClassName('tips')[0].style.opacity='1';
                    document.getElementsByClassName('tips')[1].style.opacity='0';
                    $('.login-content').shake(2, 10, 400);
                }
                else if(response.code==2){
                    document.getElementsByClassName('tips')[0].style.opacity='0';
                    document.getElementsByClassName('tips')[1].style.opacity='1';
                    $('.login-content').shake(2, 10, 400);
                }
            }
        });
     });
    
});