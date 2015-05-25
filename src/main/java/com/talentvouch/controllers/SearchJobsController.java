/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.talentvouch.controllers;

import com.talentvouch.dao.access.DataAccessMgrDAOImpl;
import com.talentvouch.model.search.SearchJobInputDtls;
import com.talentvouch.usebeans.RefinedJobDtlsVO;
import java.util.List;
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
public class SearchJobsController {
    private static final Logger logger = LogManager.getLogger(ViewForwardController.class);
    public  DataAccessMgrDAOImpl dataAccessMgrDAOImpl;
   
    @Autowired
    public SearchJobsController(DataAccessMgrDAOImpl dataAccessMgrDAOImpl){
		this.dataAccessMgrDAOImpl = dataAccessMgrDAOImpl;
	}
    
     @RequestMapping("/search")
    public ModelAndView login(SearchJobInputDtls searchJobInputDtls) throws Exception {
        
      List<RefinedJobDtlsVO> refinedJobsDtls =  getDataAccessMgrDAOImpl().getRelevantJobs(searchJobInputDtls);
      
      
      ModelAndView searchModel = new ModelAndView("search");
      
      //add category dtls list
      searchModel.addObject("categoryModelList", getDataAccessMgrDAOImpl().getCategoryDetails());
      searchModel.addObject("refinedJobs", refinedJobsDtls);
      searchModel.addObject("jobsCountByLocList", getDataAccessMgrDAOImpl().getJobCountByLocation());
      searchModel.addObject("jobsCountByJobTitleList", getDataAccessMgrDAOImpl().getJobCountByJobTitle());
      
       return searchModel;
        
    }

    public DataAccessMgrDAOImpl getDataAccessMgrDAOImpl() {
        return dataAccessMgrDAOImpl;
    }

    public void setDataAccessMgrDAOImpl(DataAccessMgrDAOImpl dataAccessMgrDAOImpl) {
        this.dataAccessMgrDAOImpl = dataAccessMgrDAOImpl;
    }
    
}
