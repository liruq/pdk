import com.pdk.manage.service.bd.GoodsService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import javax.annotation.Resource;

/**
 * Created by liruquan on 20/02/2016.
 */

@WebAppConfiguration("src/test/java")
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring.xml"})
public class AppleTest {

    @Resource
    GoodsService goodsService;

	@Test
	public void test() throws Exception {
		goodsService.qryGoodsById("dfdfd");
	}

}
