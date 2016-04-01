package com.pdk.manage.action.cs;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/cs/chat/msg")
public class ChatMsgAction {

    @RequestMapping("/index")
    public String index() {
        return "cs/chatmsg";
    }

}
