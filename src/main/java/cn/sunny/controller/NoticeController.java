package cn.sunny.controller;

import cn.sunny.entity.Notice;
import cn.sunny.entity.User;
import cn.sunny.service.NoticeService;
import cn.sunny.utils.DatatablesView;
import cn.sunny.utils.JsonUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/notice")
public class NoticeController {
    @Autowired
    private NoticeService noticeService;

    @RequestMapping(value = "/deleteNotice/{id}", method = RequestMethod.DELETE)
    public ResponseEntity<Boolean> deleteNotice(@PathVariable("id") Integer id) {
        int row = noticeService.deleteNotice(id);
        return new ResponseEntity<>(row > 0, HttpStatus.OK);
    }

    @RequestMapping(value = "/noticeAddAction", method = RequestMethod.POST)
    public ResponseEntity<Boolean> noticeAddAction(HttpServletRequest request, @RequestBody Notice notice) {
        notice.setCreateDate(new Date());
        notice.setUser((User) request.getSession().getAttribute("user"));
        int row = noticeService.insertNotice(notice);
        return new ResponseEntity<>(row > 0, HttpStatus.OK);
    }

    @RequestMapping(value = "/getNoticeListByPage", method = RequestMethod.POST)
    @ResponseBody
    public String getNoticeListByPage(HttpServletRequest request) {
        int draw = request.getParameter("draw") == null ? 1 : Integer.valueOf(request.getParameter("draw"));
        int limit = request.getParameter("limit") == null ? 10 : Integer.valueOf(request.getParameter("limit"));
        int start = request.getParameter("start") == null ? 0 : Integer.valueOf(request.getParameter("start"));
        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page"));
        String search = request.getParameter("search");

        List<Notice> notices = noticeService.getNoticeListByPage(start, limit, search);
        DatatablesView<Notice> dataTable = new DatatablesView<>();
        dataTable.setData(notices);
        dataTable.setRecordsFiltered(noticeService.getCount(search));
        dataTable.setRecordsTotal(notices.size());
        dataTable.setDraw(draw);
        return JsonUtil.toJson(dataTable);
    }

}
