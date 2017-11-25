import cn.sunny.entity.Employee;
import cn.sunny.entity.User;
import cn.sunny.http.HttpStatus;
import cn.sunny.http.JsonResult;
import cn.sunny.service.EmployeeService;
import cn.sunny.service.UserService;
import cn.sunny.utils.JsonUtil;

import com.alibaba.fastjson.JSON;
import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-context.xml"})
public class TestMain {
    private static Logger logger = Logger.getLogger(TestMain.class);
    @Autowired
    private UserService userService;

    @Autowired
    private EmployeeService employeeService;

    @Before
    public void before() {
    }

    @Test
    public void test1() {
        List<User> list = userService.getAllUser();
        JsonResult result = new JsonResult<>(list, HttpStatus.OK);
        logger.info(JsonUtil.toJson(result));
    }


    @Test
    public void test2() {
        JsonResult result = new JsonResult(new HashMap(), HttpStatus.OK);
        logger.info(JsonUtil.toJson(result));
    }

    @Test
    public void test3() {
        List<Employee> list = employeeService.getEmployeeList(0, 10, null, 1, 1);
        JsonResult result = new JsonResult<>(list, HttpStatus.OK);
        logger.info(JsonUtil.toJson(result));
    }
}
