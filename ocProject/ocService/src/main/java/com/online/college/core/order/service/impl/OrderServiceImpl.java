package com.online.college.core.order.service.impl;

import com.online.college.core.brand.dao.BrandDao;
import com.online.college.core.order.dao.OrderDao;
import com.online.college.core.order.domain.Order;
import com.online.college.core.order.service.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderServiceImpl implements IOrderService {
    @Autowired
    private OrderDao entityDao;
    /**
     *根据orderid获取
     **/
    public Order getByOrderId(Long orderid){
        return entityDao.getByOrderId(orderid);
    }

}
