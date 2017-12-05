package cn.sunny.controller;

import cn.sunny.http.HttpStatus;
import cn.sunny.http.JsonResult;
import cn.sunny.utils.JsonUtil;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;

@Controller
@RequestMapping("/file")
public class FileController {

    private static Logger logger = Logger.getLogger(FileController.class);

    @RequestMapping(value = "/uploadFile")
    public String uploadFile(HttpServletRequest request, @RequestParam("file") MultipartFile file) {
        String fileName = file.getOriginalFilename();
        String path = request.getServletContext().getRealPath("/uploadFile/");
        File newFile = new File(path, fileName);
        if (!newFile.exists()) {
            newFile.mkdirs();
        }
        logger.info("newFile absolutePath = " + newFile.getAbsolutePath() + " path = "+newFile.getPath());
        try {
            file.transferTo(newFile);
        } catch (IOException e) {
            e.printStackTrace();
            return JsonUtil.toJson(new JsonResult<>(HttpStatus.ERROR,false,new HashMap(),"上传文件失败" ));
        }
        return JsonUtil.toJson(new JsonResult<>(new HashMap(), HttpStatus.OK));
    }
}
