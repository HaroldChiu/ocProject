package com.online.college.core.brand.service;

//import com.online.college.core.auth.domain.AuthUser;
import com.online.college.core.brand.domain.Brand;

public interface IBrandService {

    /**
     *根据brandid获取
     **/
    public Brand getByBrandId(Long brandid);

    /**
     *根据brandname获取
     **/
    public Brand getByBrandName(String brandname);
}
