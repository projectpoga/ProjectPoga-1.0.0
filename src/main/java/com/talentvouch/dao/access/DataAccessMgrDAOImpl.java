/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.talentvouch.dao.access;

import com.talentvouch.mapper.DataMapper;
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

    @Override
    public Integer registerUser(LoginDtls loginDtls) {
        return getDataMapper().registerUser(loginDtls);
    }

    @Override
    public String getUserPwd(LoginDtls loginDtls) {
        return getDataMapper().getUserPwd(loginDtls);
    }

    @Override
    public List<JobsCount> getJobCountByLocation() {
        return getDataMapper().getJobCountByLocation();
    }

    @Override
    public List<JobsCount> getJobCountByJobTitle() {
        return getDataMapper().getJobCountByJobTitle();
    }

    @Override
    public List<RefinedJobDtlsVO> getRelevantJobsByfacets(SearchJobFacetDtls SearchJobFacetDtls) {
       
        return getDataMapper().getRelevantJobsByfacets(SearchJobFacetDtls);
    }

    @Override
    public UserDtls getUserDtls(String userName) {
        
        return getDataMapper().getUserDtls(userName);
    }


    
    
}
