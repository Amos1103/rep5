package cn.itcast.mapper;

import cn.itcast.domain.Product;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface ProductMapper {



    @Select("select * from product where id=#{id}")
    Product findById(Integer id);


    @Update("update product set name = #{name}, price = #{price}, date = #{date}, description = #{description} where id = #{id} ")
    void update(Product product);


    @Select("select * from product")
    List<Product> findAll();
}
