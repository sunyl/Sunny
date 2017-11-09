function dengqiang() {
    // 添加、修改异步提交地址
    var url = "";

    var tables = $("#table_user").dataTable({
        serverSide: true,// 分页，取数据等等的都放到服务端去
        processing: true,// 载入数据的时候是否显示“载入中”
        pageLength: 10,  // 首次加载的数据条数
        ordering: false, // 排序操作在服务端进行，所以可以关了。
        pagingType: "full_numbers",
        autoWidth: false,
        stateSave: true,// 保持翻页状态，和comTable.fnDraw(false);结合使用
        searching: false,// 禁用datatables搜索
        ajax: {   
            type: "post",
            url: "sunny/user/getUserList",
            dataSrc: "data",
               data: function (d) {
                   var param = {};
                   param.draw = d.draw;
                   param.start = d.start;
                   param.length = d.length;
                   var formData = $("#queryForm").serializeArray();// 把form里面的数据序列化成数组
                   formData.forEach(function (e) {
                       param[e.name] = e.value;
                   });
                    return param;// 自定义需要传递的参数。
            },
        },
        columns: [// 对应上面thead里面的序列
            {"data": null,"width":"10px"},
            {"data": 'id'},
            {"data": 'userName'},
            {"data": 'loginName'},
            {"data": 'password'},
            {"data": 'status'},
            {"data": 'date'},
            {"data": null,"width":"60px"}
        ],
        // 操作按钮
        columnDefs: [
            {
             targets: 0,
             defaultContent: "<input type='checkbox' name='checkList'>"
         },
         {
             targets: -1,
             defaultContent: "<div class='btn-group'>"+
                            "<button id='editRow' class='btn btn-primary btn-sm' type='button'><i class='fa fa-edit'></i></button>"+
                            "<button id='delRow' class='btn btn-primary btn-sm' type='button'><i class='fa fa-trash-o'></i></button>"+
                            "</div>"
         }
        ],
        language: {
            lengthMenu: "",
            processing: "<sp:message code='sys.load'/>",
            paginate: {
                previous: "<",
                next: ">",
                first: "<<",
                last: ">>"
            },
            zeroRecords: "<sp:message code='sys.nodata'/>",
            info: "<sp:message code='sys.pages'/>",
            infoEmpty: "",
            infoFiltered: "",
            sSearch: "<sp:message code='sys.keyword'/>：",
        },
        // 在每次table被draw完后回调函数
        fnDrawCallback: function(){
            var api = this.api();
            // 获取到本页开始的条数
        　　  var startIndex= api.context[0]._iDisplayStart;
        　　  api.column(1).nodes().each(function(cell, i) {
        　　　　    cell.innerHTML = startIndex + i + 1;
        　　 }); 
        }
       });

    // 查询按钮
    $("#btn-query").on("click", function () {
        tables.fnDraw();// 查询后不需要保持分页状态，回首页
    });

    // 添加
    $("#btn-add").on("click", function () {
        url = "<%=path%>/goodsType/add";
        $("input[name=typeId]").val(0);
        $("input[name=typeNameCn]").val("");
        $("input[name=typeNameEn]").val("");
        $("#editModal").modal("show");
    });

    // 批量删除
    $("#btn-delAll").on("click", function () {
    	alert("批量是删除");

    });

    // 导出
    $("#btn-export").on("click", function () {
    	alert("导出");
    });

    // 刷新
   /* $("#btn-re").on("click", function () {
    	alert("刷新");
        tables.fnDraw(false);// 刷新保持分页状态
    });
*/
    // checkbox全选
    $("#checkAll").on("click", function () {
        if ($(this).prop("checked") === true) {
            $("input[name='checkList']").prop("checked", $(this).prop("checked"));
            // $("#dataTable tbody tr").addClass('selected');
            $(this).hasClass('selected')
        } else {
            $("input[name='checkList']").prop("checked", false);
            $("#dataTable tbody tr").removeClass('selected');
        }
    });

    // 修改
    $("#dataTable tbody").on("click", "#editRow", function () {
        var data = tables.api().row($(this).parents("tr")).data();
        $("input[name=typeId]").val(data.typeIdStr);
        $("input[name=typeNameCn]").val(data.typeNameCn);
        $("input[name=typeNameEn]").val(data.typeNameEn);

        url = "<%=path%>/goodsType/update";

        $("#editModal").modal("show");
    });

    $("#btn-submit").on("click", function(){
        $.ajax({
          cache: false,
          type: "POST",
          url: url,
          data:$("#editForm").serialize(),
          async: false,
          error: function(request) {
              showFail("Server Connection Error...");
          },
          success: function(data) {
            if(data.status == 1){
                $("#editModal").modal("hide");
                showSuccess("<sp:message code='sys.oper.success'/>");
                tables.fnDraw();
            }else{
                showFail("<sp:message code='sys.oper.fail'/>");
            }
          }
      });
    });

    // 删除
    $("#dataTable tbody").on("click", "#delRow", function () {
        var data = tables.api().row($(this).parents("tr")).data();
        if(confirm("是否确认删除这条信息?")){
            $.ajax({
                url:'<%=path%>/goodsType/del/'+data.typeIdStr,
                type:'delete',
                dataType: "json",
                cache: "false",
                success:function(data){
                    if(data.status == 1){
                        showSuccess("<sp:message code='sys.oper.success'/>");
                        tables.api().row().remove().draw(false);
                    }else{
                        showFail("<sp:message code='sys.oper.fail'/>");
                    }
                },
                error:function(err){
                    showFail("Server Connection Error...");
                }
            });
        }
    });
}
