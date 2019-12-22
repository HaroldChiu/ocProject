package com.online.college.core.order.dao;

import com.online.college.core.order.domain.Order;

import java.math.BigDecimal;

public interface OrderDao {

    /**
     *根据id获取
     **/
    public Order getByOrderId(Long orderid);

    /**
     *创建新记录
     **/
    public void createSelectivity(Order entity);

    /**
     *通过productid创建
     **/
    public Order createOrderByProductPrice(BigDecimal productprice);


}
