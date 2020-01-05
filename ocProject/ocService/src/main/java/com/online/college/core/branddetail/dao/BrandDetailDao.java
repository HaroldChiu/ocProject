package com.online.college.core.branddetail.dao;

//import com.online.college.core.brand.domain.Brand;
import com.online.college.core.branddetail.domain.BrandDetail;

public interface BrandDetailDao {

    /**
     *根据id获取
     **/
    public BrandDetail getByBrandId(Long brandid);
}
