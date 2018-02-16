/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author JVVQX
 */
public class Campaign {
    private long campaignId;
    private String campaignName;
    private Date startDate;
    private Date endDate;
    private String type;
    private String company;
    private Address campaignAddress;
    private double budget;
    private ArrayList<Donation> donation;
    private String detail;
    private String status;
    private ArrayList<String> image;

    public Campaign() {
    }

    public Campaign(long campaignId, String campaignName, Date startDate, Date endDate, String type, String company, Address campaignAddress, double budget, ArrayList<Donation> donation, String detail, String status, ArrayList<String> image) {
        this.campaignId = campaignId;
        this.campaignName = campaignName;
        this.startDate = startDate;
        this.endDate = endDate;
        this.type = type;
        this.company = company;
        this.campaignAddress = campaignAddress;
        this.budget = budget;
        this.donation = donation;
        this.detail = detail;
        this.status = status;
        this.image = image;
    }

    public long getCampaignId() {
        return campaignId;
    }

    public void setCampaignId(long campaignId) {
        this.campaignId = campaignId;
    }

    public String getCampaignName() {
        return campaignName;
    }

    public void setCampaignName(String campaignName) {
        this.campaignName = campaignName;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public Address getCampaignAddress() {
        return campaignAddress;
    }

    public void setCampaignAddress(Address campaignAddress) {
        this.campaignAddress = campaignAddress;
    }

    public double getBudget() {
        return budget;
    }

    public void setBudget(double budget) {
        this.budget = budget;
    }

    public ArrayList<Donation> getDonation() {
        return donation;
    }

    public void setDonation(ArrayList<Donation> donation) {
        this.donation = donation;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public ArrayList<String> getImage() {
        return image;
    }

    public void setImage(ArrayList<String> image) {
        this.image = image;
    }
    
    
}
