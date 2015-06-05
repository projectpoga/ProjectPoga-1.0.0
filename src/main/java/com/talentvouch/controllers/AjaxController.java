/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.talentvouch.controllers;

import com.google.gson.Gson;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author miracle
 */

  @Controller
public class AjaxController {

	@RequestMapping(value = "/index1", method = RequestMethod.GET)
	public ModelAndView getPages() {
		ModelAndView model = new ModelAndView("index1");
		return model;
	}
 

 
  	@RequestMapping(value = "/getEmployees", method = RequestMethod.POST)
	public void getEmployees(@RequestParam String term, HttpServletResponse response) {
		System.out.println("Term entered is"+term);
		try {
			response.setContentType("application/json");
			
			//String g = new Gson().toJson(simulateSearchResult(term));
			String g = new Gson().toJson(simulateSearchResult(term));
			response.getWriter().write(g);
		} catch (IOException e) {
			e.printStackTrace();
		}
 
	}
 
  
	private List<String> simulateSearchResult(String empName) {
                List<String> result = new ArrayList<String>();
		List<String> al = new ArrayList<String>();
			al.add("john D");
			al.add("johnny");
			al.add("john");
                        al.add("shython");
                        al.add("ammy");
		// iterate a list and filter by tagName
		for (String item : al) {
			if (item.contains(empName)) {
				result.add(item);
			}
		}
            System.out.println("List"+result);
		return result;
	}
 
}
  