package musichub.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

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
				
		Gson gs = new Gson();
		String json = gs.toJson(productService.getAllProducts());
		System.out.println(json.toString());
		String listofprod = json.toString();
		return new ModelAndView("products","listofprod",listofprod);
	}
}
