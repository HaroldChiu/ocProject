package com.online.college.core.brand.dao;

//import com.online.college.core.auth.domain.AuthUser;
import com.online.college.core.brand.domain.Brand;

public interface BrandDao {

    /**
     *根据id获取
     **/
    public Brand getByBrandId(Long id);

    /**
     * 根据username获取
     */
    public Brand getByBrandName(String brandName);
}
