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
public class LoginController {
    
    private static final Logger logger = LogManager.getLogger(ViewForwardController.class);
    public  DataAccessMgrDAOImpl dataAccessMgrDAOImpl;
    
    @Autowired
    public LoginController(DataAccessMgrDAOImpl dataAccessMgrDAOImpl){
        this.dataAccessMgrDAOImpl = dataAccessMgrDAOImpl;
    }
    
    @RequestMapping("/login")
    public ModelAndView login(LoginDtls loginDtls){
        
        ModelAndView loginModel = new ModelAndView("index");
        System.err.println("Login***********"+loginDtls.getEmail());
        System.out.println("User authentication :"+AuthenticateUser(loginDtls));
        return loginModel;
        
    }

    private boolean AuthenticateUser(LoginDtls loginDtls) {
        String userPwd = loginDtls.getPassword();
        String storedPwd = getDataAccessMgrDAOImpl().getUserPwd(loginDtls);
        
        
        if(BCrypt.checkpw(userPwd, storedPwd))
            return true;
        else 
            return false;
        
    }

    public DataAccessMgrDAOImpl getDataAccessMgrDAOImpl() {
        return dataAccessMgrDAOImpl;
    }

    public void setDataAccessMgrDAOImpl(DataAccessMgrDAOImpl dataAccessMgrDAOImpl) {
        this.dataAccessMgrDAOImpl = dataAccessMgrDAOImpl;
    }
    
    
}
