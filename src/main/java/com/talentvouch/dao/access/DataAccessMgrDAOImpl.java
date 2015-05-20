/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.talentvouch.dao.access;

import com.talentvouch.mapper.DataMapper;
import com.talentvouch.model.login.LoginDtls;
import com.talentvouch.model.search.SearchJobInputDtls;
import com.talentvouch.usebeans.CategoryVO;
import com.talentvouch.usebeans.JobDtlsVO;
import com.talentvouch.usebeans.RefinedJobDtlsVO;
import java.util.List;

/**
 *
 * @author Ramana
 */

public class DataAccessMgrDAOImpl implements DataAccessMgrDAO{
    private DataMapper dataMapper;

    /**
     *This method is to return the LoginDtls of the register user based on user name
     * @param loginDtls
     * @return LoginDtls
     */
    @Override
    public LoginDtls getLoginCredentials(LoginDtls loginDtls) {
        return getDataMapper().getLoginCredentials(loginDtls);
    }

   
    
    /**
     *
     * @return dataMapper
     */
    public DataMapper getDataMapper() {
        return dataMapper;
    }

    /**
     *
     * @param dataMapper
     */
    public void setDataMapper(DataMapper dataMapper) {
        this.dataMapper = dataMapper;
    }

    @Override
    public List<CategoryVO> getCategoryDetails() {
        return getDataMapper().getCategoryDetails();
    }

    @Override
    public List<JobDtlsVO> getTopJobs() {
        
        return getDataMapper().getTopJobs();
    }

    @Override
    public List<JobDtlsVO> getJobsWithIntroReward() {
        return getDataMapper().getJobsWithIntroReward();
    }

    @Override
    public List<RefinedJobDtlsVO> getRelevantJobs(SearchJobInputDtls searchJobInputDtls) {
        return getDataMapper().getRelevantJobs(searchJobInputDtls);
    }
    @Override
    public List<JobDtlsVO> getFresherJobs() {
        return getDataMapper().getFresherJobs();
    }


    
    
}
