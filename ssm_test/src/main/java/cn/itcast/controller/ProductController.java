package cn.itcast.controller;

import cn.itcast.domain.Product;
import cn.itcast.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {


    @Autowired
    private ProductService productService;

    @RequestMapping("/findAll")
    public String findAll(Model model){

        List<Product> accountList = productService.findAll();
        model.addAttribute("p", accountList);
        return "list";
    }

    @RequestMapping("/find")
    public String findById(Integer id, Model model){
        Product product = productService.findById(id);
        model.addAttribute("product",product);
        return "update";
    }

    @RequestMapping("/update")
    public String update(Product product){
        productService.update(product);

        return "redirect:/product/findAll";
    }
}
