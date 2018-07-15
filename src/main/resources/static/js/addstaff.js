$(document).ready(function(){
    $("#btn-add").click(function(){
        $(".staff").after(`<tr class="staff">
        <td class="staff-content">
            <input type="text" id="uid" placeholder="工号"/>
        </td>
        <td class="staff-content">
            <input type="text" id="name" placeholder="姓名"/>
        </td>
        <td class="staff-content">
            <input type="text" id="sex" placeholder="性别"/>
        </td>
        <td class="staff-content">
            <input type="text" id="department" placeholder="部门"/>
        </td>
        <td class="staff-content">
            <input type="text" id="phoneNumber" placeholder="手机"/>
        </td>
        <td class="staff-content">
            <input type="text" id="status" placeholder="状态"/>
        </td>
    </tr>`);
    });
    $("#btn-warn").click(function(){
        var data = Array();
        $(".staff-content").each(function(i, v){
            data[i] = Array();
            $(this).children('input').each(function(ii, vv){
                data[i][ii] = $(this).val();
            }); 
        })
        $.ajax({
            url: '/addEmployee',
            dataType: "json",
            data: {
                accessToken: getCookie("accessToken"),
                user: {
                    uid: $(".staff #uid").val(),
                    username: $(".staff #name").val(),
                    password: 123456,
                    departmentId: $(".staff #department").val(),
                    sex: $(".staff #sex").val(),
                    phoneNumber: $(".staff #phoneNumber").val(),
                    charactor: "employee",
                    status: $(".staff #status").val()
                }
            },
            type: "POST",
            success: function (response) {
                if(response.code==0){
                    alert("操作成功！");
                }
            }
        })
    });
});