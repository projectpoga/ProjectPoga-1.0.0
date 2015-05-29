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
    private String jobPostedDate;
    private double salary;
    private double vouchMoneyRange;

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

    public String getJobPostedDate() {
        return jobPostedDate;
    }

    public void setJobPostedDate(String jobPostedDate) {
        this.jobPostedDate = jobPostedDate;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public double getVouchMoneyRange() {
        return vouchMoneyRange;
    }

    public void setVouchMoneyRange(double vouchMoneyRange) {
        this.vouchMoneyRange = vouchMoneyRange;
    }

    
}
