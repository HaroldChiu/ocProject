package com.online.college.core.brand.service;

//import com.online.college.core.auth.domain.AuthUser;
import com.online.college.core.brand.domain.Brand;
import com.online.college.core.brand.domain.BrandQueryDto;
import com.online.college.core.course.domain.Course;
import com.online.college.core.course.domain.CourseQueryDto;

import java.util.List;

public interface IBrandService {

    /**
     *获取所有
     **/
    public List<Brand> queryList(BrandQueryDto queryEntity);

    /**
     *根据brandid获取
     **/
    public Brand getByBrandId(Long brandid);

    /**
     *根据brandname获取
     **/
    public Brand getByBrandName(String brandname);
}
