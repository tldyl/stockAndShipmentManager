$(document).ready(function(){
  $(".navbar").parents().css("height","100%");
  $(".fa-sign-out").click(function(){
    $(location).attr('href', 'login.html');
  });
  var newDate = new Date();
  var hours = newDate.getHours();
  if(hours>=6 && hours<11) {
    $("#greet").html("早上好！");
  } else if(hours>=11 && hours<13) {
    $("#greet").html("中午好！");
  } else if(hours>=13 && hours<18) {
    $("#greet").html("下午好！");
  } else if (hours >=18 && hours<23) {
    $("#greet").html("晚上好！");
  } else if (hours >=23 && hours <6) {
    $("#greet").html("夜深了，快休息吧！");
  }
  var mySchedule = new Schedule({
		el: '#schedule-box',
  });
  $.post(
      "/signIn",
      {
        accessToken: getCookie("accessToken"),
        recentDays: 31
      },
      function (data, status) {

      }
  );
}); 