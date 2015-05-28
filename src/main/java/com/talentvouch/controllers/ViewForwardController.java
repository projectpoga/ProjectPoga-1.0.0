/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.talentvouch.controllers;


import com.talentvouch.dao.access.DataAccessMgrDAOImpl;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
    
    @RequestMapping("/loginIndex")
    public ModelAndView loginIndex() throws Exception {
        
       //create session if not exist
       return new ModelAndView("index");
        
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
  

    public DataAccessMgrDAOImpl getDataAccessMgrDAOImpl() {
        return dataAccessMgrDAOImpl;
    }

    public void setDataAccessMgrDAOImpl(DataAccessMgrDAOImpl dataAccessMgrDAOImpl) {
        this.dataAccessMgrDAOImpl = dataAccessMgrDAOImpl;
    }
  
    
}
