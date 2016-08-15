/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.tutionmanagementproject.controller.admin;

import javax.servlet.http.HttpServletRequest;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author Manjul Sigdel
 */
@Controller
@RequestMapping(value = "/admin")
public class DashboardController {
    
    @ResponseBody
    @RequestMapping(method = RequestMethod.GET)
    public String index(){
        return "adminpanel";
    }
    
    @RequestMapping(method = RequestMethod.GET, value = "/logout")
    public String logout(HttpServletRequest req){
        req.getSession(false).invalidate();
        return "redirect:/";
    }
}
