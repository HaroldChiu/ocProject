package com.online.college.core.branddetail.domain;

public class BrandDetail {

    private long brandId;
    private String brandHeadline;
    private String brandIntro;
    private String brandPic1;
    private String brandPic2;


    public long getBrandId() {
        return brandId;
    }

    public void setBrandId(long brandId) {
        this.brandId = brandId;
    }


    public String getBrandHeadline() {
        return brandHeadline;
    }

    public void setBrandHeadline(String brandHeadline) {
        this.brandHeadline = brandHeadline;
    }


    public String getBrandIntro() {
        return brandIntro;
    }

    public void setBrandIntro(String brandIntro) {
        this.brandIntro = brandIntro;
    }


    public String getBrandPic1() {
        return brandPic1;
    }

    public void setBrandPic1(String brandPic1) {
        this.brandPic1 = brandPic1;
    }


    public String getBrandPic2() {
        return brandPic2;
    }

    public void setBrandPic2(String brandPic2) {
        this.brandPic2 = brandPic2;
    }

}
