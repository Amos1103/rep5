package cn.itcast.service.impl;

import cn.itcast.service.HelloService;
import com.alibaba.dubbo.config.annotation.Service;

@Service//发布为服务必须使用Dubbo提供的service注解
public class HelloServiceImpl implements HelloService {
    @Override
    public String sayHello(String name) {
        return "hello"+name;
    }
}
