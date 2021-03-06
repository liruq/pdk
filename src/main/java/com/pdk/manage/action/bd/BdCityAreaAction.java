package com.pdk.manage.action.bd;

import com.pdk.manage.model.bd.CityArea;
import com.pdk.manage.service.bd.CityAreaService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
@RequestMapping("/bd")
public class BdCityAreaAction {
    private static final Logger log = LoggerFactory.getLogger(BdCityAreaAction.class);

    @Autowired
    private CityAreaService cityAreaService;

    @RequestMapping("/bd_city_area")
    public @ResponseBody Map<String, Object> listCity() {
        Map<String, Object> result = new HashMap<>();
        List<CityArea> citys = null;
        List<CityArea> areas = null;
        try {
            citys = cityAreaService.selectAllCity();

            if ( citys != null && citys.size() > 0 ) {
                areas = cityAreaService.selectAreaByCityId( citys.get(0).getId() );
            }
        } catch (Exception e) {
            log.error(e.getMessage(), e);
        }

        result.put("result", "success");
        result.put("citys", citys);
        result.put("areas", areas);

        return result;
    }
}
