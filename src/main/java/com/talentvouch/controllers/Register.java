/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.talentvouch.controllers;

import com.talentvouch.dao.access.DataAccessMgrDAOImpl;
import com.talentvouch.jbcrypt.BCrypt;
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
public class Register {
    
    private static final Logger logger = LogManager.getLogger(ViewForwardController.class);
    public  DataAccessMgrDAOImpl dataAccessMgrDAOImpl;
   
    @Autowired
    public Register(DataAccessMgrDAOImpl dataAccessMgrDAOImpl){
        this.dataAccessMgrDAOImpl = dataAccessMgrDAOImpl;
    }
    
    @RequestMapping("/registerUser")
    public ModelAndView registerUser(LoginDtls loginDtls){
        
        ModelAndView loginModel = new ModelAndView("jobs");
       
        String encryptedPwd = BCrypt.hashpw(loginDtls.getPassword(), BCrypt.gensalt());
        
        System.err.println("Register***********"+encryptedPwd);
        loginDtls.setPassword(encryptedPwd);
        System.err.println("Registered"+getDataAccessMgrDAOImpl().registerUser(loginDtls));
        return loginModel;
        
    }

    public DataAccessMgrDAOImpl getDataAccessMgrDAOImpl() {
        return dataAccessMgrDAOImpl;
    }

    public void setDataAccessMgrDAOImpl(DataAccessMgrDAOImpl dataAccessMgrDAOImpl) {
        this.dataAccessMgrDAOImpl = dataAccessMgrDAOImpl;
    }
    
    
}
