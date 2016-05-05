package com.erp.action;


import com.erp.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *
 */
@Controller
public class LoginAction {

    Logger logger = LoggerFactory.getLogger(LoginAction.class);

    @Autowired
    private UserService userService;

    @Autowired
    private HttpSession session;

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(String username, String password,HttpServletRequest request) {
        String path = request.getContextPath();
        String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
        String resourcePath = request.getServletContext().getInitParameter("resource_path") + "/";
        if(password==null||userService.get(username)==null||!password.equals(userService.get(username).getPassword())) {
//            map.put("errorMsg", "用户名或密码错误!");
//            map.put("username", username);
            return "login";
        }
        session.setAttribute("login", true);
        return "redirect:/";
    }

    @RequestMapping("/")
    public String index(){
        return "index";
    }

    @RequestMapping("jst/{module}")
    public String jspUrlRewrite(@PathVariable String module) {
        return module;
    }
}
