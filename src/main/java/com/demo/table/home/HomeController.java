package com.demo.table.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping("/index")
    public String index() {
        System.out.println("index");
        return "index";
    }
    
    @RequestMapping("/table")
    public String table() {
        System.out.println("table");
        return "dwt/tableListManage";
    }
    



}
