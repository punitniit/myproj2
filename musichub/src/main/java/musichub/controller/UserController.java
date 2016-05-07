package musichub.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import musichub.mvc.model.Product;
import musichub.mvc.service.ProductService;

@Controller
public class UserController {

	@Autowired
	ProductService productService;
	
	@RequestMapping("/login")
	public ModelAndView route1(){
		
		return new ModelAndView("login");
		
	}
	
	@RequestMapping("/register")
	public ModelAndView route2(){
		
		return new ModelAndView("register");
		
	}
	
	@RequestMapping("/products/getAllProducts")	
	public ModelAndView route3(){
				
		List<Product> products = productService.getAllProducts();
//		products.add(new Product(1001, "guitar", 3000, "guitar", "string"));
//		products.add(new Product(1002, "piano", 4500, "piano", "keyboard instrument"));
//		products.add(new Product(1003, "flute", 9000, "flute","woodwind"));
//		products.add(new Product(1004, "tabla", 2500, "tabla", "percussion"));		
		Gson gs = new Gson();
		String json = gs.toJson(products);
		System.out.println(json.toString());
		String listofprod = json.toString();
		return new ModelAndView("products","listofprod",listofprod);
		
	}
	
	@RequestMapping("/products/productinfo")
	public ModelAndView route4(@ModelAttribute("prod") Product prod){
				
		return new ModelAndView("productinfo");
		
	}
	
	@RequestMapping("/products/saveproduct")
	public ModelAndView route5(){
				
		productService.getProductDao().saveProduct(new Product(1001, "guitar", 3000, "guitar", "string"));
		productService.getProductDao().saveProduct(new Product(1002, "piano", 4500, "piano", "keyboard instrument"));
		productService.getProductDao().saveProduct(new Product(1003, "flute", 9000, "flute","woodwind"));
		productService.getProductDao().saveProduct(new Product(1004, "tabla", 2500, "tabla", "percussion"));
		return new ModelAndView("success");
		
	}
	
}
