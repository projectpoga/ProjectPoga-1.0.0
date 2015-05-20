/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.talentvouch.controllers;


import com.talentvouch.dao.access.DataAccessMgrDAOImpl;
import com.talentvouch.model.login.LoginDtls;
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
    
    @RequestMapping("/login")
    public ModelAndView login(LoginDtls loginDtls) throws Exception {
        
       
        logger.debug("*****Authenticating the user...");
        System.out.println("Authenticating the user"+loginDtls.getUserName());
     LoginDtls  loginDtls1 =  getDataAccessMgrDAOImpl().getLoginCredentials(loginDtls);
     System.out.println("pwd:"+loginDtls1.getPassword());
       return new ModelAndView("logi");
        
    }
    @RequestMapping("/index")
    public ModelAndView index() throws Exception {
        
        
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
  

    public DataAccessMgrDAOImpl getDataAccessMgrDAOImpl() {
        return dataAccessMgrDAOImpl;
    }

    public void setDataAccessMgrDAOImpl(DataAccessMgrDAOImpl dataAccessMgrDAOImpl) {
        this.dataAccessMgrDAOImpl = dataAccessMgrDAOImpl;
    }
    
}
