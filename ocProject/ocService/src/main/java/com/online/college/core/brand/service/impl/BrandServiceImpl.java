package com.online.college.core.brand.service.impl;

import com.online.college.common.storage.QiniuStorage;
import com.online.college.core.brand.dao.BrandDao;
import com.online.college.core.brand.domain.Brand;
import com.online.college.core.brand.domain.BrandQueryDto;
import com.online.college.core.brand.service.IBrandService;
import com.online.college.core.consts.CourseEnum;
import com.online.college.core.course.domain.Course;
import com.online.college.core.course.domain.CourseQueryDto;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BrandServiceImpl implements IBrandService {
    @Autowired
    private BrandDao entityDao;
    /**
     *获取品牌图片
     **/
    private void prepareBrandPicture(Brand brand){
        if(null != brand && StringUtils.isNotEmpty(brand.getBrandPicture())){
            brand.setBrandPicture(QiniuStorage.getUrl(brand.getBrandPicture()));
        }
    }
    /**
     *根据brandid获取
     **/
    public Brand getByBrandId(Long brandid){
        Brand brand = entityDao.getByBrandId(brandid);
        prepareBrandPicture(brand);
        return brand;
    }

    public List<Brand> queryList(BrandQueryDto queryEntity){ return entityDao.queryList(queryEntity);
    }

    /**
     *根据brandname获取
     **/
    public Brand getByBrandName(String brandname){
        return entityDao.getByBrandName(brandname);
    }
}
