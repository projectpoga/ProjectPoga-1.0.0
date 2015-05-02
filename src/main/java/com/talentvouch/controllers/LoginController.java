/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.talentvouch.controllers;


import com.talentvouch.dao.access.DataAccessMgrDAOImpl;
import org.springframework.web.servlet.mvc.SimpleFormController;
import com.talentvouch.model.login.LoginDtls;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
/**
 *
 * @author Ramana
 */
public class LoginController extends SimpleFormController {

   private static final Logger logger = LogManager.getLogger(LoginController.class.getName());
    public  DataAccessMgrDAOImpl dataAccessMgrDAOImpl;
    
    
    public LoginController() {
        //Initialize controller properties here or 
        //in the Web Application Context
        
        System.out.println("inside Logincontroller");
        setCommandClass(LoginDtls.class);
        //setCommandName("MyCommandName");
        //setSuccessView("successView");
        //setFormView("formView");
    }
    
    @Override
    protected void doSubmitAction(Object command) throws Exception {
        LoginDtls loginDtls = (LoginDtls) command;
        logger.info("*****Authenticating the user...");
        System.out.println("Authenticating the user");
        loginDtls = getDataAccessMgrDAOImpl().getLoginCredentials(loginDtls);
        if(null != loginDtls)
            setSuccessView("loginSuccess");
        else
            setSuccessView("resgister");
    }

    public DataAccessMgrDAOImpl getDataAccessMgrDAOImpl() {
        return dataAccessMgrDAOImpl;
    }

    public void setDataAccessMgrDAOImpl(DataAccessMgrDAOImpl dataAccessMgrDAOImpl) {
        this.dataAccessMgrDAOImpl = dataAccessMgrDAOImpl;
    }
    
}
