import cn.sunny.entity.User;
import cn.sunny.service.UserService;
import com.alibaba.fastjson.JSON;
import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-context.xml"})
public class TestMain {
    private static Logger logger = Logger.getLogger(TestMain.class);
    @Autowired
    private UserService userService;


    @Before
    public void before() {
    }

    @Test
    public void test1() {
        List<User> list = userService.getAllUser();
        logger.info(JSON.toJSONString(list));
    }
}
