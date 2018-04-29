package pizza.service;

import java.util.List;

import pizza.pojo.Order;
import pizza.pojo.OrderItem;

public interface OrderItemService {


    void add(OrderItem c);
    void delete(int id);
    void update(OrderItem c);
    OrderItem get(int id);
    List list();
    List<OrderItem> listByUser(int uid);
}

