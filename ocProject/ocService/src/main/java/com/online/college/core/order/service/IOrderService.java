package com.online.college.core.order.service;

import com.online.college.core.order.domain.Order;

public interface IOrderService {

    /**
     *根据orderid获取
     **/
    public Order getByOrderId(Long orderid);

    /**
     *创建
     **/
    public void createSelectivity(Order entity);
}
