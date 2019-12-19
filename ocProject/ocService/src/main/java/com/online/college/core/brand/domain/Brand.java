package com.online.college.core.brand.domain;

import com.online.college.common.orm.BaseEntity;

public class Brand extends BaseEntity {

    /**
     *品牌id
     **/
    private long brandId;

    /**
     *品牌名称
     **/
    private String brandName;

    /**
     *品牌图片
     **/
    private String brandPicture;


    public long getBrandId() {
        return brandId;
    }

    public void setBrandId(long brandId) {
        this.brandId = brandId;
    }


    public String getBrandName() {
        return brandName;
    }

    public void setBrandName(String brandName) {
        this.brandName = brandName;
    }


    public String getBrandPicture() {
        return brandPicture;
    }

    public void setBrandPicture(String brandPicture) {
        this.brandPicture = brandPicture;
    }

}
