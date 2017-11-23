function init_select() {
    $.ajax({
        type: "GET",
        url: "/sunny/dept/getDeptList",
        dataType: 'json',
        success: function (data) {
            $.each(data, function (i) {
                $('#dept-combobox').append("<option value=" + data[i].id + ">" + data[i].name + "</option>");

            });

            $('#dept-combobox').selectpicker('refresh');
        },
        error: function (data) {
            alert("初始化部门失败！");
        }
    });

    $.ajax({
        type: "GET",
        url: "/sunny/user/getJobList",
        dataType: 'json',
        success: function (data) {
            $.each(data, function (i) {
                $('#job-combobox').append("<option value=" + data[i].id + ">" + data[i].name + "</option>");

            });

            $('#job-combobox').selectpicker('refresh');
        },
        error: function (data) {
            alert("初始化部门失败！");
        }
    });
}

function add_employee() {
    if ($.trim($('#name').val()) == "") {
        alert("姓名不能为空");
        return;
    }
    if ($.trim($('#cardId').val()) == "") {
        alert("身份证号码不能为空");
        return;
    }
    var str = {
        "name": $('#name').val(),
        "cardId": $('#cardId').val(),
        "sex": $('#sex-combobox').val(),
        "job": {"id": $('#job-combobox').val()},
        "education": $('#education').val(),
        "email": $('#email').val(),
        "phone": $('#phone').val(),
        "tel": $('#tel').val(),
        "party": $('#party').val(),
        "qqNum": $('#qqNum').val(),
        "address": $('#address').val(),
        "postCode": $('#postCode').val(),
        "birthday": $('#birthday').val(),
        "race": $('#race').val(),
        "speciality": $('#speciality').val(),
        "hobby": $('#hobby').val(),
        "remark": $('#remark').val(),
        "dept": {"id": $('#dept-combobox').val()}
    };
    $.ajax({
        type: "POST",
        url: "/sunny/employee/employeeAddAction",
        data: JSON.stringify(str),
        dataType: 'json',
        contentType: "application/json;charset=utf-8",
        success: function (data) {
            if (data.flag) {
                alert("添加成功！");
            } else {
                alert("添加失败！" + data.msg);
            }
        },
        error: function (data) {
            alert("请求失败");
        }
    });
}

function clear() {

}
