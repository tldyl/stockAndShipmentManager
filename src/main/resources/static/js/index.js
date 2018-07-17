$(document).ready(function(){
    $("#logout").click(function(){
        $(location).attr('href', 'login.html');
    });
    // 格式化时间数据
    Date.prototype.formatMMDDYYYY = function() {
        return (this.getMonth() + 1) +
        "/" +  this.getDate() +
        "/" +  this.getFullYear();
    }
//使用Ajax获取json数据
    var jsonData = $.ajax({
        url: '/getStockAchievement?accessToken=' + getCookie("accessToken"),
        dataType: 'json',
    }).done(function (results) {

    // 将获取到的json数据分别存放到两个数组中
    var ctx = document.getElementById("myChart").getContext('2d');
    alert(results.msg + " " + results.data + " " + getCookie("accessToken"));
    var myChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: results.data.xpos,
            datasets: [{
                label: '# of Votes',
                data: results.data.ypos,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    'rgba(255,99,132,1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero:true
                    }
                }]
            }
        }
    });
    })
})