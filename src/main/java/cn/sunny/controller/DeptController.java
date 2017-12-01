package cn.sunny.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import cn.sunny.utils.DatatablesView;
import cn.sunny.utils.JsonUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import cn.sunny.entity.Dept;
import cn.sunny.service.DeptService;

@Controller
@RequestMapping("/dept")
public class DeptController {

    @Autowired
    DeptService deptService;

    @RequestMapping(value = "/deptAddAction", method = RequestMethod.POST)
    public @ResponseBody
    ModelAndView deptAddAction(@RequestBody Dept dept) {
        System.out.println("--->deptAddAction deptAddAction");
        deptService.insertDept(dept);
        Map<String, String> map = new HashMap<String, String>();
        map.put("msg", "success");
        return new ModelAndView(new MappingJackson2JsonView(), map);
    }

    @RequestMapping(value = "/getDeptListByPage", method = RequestMethod.POST)
    @ResponseBody
    public String getDeptList(HttpServletRequest request) {
        System.out.println("--->getDeptList getDeptList");
        int draw = request.getParameter("draw") == null ? 1 : Integer.valueOf(request.getParameter("draw"));
        int limit = request.getParameter("limit") == null ? 10 : Integer.valueOf(request.getParameter("limit"));
        int start = request.getParameter("start") == null ? 0 : Integer.valueOf(request.getParameter("start"));
        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page"));

        List<Dept> list = deptService.getDeptListByPage(start, limit);
        DatatablesView<Dept> dataTable = new DatatablesView<>();
        dataTable.setData(list);
        dataTable.setRecordsFiltered(deptService.getCount());
        dataTable.setRecordsTotal(list.size());
        dataTable.setDraw(draw);
        return JsonUtil.toJson(dataTable);
    }

    @RequestMapping(value = "/getDeptList", method = RequestMethod.GET)
    @ResponseBody
    public String getJobList(HttpServletRequest request) {
        List<Dept> jobs = deptService.getDeptList();
        return JsonUtil.toJson(jobs);
    }

    @RequestMapping(value = "/deleteDept/{id}", method = RequestMethod.DELETE)
    public ResponseEntity<Boolean> deleteUser(@PathVariable("id") Integer id) {
        System.out.println("--->deleteUser id = " + id);
        int row = deptService.deleteDept(id);
        return new ResponseEntity<Boolean>(row > 0, HttpStatus.OK);
    }
}
