/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.talentvouch.controllers;

import com.talentvouch.dao.access.DataAccessMgrDAOImpl;
import com.talentvouch.jbcrypt.BCrypt;
import com.talentvouch.model.login.LoginDtls;
import com.talentvouch.model.login.UserDtls;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author Ramana
 */
@Controller
public class LoginController {
    
    private static final Logger logger = LogManager.getLogger(LoginController.class);
    public  DataAccessMgrDAOImpl dataAccessMgrDAOImpl;
    
    @Autowired
    public LoginController(DataAccessMgrDAOImpl dataAccessMgrDAOImpl){
        this.dataAccessMgrDAOImpl = dataAccessMgrDAOImpl;
    }
    
    @RequestMapping(value="/login", method=RequestMethod.POST)
    @ResponseBody
    public String login(@RequestParam("email") String email,@RequestParam("password") String password,HttpServletRequest request){
        
        logger.debug("Authenticating the user :"+email);
        System.err.println("Login***********"+email);
        LoginDtls loginDtls = new LoginDtls();
        loginDtls.setEmail(email);
        loginDtls.setPassword(password);
       
        if(isAuthenticatedUser(loginDtls)){
            logger.debug("User authentication is success, redirecting to the index page");
            //create session if not exist
            HttpSession session = request.getSession();
            
//            get user detail
            UserDtls usrDtls = getDataAccessMgrDAOImpl().getUserDtls(email);
            System.out.println("UserDtls:"+usrDtls.getDisplayName());
            session.setAttribute("userDtls", usrDtls);
            
            
            return "success";
                 
        }
        
        logger.debug("User authentication is failed");
        return "fail";
    
    }
    
    

    private boolean isAuthenticatedUser(LoginDtls loginDtls) {
        String userPwd = loginDtls.getPassword();
        String storedPwd = getDataAccessMgrDAOImpl().getUserPwd(loginDtls);
        
        if(null != storedPwd){
            if(BCrypt.checkpw(userPwd, storedPwd))
            return true;
        }
         return false;
        
    }

    public DataAccessMgrDAOImpl getDataAccessMgrDAOImpl() {
        return dataAccessMgrDAOImpl;
    }

    public void setDataAccessMgrDAOImpl(DataAccessMgrDAOImpl dataAccessMgrDAOImpl) {
        this.dataAccessMgrDAOImpl = dataAccessMgrDAOImpl;
    }
    
    
}
