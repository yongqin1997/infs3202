package pizza.service;
 
import java.util.List;

import pizza.pojo.ProductImage;

public interface ProductImageService {

    void add(ProductImage pi);
    void delete(int id);
    void update(ProductImage pi);
    ProductImage get(int id);
}
