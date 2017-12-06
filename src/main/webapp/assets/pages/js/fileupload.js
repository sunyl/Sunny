function doUpload() {
    if (document.all.file.value == "") {
        alert("你没有选择文件");
        return;
    }

    $("#btnUpload").attr('disabled', true);
    $("#progressBar").width("0%");
    $("#progressBar").parent().show();
    $("#progressBar").parent().addClass("active");
    document.getElementById('progressBar').innerHTML = "0%";

    var fileObj = $("#file").get(0).files[0];
    var form = new FormData();
    form.append("file", fileObj);
    form.append("desc", "这是一个描述");
    var xhr = new XMLHttpRequest();
    xhr.open("post", '/sunny/file/uploadFile', true);
    xhr.onload = function () {
        $("#btnUpload").attr('disabled', false);
        alert("上传成功");
    };
    xhr.upload.addEventListener("progress", progressFunction, false);
    xhr.send(form);
}

function progressFunction(evt) {
    var progressBar = $("#progressBar");
    if (evt.lengthComputable) {
        var completePercent = Math.round(evt.loaded / evt.total * 100) + "%";
        progressBar.width(completePercent);
        document.getElementById('progressBar').innerHTML = completePercent;
    }
}



function table_file() {
    
}
