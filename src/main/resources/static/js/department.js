$(document).ready(function(){
    $(".department-cate").click(function(){
        $(this).parents().siblings(".department-orgcate").text($(this).text());
    });
    $(".state").click(function(){
        $(this).parents().siblings(".chose-state").text($(this).text());
    });
    $("#search").click(function(){
        $("#search").text("实习");
    });
    $("#search").click(function(){
        $("#search").text("离职");
    });
    $("#search").click(function(){
        $("#search").text("在职");
    });
    function showdata(data){
        var str = "";
        str =`<tr class="information">
        <td>${data.id}</td>
        <td>${data.name}</td>
        <td>
            <div class="btn-group">
                <button type="button" class="btn datum department-orgcate">部门1</button>
                <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <span class="caret"></span>
                    <span class="sr-only">Toggle Dropdown</span>
                </button>
                <ul class="dropdown-menu">
                    <li><a href="#" class="department-cate">部门1</a></li>
                    <li><a href="#" class="department-cate">部门2</a></li>
                    <li><a href="#" class="department-cate">部门3</a></li>
                </ul>
            </div>
        </td>
        <td>123456</td>
        <td>
            <div class="btn-group">
                <button type="button" class="btn datum chose-state">在职</button>
                <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <span class="caret"></span>
                    <span class="sr-only">Toggle Dropdown</span>
                </button>
                <ul class="dropdown-menu">
                    <li><a href="#" class="state">实习</a></li>
                    <li><a href="#" class="state">离职</a></li>
                    <li><a href="#" class="state">在职</a></li>
                </ul>
            </div>
        </td>
    </tr>`;
    }
    $("#select-department1").click(function(){
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
    var data = Array();
    $(".information").each(function(i, v){
        data[i] = Array();
        $(this).children('.datum').each(function(ii, vv){
            data[i][ii] = $(this).text();
        }); 
    })
    alert(data);
});
