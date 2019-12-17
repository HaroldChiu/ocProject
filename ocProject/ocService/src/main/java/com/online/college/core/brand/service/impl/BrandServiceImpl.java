package com.online.college.core.brand.service.impl;

import com.online.college.core.brand.dao.BrandDao;
import com.online.college.core.brand.domain.Brand;
import com.online.college.core.brand.service.IBrandService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BrandServiceImpl implements IBrandService {
    @Autowired
    private BrandDao entityDao;
    /**
     *根据brandid获取
     **/
    public Brand getByBrandId(Long brandid){
        return entityDao.getByBrandId(brandid);
    }

    /**
     *根据brandname获取
     **/
    public Brand getByBrandName(String brandname){
        return entityDao.getByBrandName(brandname);
    }
}
