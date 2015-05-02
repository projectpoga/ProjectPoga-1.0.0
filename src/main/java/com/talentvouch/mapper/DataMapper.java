/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.talentvouch.mapper;

import com.talentvouch.model.login.LoginDtls;

/**
 *
 * @author Ramana
 */
public interface DataMapper {

    /**
     *This method returns the login credentials of the particular user
     * @param loginDtls
     * @return LoginDtls
     */
    public LoginDtls getLoginCredentials(LoginDtls loginDtls);
}
