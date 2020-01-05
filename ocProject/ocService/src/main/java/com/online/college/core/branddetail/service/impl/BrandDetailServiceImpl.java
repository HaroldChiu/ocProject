package com.online.college.core.branddetail.service.impl;

//import com.online.college.core.brand.dao.BrandDao;
//import com.online.college.core.brand.domain.Brand;
import com.online.college.core.branddetail.dao.BrandDetailDao;
import com.online.college.core.branddetail.domain.BrandDetail;
import com.online.college.core.branddetail.service.IBrandDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BrandDetailServiceImpl implements IBrandDetailService {

    @Autowired
    private BrandDetailDao entityDao;
    /**
     *根据brandid获取
     **/
    public BrandDetail getByBrandId(Long id){ return entityDao.getByBrandId(id); }
}
