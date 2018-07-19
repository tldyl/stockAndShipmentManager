$(document).ready(function(){
    //定义画布宽高和生成点的个数
    var WIDTH = window.innerWidth, HEIGHT = window.innerHeight, POINT = 35;
    
    var canvas = document.getElementById('Mycanvas');
    canvas.width = WIDTH,
    canvas.height = HEIGHT;
    var context = canvas.getContext('2d');
    context.strokeStyle = 'rgba(0,0,0,0.2)',
    context.strokeWidth = 1,
    context.fillStyle = '#bacad9';
    var circleArr = [];

    //线条：开始xy坐标，结束xy坐标，线条透明度
    function Line (x, y, _x, _y, o) {
        this.beginX = x,
        this.beginY = y,
        this.closeX = _x,
        this.closeY = _y,
        this.o = o;
    }
    //点：圆心xy坐标，半径，每帧移动xy的距离
    function Circle (x, y, r, moveX, moveY) {
        this.x = x,
        this.y = y,
        this.r = r,
        this.moveX = moveX,
        this.moveY = moveY;
    }
    //生成max和min之间的随机数
    function num (max, _min) {
        var min = arguments[1] || 0;
        return Math.floor(Math.random()*(max-min+1)+min);
    }
    // 绘制原点
    function drawCricle (cxt, x, y, r, moveX, moveY) {
        var circle = new Circle(x, y, r, moveX, moveY)
        cxt.beginPath()
        cxt.arc(circle.x, circle.y, circle.r, 0, 2*Math.PI)
        cxt.closePath()
        cxt.fill();
        return circle;
    }
    //绘制线条
    function drawLine (cxt, x, y, _x, _y, o) {
        var line = new Line(x, y, _x, _y, o)
        cxt.beginPath()
        cxt.strokeStyle = 'rgba(0,0,0,'+ o +')'
        cxt.moveTo(line.beginX, line.beginY)
        cxt.lineTo(line.closeX, line.closeY)
        cxt.closePath()
        cxt.stroke();

    }
    //初始化生成原点
    function init () {
        circleArr = [];
        for (var i = 0; i < POINT; i++) {
            circleArr.push(drawCricle(context, num(WIDTH), num(HEIGHT), num(15, 2), num(10, -10)/40, num(10, -10)/40));
        }
        draw();
    }

    //每帧绘制
    function draw () {
        context.clearRect(0,0,canvas.width, canvas.height);
        for (var i = 0; i < POINT; i++) {
            drawCricle(context, circleArr[i].x, circleArr[i].y, circleArr[i].r);
        }
        for (var i = 0; i < POINT; i++) {
            for (var j = 0; j < POINT; j++) {
                if (i + j < POINT) {
                    var A = Math.abs(circleArr[i+j].x - circleArr[i].x),
                        B = Math.abs(circleArr[i+j].y - circleArr[i].y);
                    var lineLength = Math.sqrt(A*A + B*B);
                    var C = 1/lineLength*7-0.009;
                    var lineOpacity = C > 0.03 ? 0.03 : C;
                    if (lineOpacity > 0) {
                        drawLine(context, circleArr[i].x, circleArr[i].y, circleArr[i+j].x, circleArr[i+j].y, lineOpacity);
                    }
                }
            }
        }
    }

    //调用执行
    window.onload = function () {
        init();
        setInterval(function () {
            for (var i = 0; i < POINT; i++) {
                var cir = circleArr[i];
                cir.x += cir.moveX;
                cir.y += cir.moveY;
                if (cir.x > WIDTH) cir.x = 0;
                else if (cir.x < 0) cir.x = WIDTH;
                if (cir.y > HEIGHT) cir.y = 0;
                else if (cir.y < 0) cir.y = HEIGHT;
                
            }
            draw();
        }, 16);
    }

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
        pages[0] = "/signIn";
        pages[1] = "/departmentManagement";
        $(".pages").on("click",function () {
            window.location = pages[$(this).parent().index()] + "?accessToken=" + getCookie("accessToken");
        });
    });
    
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
        if($("#username").val()=='') {
            document.getElementsByClassName('tips')[0].style.opacity='1';
            document.getElementsByClassName('tips')[1].style.opacity='0';
            $('.login-content').shake(2, 10, 400);
        } 
        if(($("#password").val()=='')) {
            document.getElementsByClassName('tips')[0].style.opacity='0';
            document.getElementsByClassName('tips')[1].style.opacity='1';
            $('.login-content').shake(2, 10, 400);
        } 
        if($("#username").val()!='') {
            document.getElementsByClassName('tips')[0].style.opacity='0';
        }
        if(($("#password").val()!='')) {
            document.getElementsByClassName('tips')[1].style.opacity='0';
        }
        if ($("#username").val()=='' && ($("#password").val()=='')){
            document.getElementsByClassName('tips')[0].style.opacity='1';
            document.getElementsByClassName('tips')[1].style.opacity='1';
        }
        $.ajax({
            url: 'authentication/form',
            dataType: "json",
            data: {username:$("#username").val(),password:$("#password").val()},
            type: "POST",
            success: function (response) {
                if(response.code===0){
                    document.getElementsByClassName('tips')[0].style.opacity='0';
                    document.getElementsByClassName('tips')[1].style.opacity='0';
                    self.location='home?accessToken='+response.data;
                    setCookie("accessToken",response.data,1);
                }
                else if(response.code===1){
                    document.getElementsByClassName('tips')[0].style.opacity='1';
                    document.getElementsByClassName('tips')[1].style.opacity='0';
                    $('.login-content').shake(2, 10, 400);
                }
                else if(response.code===2){
                    document.getElementsByClassName('tips')[0].style.opacity='0';
                    document.getElementsByClassName('tips')[1].style.opacity='1';
                    $('.login-content').shake(2, 10, 400);
                }
            }
        });
    });
});