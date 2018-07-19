$(document).ready(function(){
    // $(".department-cate").click(function(){
    //     $(this).parents().siblings(".department-orgcate").text($(this).text());
    // });
    // $(".state").click(function(){
    //     $(this).parents().siblings(".chose-state").text($(this).text());
    // });
    $("#search-id").click(function(){
        $("#search").html("工号 <span class='caret'></span>");
    });
    $("#search-name").click(function(){
        $("#search").html("姓名 <span class='caret'></span>");
    });
    $("#search-tel").click(function(){
        $("#search").html("手机 <span class='caret'></span>");
    });

    $("#btn-warn").click(function(){
        $("#shadow").removeClass("shadowoff");
        $("#shadow").addClass("shadowin");
        $("#change-info").removeClass("change-info-none");
        $("#change-info").addClass("change-info-play");
    });

    $("#btn-addstaff").click(function(){
        $("#shadow").removeClass("shadowoff");
        $("#shadow").addClass("shadowin");
        $("#add-staff").removeClass("add-staff-none");
        $("#add-staff").addClass("add-staff-show");
        $(".addform").children("input").val(" ");
    });

    $("#add-staff-submit").click(function(){
        $("#shadow").addClass("shadowoff");
        $("#shadow").removeClass("shadowin");
        $("#add-staff").addClass("add-staff-none");
        $("#add-staff").removeClass("add-staff-show");
        var newStaffData = Array();
        $(this).siblings(".addform").each(function(i, v){
            newStaffData[i] = Array();
            $(".addform").children("input").each(function(ii, vv){
                newStaffData[i][ii] = $(this).val();
            }); 
            var newStaff = Array(`<tr class="information">
                <td><input type="radio" name="choose"/></td>
                <td class="datum"></td>
                <td class="datum"></td>
                <td class="datum"></td>
                <td class="datum"></td>
                <td class="datum"></td>
                <td class="datum"></td>
            </tr>`);
            $(".information:last-child").after(newStaff);
            $(".information").find(".datum").eq(i).text(function(){
                for(var i=0;i<6;i++){
                    newStaffData[0][i]; 
                }
            });
        })
    });

    $("#shadow").click(function(){
        $("#shadow").addClass("shadowoff");
        $("#shadow").removeClass("shadowin");
        $("#change-info").addClass("change-info-none");
        $("#change-info").removeClass("change-info-play");
        $("#add-staff").addClass("add-staff-none");
        $("#add-staff").removeClass("add-staff-show");
    });

    $("input:radio").click(function(){
        if($(this).attr("checked","checked")) {
            var info = Array();
            $(this).parents(".information").each(function(i, v){
                info[i] = Array();
                $(this).children(".datum").each(function(ii, vv){
                    info[i][ii] = $(this).text();
                }); 
                for(var j=0;j<6;j++){
                    $(".changeform").find("input").eq(j).val(info[0][j]);
                }
            })
        }
    });

    var newInfo = Array();
    

    $("#change-info-submit").click(function(){
        $("#shadow").addClass("shadowoff");
        $("#shadow").removeClass("shadowin");
        $("#change-info").addClass("change-info-none");
        $("#change-info").removeClass("change-info-play"); 
    });
    
    //以下将以jquery.ajax为例，演示一个异步分页
    // function demo(curr){
    //     $.getJSON('test/demo1.json', {
    //         page: curr || 1 //向服务端传的参数，此处只是演示
    //     }, function(res){
    //         //此处仅仅是为了演示变化的内容
    //         var demoContent = (new Date().getTime()/Math.random()/1000)|0;
    //         document.getElementById('view1').innerHTML = res.content + demoContent;
    //         //显示分页
    //         laypage({
    //             cont: 'page1', //容器。值支持id名、原生dom对象，jquery对象。【如该容器为】：<div id="page1"></div>
    //             pages: res.pages, //通过后台拿到的总页数
    //             curr: curr || 1, //当前页
    //             jump: function(obj, first){ //触发分页后的回调
    //                 if(!first){ //点击跳页触发函数自身，并传递当前页：obj.curr
    //                     demo(obj.curr);
    //                 }
    //             }
    //         });
    //     });
    // };
    // //运行
    // demo();
    // //好像很实用的样子，后端的同学再也不用写分页逻辑了。
    // laypage({
    //     cont: 'page11',
    //     pages: 18, //可以叫服务端把总页数放在某一个隐藏域，再获取。假设我们获取到的是18
    //     curr: function(){ //通过url获取当前页，也可以同上（pages）方式获取
    //         var page = location.search.match(/page=(\d+)/);
    //         return page ? page[1] : 1;
    //     }(), 
    //     jump: function(e, first){ //触发分页后的回调
    //         if(!first){ //一定要加此判断，否则初始时会无限刷新
    //             location.href = '?page='+e.curr;
    //         }
    //     }
    // });
    // laypage({
    //     cont: $('#page3'), //容器。值支持id名、原生dom对象，jquery对象,
    //     pages: 100, //总页数
    //     skip: true, //是否开启跳页
    //     skin: '#AF0000',
    //     groups: 3 //连续显示分页数
    // });
    // laypage({
    //     cont: 'page6', //容器。值支持id名、原生dom对象，jquery对象,
    //     pages: 68, //总页数
    //     curr: location.hash.replace('#!fenye=', ''), //获取hash值为fenye的当前页
    //     hash: 'fenye', //自定义hash值
    //     jump: function(obj){
    //         $('#view6').html('看看URL的变化。通过hash，你可以记录当前页。当前正处于第'+obj.curr+'页');
    //     }
    // });
    // function showdata(data){
    //     var str = "";
    //     str =`<tr class="information">
    //     <td>${data.id}</td>
    //     <td>${data.name}</td>
    //     <td>
    //         <div class="btn-group">
    //             <button type="button" class="btn datum department-orgcate">部门1</button>
    //             <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    //                 <span class="caret"></span>
    //                 <span class="sr-only">Toggle Dropdown</span>
    //             </button>
    //             <ul class="dropdown-menu">
    //                 <li><a href="#" class="department-cate">部门1</a></li>
    //                 <li><a href="#" class="department-cate">部门2</a></li>
    //                 <li><a href="#" class="department-cate">部门3</a></li>
    //             </ul>
    //         </div>
    //     </td>
    //     <td>123456</td>
    //     <td>
    //         <div class="btn-group">
    //             <button type="button" class="btn datum chose-state">在职</button>
    //             <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    //                 <span class="caret"></span>
    //                 <span class="sr-only">Toggle Dropdown</span>
    //             </button>
    //             <ul class="dropdown-menu">
    //                 <li><a href="#" class="state">实习</a></li>
    //                 <li><a href="#" class="state">离职</a></li>
    //                 <li><a href="#" class="state">在职</a></li>
    //             </ul>
    //         </div>
    //     </td>
    // </tr>`;
    // }

    var data = Array();
    $(".information").each(function(i, v){
        data[i] = Array();
        $(this).children('.datum').each(function(ii, vv){
            data[i][ii] = $(this).text();
        }); 
    })

    // $("#select-department1").click(function(){
    //     if(data.nth(4)!=$(this).text()) {
    //         var a=
    //     }
        // $.ajax({
        //     url: 'authentication/form',
        //     dataType: "json",
        //     data: {reqinform:department},
        //     type: "POST",  
        //     success:function(response){
        //         if(response.code==0) {
        //             if(data.length==0){
        //                 //无数据
        //             }
        //             else if(data.length>0 && data.department=="部门1"){
        //                 for(var i=0;i<data.length;i++){
        //                     showdata(data);
        //                 }
        //             }
        //         }
        //         else if(response.code==1){
        //             //出错
        //         }
        //     }
        // });
    });
    $("#select-department2").click(function(){
        $.ajax({
            url: 'authentication/form',
            dataType: "json",
            data: {reqinform:department},
            type: "POST",  
            success:function(response){
                if(response.code==0) {
                    if(data.length==0){
                        //无数据
                    }
                    else if(data.length>0 && data.department=="部门1"){
                        for(var i=0;i<data.length;i++){
                            showdata(data);
                        }
                    }
                }
                else if(response.code==1){
                    //出错
                }
            }
        });
    });
    $("#select-department3").click(function(){
        $.ajax({
            url: 'authentication/form',
            dataType: "json",
            data: {reqinform:department},
            type: "POST",  
            success:function(response){
                if(response.code==0 && data.department=="部门1") {
                    if(data.length==0){
                        //无数据
                    }
                    else if(data.length>0){
                        for(var i=0;i<data.length;i++){
                            showdata(data);
                        }
                    }
                }
                else if(response.code==1){
                    //出错
                }
            }
        });
    });
    $("#select-state1").click(function(){
        $.ajax({
            url: 'authentication/form',
            dataType: "json",
            data: {reqinform:state},
            type: "POST",  
            success:function(response){
                if(response.code==0 && data.state=="在职") {
                    if(data.length==0){
                        //无数据
                    }
                    else if(data.length>0){
                        for(var i=0;i<data.length;i++){
                            showdata(data);
                        }
                    }
                }
                else if(response.code==1){
                    //出错
                }
            }
        });
    });
    $("#select-state2").click(function(){
        $.ajax({
            url: 'authentication/form',
            dataType: "json",
            data: {reqinform:state},
            type: "POST",  
            success:function(response){
                if(response.code==0 && data.state=="实习") {
                    if(data.length==0){
                        //无数据
                    }
                    else if(data.length>0){
                        for(var i=0;i<data.length;i++){
                            showdata(data);
                        }
                    }
                }
                else if(response.code==1){
                    //出错
                }
            }
        });
    });
    $("#select-state3").click(function(){
        $.ajax({
            url: 'authentication/form',
            dataType: "json",
            data: {reqinform:state},
            type: "POST",  
            success:function(response){
                if(response.code==0 && data.state=="离职") {
                    if(data.length==0){
                        //无数据
                    }
                    else if(data.length>0){
                        for(var i=0;i<data.length;i++){
                            showdata(data);
                        }
                    }
                }
                else if(response.code==1){
                    //出错
                }
            }
        });
    });
    $("#search-btn").click(function(){
        var keyword = document.getElementsByName('ketword')[0];
        $.ajax({
            url: 'authentication/form',
            dataType: "json",
            data: {reqinform:keyword,reqcategory},
            type: "POST",  
            success:function(response){
                if(response.code==0) {
                    if(data.length==0){
                        //无数据
                    }
                    else if(data.length>0 && data.keyword==keyword){
                        for(var i=0;i<data.length;i++){
                            showdata(data);
                        }
                    }
                }
                else if(response.code==1){
                    //出错
                }
            }
        });
    });
// });
