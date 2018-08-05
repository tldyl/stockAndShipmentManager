$(document).ready(function(){
  $(".navbar").parents().css("height","100%");
  $(".fa-sign-out").click(function(){
    $(location).attr('href', 'login.html');
  });
  //使用Ajax获取json数据
  // var jsonData = $.ajax({
  //     url: '',
  //     dataType: 'json',
  // }).done(function (results) {
    var ctx = document.getElementById("sales-bar").getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ["January", "February", "March", "April", "May", "June","July","August","September","October","November","December"],
            datasets: [{
              label: '销售额',
              data: [1200, 1009, 3121, 5324, 1292, 3453,1234,3425,6534,2345,2314,3765],
              backgroundColor: 'rgba(25, 99, 132, 0.6)',
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
      var contrast = document.getElementById("contrast").getContext('2d');
      var contrastChart = new Chart(contrast, {
        type: 'line',
        data: {
            labels: ["January", "February", "March", "April", "May", "June","July","August","September","October","November","December"],
            datasets: [{
              label: '进货额',
              data: [1200, 1009, 3121, 5324, 1292, 3453,1234,3425,6534,2345,2314,3765],
              backgroundColor: 'transparent',
              borderColor:'rgb(24, 144, 255, 1)',
            borderWidth: 1
          },
          {
            data: [1200, 109, 321, 524, 1232, 3253,1034,3125,5534,2145,1014,3065],
            label:'出货量',
            backgroundColor:'transparent',
            borderColor:'rgb(201, 111, 0, 1)',
            borderWidth: 1
          }
        ]
        },
      });
      var proportion = document.getElementById("proportion").getContext('2d');
      var proportionPieChart = new Chart(proportion,{
        type: 'doughnut',
        data: {
            labels:['commodity1','commodity2','commodity3','commodity4'],
            datasets: [{
                data: [10, 20, 30, 40],
                backgroundColor:[
                    'rgb(240, 72, 100, 1)',
                    'rgb(250, 204, 20, 1)',
                    'rgb(47, 194, 91, 1)',
                    'rgb(19, 194, 194, 1)'
                ],
                borderWidth:1
        }],
    },
});
 $.ajax({
  url: ' ',
  dataType: "json",
  data: {returnsCounts:$("#returnsConts").text(),dailyRingGrowth:$("#dailyRingGrowth").text()},   type: "POST",
  success: function (response) {
   $("#returnsConts").text(data.returnsCounts);
   $("#dailyRingGrowth").text(data.dailyRingGrowth);
  }
  });
});