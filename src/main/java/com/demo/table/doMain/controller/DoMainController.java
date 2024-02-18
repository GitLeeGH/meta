package com.demo.table.doMain.controller;

import com.demo.table.doMain.DoMain;
import com.demo.table.doMain.service.DoMainService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@AllArgsConstructor
public class DoMainController {

    private DoMainService doMainService;

    @RequestMapping("/domn")
    public String domn() {
        System.out.println("domn");
        return "domn/domn";
    }

    @RequestMapping("/domn/getStdClsfCd")
    public @ResponseBody Map<String, Object> getStdClsfCd() {
        System.out.println("getStdClsfCd");
        List<String> stdClsfCdList = doMainService.findStdClsfCd();
        Map<String, Object> contents = new HashMap<String, Object>();
        contents.put("contents", stdClsfCdList);
        return contents;

    }

    @RequestMapping("/domn/doMainList")
    public @ResponseBody Map<String, Object> doMainList(@RequestBody Map<String, Object> param) {
        System.out.println("doMainList");
        System.out.println(param);

        String stdClsfCd = (String)param.get("stndAsrt");
        String dmnLnm = (String)param.get("dmnLnm");

        if(stdClsfCd.equals("all")){
            List< DoMain > doMainList = doMainService.findByAll(dmnLnm);
            Map<String, Object> contents = new HashMap<String, Object>();
            contents.put("contents", doMainList);
            return contents;
        }else{
            List< DoMain > doMainList = doMainService.findByOption(stdClsfCd, dmnLnm);
            Map<String, Object> contents = new HashMap<String, Object>();
            contents.put("contents", doMainList);
            return contents;
        }

    }

}
