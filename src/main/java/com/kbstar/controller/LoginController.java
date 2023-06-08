package com.kbstar.controller;

import com.kbstar.dto.Guest;
import com.kbstar.dto.Host;
import com.kbstar.service.GuestService;
import com.kbstar.service.HostService;
import lombok.extern.slf4j.Slf4j;
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
    public String loginImpl(String hostId, String hostPwd, Model model, HttpSession session) throws Exception{
        Host host = hostService.get(hostId);
        if(host != null && encoder.matches(hostPwd,host.getHostPwd())){
            session.setMaxInactiveInterval(1000000);
            session.setAttribute("loginHost",host);
            model.addAttribute("center","center");
            log.info("=========");
            log.info("===로그인성공==");
            return "redirect:/";
        }else{
            model.addAttribute("msg","아이디 혹은 비밀번호를 확인하세요.");
            model.addAttribute("center","login");
            log.info("======");
            log.info("===로그인실패===");
        }
        return "index";
    }



}