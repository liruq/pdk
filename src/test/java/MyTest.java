import com.erp.model.User;
import com.erp.service.OrderService;
import com.erp.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by li on 2016/5/5.
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath*:spring.xml"})
public class MyTest {
    @Resource
    UserService userService;
    @Resource
    OrderService orderService;

//    @Test
    public void test(){
        User user=userService.get("admin");
        System.out.println(user.getPassword());
    }

    @Test
    public void test1(){
        List list=orderService.queryConfirm();
        System.out.println("aa");
    }
}
