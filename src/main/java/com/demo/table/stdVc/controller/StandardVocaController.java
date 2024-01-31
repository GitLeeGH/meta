package com.demo.table.stdVc.controller;

import com.demo.table.stdVc.StandardVoca;
import com.demo.table.stdVc.service.StandardVocaService;


import lombok.AllArgsConstructor;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.swing.plaf.synth.Region;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@AllArgsConstructor
public class StandardVocaController {
	
	private StandardVocaService standardVocaService;
	
	@RequestMapping("/standardVoca")
	public String standardWords() {
		System.out.println("standardVoca");
		return "std/standardVoca";
	}

	@RequestMapping("/std/standardVocaList")
	public @ResponseBody ModelAndView standardWordsList() {
		System.out.println("standardVocaList");



		// standardVoca 리스트 가져오기
		System.out.println("hihi");
		List<StandardVoca> standardVocaList = standardVocaService.findAll();

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("jsonView");



		Map<String, Object> contents = new HashMap<String, Object>();





		contents.put("contents", standardVocaList);
		contents.put("result",true);
		contents.put("data", standardVocaList);
		modelAndView.addObject("result", "success");
		modelAndView.addObject("data", contents);
		modelAndView.addObject("result", true);

		return modelAndView;
	}

	@RequestMapping("/std/standardVocaList2")
	public @ResponseBody Map<String, Object> standardWordsList2(@RequestBody Map<String, Object> param) {
		System.out.println("standardVocaList2");
		System.out.println(param.get("stndAsrt"));
		System.out.println(param);
		String StdClsfCd = (String) param.get("stndAsrt");
		String StdVocaLgcNm = (String) param.get("stwdLnm");
		String EngNm = (String) param.get("engMean");


		// standardVoca 리스트 가져오기
		System.out.println("hihi");
		if(StdClsfCd.equals("all")) {
			List<StandardVoca> standardVocaList = standardVocaService.findAll();
			Map<String, Object> contents = new HashMap<String, Object>();
			contents.put("contents", standardVocaList);
			return contents;
		}else{
			List<StandardVoca> standardVocaList = standardVocaService.findBystdVocaLgcNm(StdClsfCd,StdVocaLgcNm,EngNm);
			Map<String, Object> contents = new HashMap<String, Object>();
			contents.put("contents", standardVocaList);
			return contents;
		}

	}

	// 표준분류 코드 가져오기
	@RequestMapping("/std/getStdClsfCd")
	public @ResponseBody Map<String, Object> getStdClsfCd() {
		System.out.println("getStdClsfCd");
		List<String> stdClsfCdList = standardVocaService.findStdClsfCd();
		Map<String, Object> contents = new HashMap<String, Object>();
		contents.put("contents", stdClsfCdList);
		return contents;
	}

}


