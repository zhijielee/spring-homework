package com.unicloud.homework.entity;

import java.util.Date;

public class Product {
    private String productKey;
    private String productName;
    private String markName;
    private String staticAttribute;
    private boolean status;
    private String groupName;
    private String industry;
    private int communicationMethod;
    private String decription;
    private Date dateCreatedAt;

    public String getProductKey() {
        return productKey;
    }

    public void setProductKey(String productKey) {
        this.productKey = productKey;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getMarkName() {
        return markName;
    }

    public void setMarkName(String markName) {
        this.markName = markName;
    }

    public String getStaticAttribute() {
        return staticAttribute;
    }

    public void setStaticAttribute(String staticAttribute) {
        this.staticAttribute = staticAttribute;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getGroupName() {
        return groupName;
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }

    public String getIndustry() {
        return industry;
    }

    public void setIndustry(String industry) {
        this.industry = industry;
    }

    public int getCommunicationMethod() {
        return communicationMethod;
    }

    public void setCommunicationMethod(int communicationMethod) {
        this.communicationMethod = communicationMethod;
    }

    public String getDecription() {
        return decription;
    }

    public void setDecription(String decription) {
        this.decription = decription;
    }

    public Date getDateCreatedAt() {
        return dateCreatedAt;
    }

    public void setDateCreatedAt(Date dateCreatedAt) {
        this.dateCreatedAt = dateCreatedAt;
    }
}
