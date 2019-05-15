package com.unicloud.homework.dao;

import com.unicloud.homework.entity.Product;

import java.util.List;

public interface ProductDao {

    List<Product> queryProduct();

    Product queryByKey(String productKey);

    int insertProduct(Product product);

    int updateProduct(Product product);

    int deleteProduct(Product product);
}
