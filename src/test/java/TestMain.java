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
import redis.clients.jedis.Jedis;

import java.util.*;


//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = {"classpath:spring-context.xml"})
public class TestMain {

    /*private static Logger logger = Logger.getLogger(TestMain.class);

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

    @Test
    public void testRedis() {
        Jedis jedis = new Jedis("localhost");
        logger.info("Redis 服务正在进行 " + jedis.ping());
        //String
        jedis.set("mykey", "hello redis");
        logger.info("redis String = " + jedis.get("mykey"));

        //List
        jedis.lpush("user", "张三");
        jedis.lpush("user", "李四");
        jedis.lpush("user", "王二麻子");
        List<String> users = jedis.lrange("user", 0, 100);
        for (String name : users) {
            logger.info("redis list --->" + name);
        }

        //Map
        Map<String, String> map = new HashMap<>();
        map.put("name", "小花");
        map.put("desc", "这是谁家的小猫小狗");
        jedis.hmset("people", map);

        String[] arr = new String[2];
        arr[0] = "name";
        arr[1] = "desc";
        List<String> mapList = jedis.hmget("people", arr);
        for (int i = 0; i < mapList.size(); i++) {
            logger.info("people " + arr[i] + ":" + mapList.get(i));
        }

        //Set  Set是string类型的无序集合，集合成员是唯一的，集合中不能出现重复的数据

        List<String> citys = new ArrayList<>();
        citys.add("北京");
        citys.add("上海");
        citys.add("广州");
        citys.add("深圳");
        citys.add("重庆");
        citys.add("成都");
        citys.add("重庆");
        String[] arr2 = new String[citys.size()];
        for (int i = 0; i < arr2.length; i++) {
            arr2[i] = citys.get(i);
        }
        jedis.sadd("citys", arr2);
        Set<String> sets = jedis.smembers("citys");
        logger.info("citys set = " + sets);

        //Sortset 有序集合
        Map<String, Double> map2 = new HashMap<>();
        map2.put("深圳", 3.0);
        map2.put("北京", 1.0);
        map2.put("广州", 4.0);
        map2.put("上海", 2.0);
        jedis.zadd("map2", map2);
        Set<String> sortset = jedis.zrevrange("map2", 0, 10);
        logger.info("Sortset:" + sortset);
    }*/
}
