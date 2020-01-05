package com.online.college.core.branddetail.service;

//import com.online.college.core.brand.domain.Brand;
import com.online.college.core.branddetail.domain.BrandDetail;

public interface IBrandDetailService {

    /**
     *根据brandid获取
     **/
    public BrandDetail getByBrandId(Long id);
}
