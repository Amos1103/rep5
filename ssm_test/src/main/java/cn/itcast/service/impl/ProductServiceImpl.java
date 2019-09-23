package cn.itcast.service.impl;

import cn.itcast.domain.Product;
import cn.itcast.mapper.ProductMapper;
import cn.itcast.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductMapper productMapper;

    public Product findById(Integer id) {
        return productMapper.findById(id);
    }

    public void update(Product product) {
        productMapper.update(product);
    }

    public List<Product> findAll() {
        return productMapper.findAll();
    }
}
