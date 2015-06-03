/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.talentvouch.dao.access;

import com.talentvouch.model.login.LoginDtls;
import com.talentvouch.model.login.UserDtls;
import com.talentvouch.model.search.JobsCount;
import com.talentvouch.model.search.SearchJobFacetDtls;
import com.talentvouch.model.search.SearchJobInputDtls;
import com.talentvouch.usebeans.CategoryVO;
import com.talentvouch.usebeans.JobDtlsVO;
import com.talentvouch.usebeans.RefinedJobDtlsVO;
import java.util.List;

/**
 *
 * @author Ramana
 */
public interface DataAccessMgrDAO {

    /**
     *
     * @param loginDtls
     * @return LoginDtls
     */
    public LoginDtls getLoginCredentials(LoginDtls loginDtls);
    
    public List<CategoryVO> getCategoryDetails();
    
    public List<JobDtlsVO> getTopJobs();
    
    public List<JobDtlsVO> getJobsWithIntroReward();
    
    public List<JobDtlsVO> getFresherJobs();
    
    public List<RefinedJobDtlsVO> getRelevantJobs(SearchJobInputDtls searchJobInputDtls);
    
    public Integer registerUser(LoginDtls loginDtls);
    
    public String getUserPwd(LoginDtls loginDtls);
    
    public List<JobsCount> getJobCountByLocation();
    
    public List<JobsCount> getJobCountByJobTitle();
    
    public List<RefinedJobDtlsVO> getRelevantJobsByfacets(SearchJobFacetDtls SearchJobFacetDtls);
     
    public UserDtls getUserDtls(String userName);  
    
}
