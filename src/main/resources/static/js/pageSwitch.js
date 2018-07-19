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
$(document).ready(function () {
    let pages = [];
    for (var i=0;i<15;i++) {
        pages[i] = [];
        for (var j=0;j<20;j++) {
            pages[i][j] = "";
        }
    }
    pages[1][0] = "/dataCentre";
    pages[1][1] = "/stockManage";

    $(".pages").on("click",function () {
        window.location = pages[$(this).parent().parent().index()][$(this).parent().index()] + "?accessToken=" + getCookie("accessToken");
    });
});
