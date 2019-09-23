package cn.itcast.test;

import cn.itcast.domain.Product;
import cn.itcast.service.ProductService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class ssmTest {

    @Autowired
    private ProductService productService;

    @Test
    public void test1(){
        Product product = productService.findById(1);
        System.out.println(product);
    }

    @Test
    public void test2(){
        Product product = productService.findById(1);
        System.out.println(product);


        product.setName("123");
        productService.update(product);
        System.out.println(product);

    }

    @Test
    public void test3(){
        List<Product> all = productService.findAll();
        System.out.println(all);
    }
}
