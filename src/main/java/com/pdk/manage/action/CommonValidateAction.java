package com.pdk.manage.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 */
@Controller
public class CommonValidateAction {
    @RequestMapping(value = "/validate/id", method = RequestMethod.POST)
    @ResponseBody
    public Boolean validateIdIsNull(String id) {
        return id != null && id.trim().length() == 24;
    }
}
