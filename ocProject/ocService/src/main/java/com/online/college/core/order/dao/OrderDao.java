package com.online.college.core.order.dao;

import com.online.college.core.order.domain.Order;

public interface OrderDao {

    /**
     *根据id获取
     **/
    public Order getByOrderId(Long orderid);

    /**
     *创建新记录
     **/
    public void createSelectivity(Order entity);


}
