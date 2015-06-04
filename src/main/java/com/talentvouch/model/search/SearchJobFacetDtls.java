/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.talentvouch.model.search;

/**
 *
 * @author Ramana
 */
public class SearchJobFacetDtls {
    
    private String locationIds;
    private String jobTitles;
    private String categoryIDs;
    private String jobPostedDuration;
    private String salary;
    private double vouchMoneyRange;

    public String getJobPostedDuration() {
        return jobPostedDuration;
    }

    public void setJobPostedDuration(String jobPostedDuration) {
        this.jobPostedDuration = jobPostedDuration;
    }

    
    public String getLocationIds() {
        return locationIds;
    }

    public void setLocationIds(String locationIds) {
        this.locationIds = locationIds;
    }

    public String getJobTitles() {
        return jobTitles;
    }

    public void setJobTitles(String jobTitles) {
        this.jobTitles = jobTitles;
    }

    public String getCategoryIDs() {
        return categoryIDs;
    }

    public void setCategoryIDs(String categoryIDs) {
        this.categoryIDs = categoryIDs;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public double getVouchMoneyRange() {
        return vouchMoneyRange;
    }

    public void setVouchMoneyRange(double vouchMoneyRange) {
        this.vouchMoneyRange = vouchMoneyRange;
    }

    
}
