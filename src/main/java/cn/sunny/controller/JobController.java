package cn.sunny.controller;

import cn.sunny.entity.Job;
import cn.sunny.service.JobService;
import cn.sunny.utils.DatatablesView;
import cn.sunny.utils.JsonUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/job")
public class JobController {

    @Autowired
    private JobService jobService;

    @RequestMapping(value = "/deleteJob/{id}", method = RequestMethod.DELETE)
    public ResponseEntity<Boolean> deleteJob(@PathVariable("id") Integer id) {
        System.out.println("--->deleteJob id = " + id);
        int row = jobService.deleteJob(id);
        return new ResponseEntity<Boolean>(row > 0, HttpStatus.OK);
    }

    @RequestMapping(value = "/jobAddAction", method = RequestMethod.POST)
    public @ResponseBody
    ModelAndView userJobAction(@RequestBody Job job) {
        jobService.insertJob(job);
        Map<String, String> map = new HashMap<String, String>();
        map.put("msg", "success");
        return new ModelAndView(new MappingJackson2JsonView(), map);
    }

    @RequestMapping(value = "/getJobListByPage", method = RequestMethod.POST)
    @ResponseBody
    public String getJobListByPage(HttpServletRequest request) {
        int draw = request.getParameter("draw") == null ? 1 : Integer.valueOf(request.getParameter("draw"));
        int limit = request.getParameter("limit") == null ? 10 : Integer.valueOf(request.getParameter("limit"));
        int start = request.getParameter("start") == null ? 0 : Integer.valueOf(request.getParameter("start"));
        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page"));
        String search = request.getParameter("search");
        System.out.println("--->UserController:getJobList limit = " + limit + ",start=" + start + ",page=" + page
                + ",draw=" + draw + ",search=" + search);

        List<Job> jobs = jobService.getJobListByPage(start, limit, search);
        DatatablesView<Job> dataTable = new DatatablesView<Job>();
        dataTable.setData(jobs);
        dataTable.setRecordsFiltered(jobService.getCount(search));
        dataTable.setRecordsTotal(jobs.size());
        dataTable.setDraw(draw);
        return JsonUtil.toJson(dataTable);
    }

    @RequestMapping(value = "/getJobList", method = RequestMethod.GET)
    @ResponseBody
    public String getJobList(HttpServletRequest request) {
        List<Job> jobs = jobService.getJobList();
        return JsonUtil.toJson(jobs);
    }
}
