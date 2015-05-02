/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.talentvouch.dao.access;

import com.talentvouch.mapper.DataMapper;
import com.talentvouch.model.login.LoginDtls;

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

    
}
