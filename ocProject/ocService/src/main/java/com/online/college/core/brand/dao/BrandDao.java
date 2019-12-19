package com.online.college.core.brand.dao;

//import com.online.college.core.auth.domain.AuthUser;
import com.online.college.core.brand.domain.Brand;
import com.online.college.core.brand.domain.BrandQueryDto;
import com.online.college.core.course.domain.Course;
import com.online.college.core.course.domain.CourseQueryDto;

import java.util.List;

public interface BrandDao {

    /**
     *根据条件获取所有，
     *queryEntity：查询条件；
     **/
    public List<Brand> queryList(BrandQueryDto queryEntity);

    /**
     *根据id获取
     **/
    public Brand getByBrandId(Long id);

    /**
     * 根据username获取
     */
    public Brand getByBrandName(String brandName);
}
