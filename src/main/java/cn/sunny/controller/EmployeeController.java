package cn.sunny.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

import cn.sunny.utils.DatatablesView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import cn.sunny.entity.Employee;
import cn.sunny.http.HttpStatus;
import cn.sunny.http.JsonResult;
import cn.sunny.service.EmployeeService;
import cn.sunny.utils.JsonUtil;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/employee")
public class EmployeeController {

    @Autowired
    EmployeeService employeeService;

    @RequestMapping(value = "/employeeAddAction", method = RequestMethod.POST)
    @ResponseBody
    public String employeeAddAction(@RequestBody Employee employee) {
        System.out.println("--->employeeAddAction name = " + employee.getName() + " ,phone = " + employee.getPhone());
        employee.setCreateDate(new Date());
        int rows = employeeService.addEmployee(employee);
        return JsonUtil.toJson(new JsonResult<>(new HashMap(), HttpStatus.OK));
    }

    @RequestMapping(value = "/getEmployeeList", method = RequestMethod.POST)
    @ResponseBody
    public String getEmployeeList(HttpServletRequest request) {
        int draw = request.getParameter("draw") == null ? 1 : Integer.valueOf(request.getParameter("draw"));
        int limit = request.getParameter("limit") == null ? 10 : Integer.valueOf(request.getParameter("limit"));
        int start = request.getParameter("start") == null ? 0 : Integer.valueOf(request.getParameter("start"));
        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page"));
        int dept_id = request.getParameter("dept_id") == null ? 0 : Integer.valueOf(request.getParameter("dept_id"));
        int job_id = request.getParameter("job_id") == null ? 0 : Integer.valueOf(request.getParameter("job_id"));

        String search = request.getParameter("search");
        System.out.println("--->getEmployeeList limit = " + limit + ",start=" + start + ",page=" + page
                + ",draw=" + draw + ",search=" + search + " ,dept_id = " + dept_id + " ,job_id=" + job_id);
        List<Employee> list = employeeService.getEmployeeList(start, limit, search, dept_id, job_id);
        DatatablesView<Employee> dataTable = new DatatablesView<>();
        dataTable.setData(list);
        dataTable.setRecordsFiltered(employeeService.getCount(search, dept_id, job_id));
        dataTable.setRecordsTotal(list.size());
        dataTable.setDraw(draw);
        return JsonUtil.toJson(dataTable);
    }

    @RequestMapping(value = "/deleteEmployee/{id}", method = RequestMethod.DELETE)
    public ResponseEntity<Boolean> deleteEmployee(@PathVariable("id") Integer id) {
        System.out.println("--->deleteEmployee id = " + id);
        int row = employeeService.deleteEmployee(id);
        return new ResponseEntity<>(row > 0, org.springframework.http.HttpStatus.OK);
    }

}
