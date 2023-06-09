package com.kbstar.controller;

import com.kbstar.dto.Guest;
import com.kbstar.dto.Host;
import com.kbstar.service.GuestService;
import com.kbstar.service.HostService;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@Slf4j
public class LoginController {

    @Autowired
    HostService hostService;
    @Autowired
    private BCryptPasswordEncoder encoder;
    @RequestMapping("/loginImpl")
    public String loginImpl(Model model,
                            String hostId, String hostPwd, HttpSession session) {
        log.info("---------------------------------"+hostId, hostPwd);
        Host host = null;
        try {
            host = hostService.get(hostId);
            if(host != null && encoder.matches(hostPwd,host.getHostPwd())){
                log.info("====");
                log.info("login성공");
                session.setMaxInactiveInterval(1000000);
                session.setAttribute("loginHost",host);
                model.addAttribute("loginHost", host);
                model.addAttribute("center","center");
                return "redirect:/";
            }if(host == null || !encoder.matches(hostPwd,host.getHostPwd()) || host.getHostId() == ""){
                log.info("===");
                log.info("login실패");
                model.addAttribute("msg","아이디 혹은 비밀번호를 확인하세요.");
                model.addAttribute("center","login");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "index";
    }



}