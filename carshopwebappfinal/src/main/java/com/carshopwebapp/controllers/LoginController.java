package com.carshopwebapp.controllers;


import com.carshopwebapp.services.OwnerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Set;

@Controller

public class LoginController implements AuthenticationSuccessHandler {

    @Autowired
    OwnerService service;


    @RequestMapping("/welcome")
    public ModelAndView firstPage() {
        return new ModelAndView("welcome");
    }
/*
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginPage(HttpServletRequest httpServletRequest, Model model) {
        if(httpServletRequest.isUserInRole("ROLE_ADMIN")) {
            return "redirect:/index2.html";
        } else if(httpServletRequest.isUserInRole("ROLE_USER")) {
            return "redirect:/sintelestes.html";
        } else {
            return "";
        }
    }


*/

        @Override
        public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Authentication authentication) throws IOException, ServletException {

            Set<String> roles = AuthorityUtils.authorityListToSet(authentication.getAuthorities());

            if (roles.contains("ROLE_ADMIN")) {
                httpServletResponse.sendRedirect("/welcome");
            } else {
                httpServletResponse.sendRedirect("/");
            }
        }
    }


