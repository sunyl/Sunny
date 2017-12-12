<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="page-content">
    <h2 id="title" class="text-center">hello</h2>
    <p id="desc" class="lead text-center"></p>
    <p id="author" class="text-center"></p>
</div>

<script>
    $(function () {
        $.ajax({
            type: "GET",
            url: "/sunny/notice/getLastNotice",
            dataType: 'json',
            success: function (data) {
                $('#title').text(data.title);
                $('#desc').text(data.content);
                $('#author').text(data.createDate + "  " + data.user.userName);
            },
            error: function (data) {
            }
        });
    });
</script>