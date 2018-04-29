package pizza.service;

import java.util.List;

import pizza.pojo.Order;
import pizza.pojo.OrderItem;

public interface OrderService {

    void add(Order c);
    void delete(int id);
    void update(Order c);
    Order get(int id);
    List list();
}

