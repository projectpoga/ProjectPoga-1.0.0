/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.talentvouch.usebeans;

/**
 *
 * @author Ramana
 */
public class JobDtlsVO {
    
    private int jobId;
    private String jobTitle;
    private String refAmount;
    private String introAmount;
    private String compName;
    private String cityName;

    public int getJobId() {
        return jobId;
    }

    public void setJobId(int jobId) {
        this.jobId = jobId;
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    public String getRefAmount() {
        return refAmount;
    }

    public void setRefAmount(String refAmount) {
        this.refAmount = refAmount;
    }

    public String getIntroAmount() {
        return introAmount;
    }

    public void setIntroAmount(String introAmount) {
        this.introAmount = introAmount;
    }

    public String getCompName() {
        return compName;
    }

    public void setCompName(String compName) {
        this.compName = compName;
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }
    
    
}
