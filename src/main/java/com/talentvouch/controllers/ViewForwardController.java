/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.talentvouch.controllers;


import com.talentvouch.dao.access.DataAccessMgrDAOImpl;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
/**
 *
 * @author Ramana
 */
@Controller
public class ViewForwardController{

   private static final Logger logger = LogManager.getLogger(ViewForwardController.class);
    public  DataAccessMgrDAOImpl dataAccessMgrDAOImpl;
   
    @Autowired
	public ViewForwardController(DataAccessMgrDAOImpl dataAccessMgrDAOImpl){
		this.dataAccessMgrDAOImpl = dataAccessMgrDAOImpl;
	}
        
    @RequestMapping("/index")
    public ModelAndView index() throws Exception {
       
       return new ModelAndView("index");
        
    }
    
    @RequestMapping("/logout")
    public ModelAndView logout(HttpServletRequest request, @RequestParam("pageName") String currentPage) throws Exception {
        
        HttpSession session = request.getSession(false);
        if(session!=null)
            session.invalidate();
        
        System.out.println("Successfully logged out"+request.getRequestURL());
        
        return new ModelAndView("redirect:" + currentPage);
        
    }
    
    
      @RequestMapping("/index1")
    public ModelAndView index1() throws Exception {
        
        
       return new ModelAndView("index1");
        
    }
    
     @RequestMapping("/jobs")
    public ModelAndView jobs() throws Exception {
        ModelAndView jobModel = new ModelAndView("jobs");
        
//        add category dtls list
        jobModel.addObject("categoryModelList", getDataAccessMgrDAOImpl().getCategoryDetails());
        
        jobModel.addObject("topJobsList", getDataAccessMgrDAOImpl().getTopJobs());
        
        jobModel.addObject("fresherJobsList", getDataAccessMgrDAOImpl().getFresherJobs());
        
        jobModel.addObject("introRewardJobsList", getDataAccessMgrDAOImpl().getJobsWithIntroReward());
        
       return jobModel;
        
    }
    
    @RequestMapping("/register")
    public ModelAndView register() throws Exception {
        
        
       return new ModelAndView("register");
        
    }
    
    @RequestMapping(value = "/autoComplete", method = RequestMethod.GET)
    public @ResponseBody List<String> autoComplete(@RequestParam("term") String name){
    
    List<String> matchName = getName(name);
        System.out.println("List"+matchName);
    return matchName;
    }
    
    public static List getName(String name) {

    List<String> returnMatchName = new ArrayList<String>();
    String data[]={"Abourezk James","Abrams Creighton","Ace Jane","Ba Jin","Baba Meher","Baba Tupeni"};
            
        
    for (String string : data) {
        if (string.toUpperCase().indexOf(name.toUpperCase())!= -1) {
        returnMatchName.add(string);
        }
    }
    
    return returnMatchName;
    }
  

    public DataAccessMgrDAOImpl getDataAccessMgrDAOImpl() {
        return dataAccessMgrDAOImpl;
    }

    public void setDataAccessMgrDAOImpl(DataAccessMgrDAOImpl dataAccessMgrDAOImpl) {
        this.dataAccessMgrDAOImpl = dataAccessMgrDAOImpl;
    }
  
    
}
