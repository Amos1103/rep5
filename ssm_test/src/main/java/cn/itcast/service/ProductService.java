package cn.itcast.service;

import cn.itcast.domain.Product;

import java.util.List;

public interface ProductService {

    Product findById(Integer id);


    void update(Product product);

    List<Product> findAll();
}
