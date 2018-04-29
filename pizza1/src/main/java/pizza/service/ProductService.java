package pizza.service;

import java.util.List;

import pizza.pojo.Category;
import pizza.pojo.Product;

public interface ProductService {
    void add(Product p);
    void delete(int id);
    void update(Product p);
    Product get(int id);
    List list(int cid);

}
