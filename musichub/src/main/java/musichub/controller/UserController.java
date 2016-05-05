package musichub.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {

	@RequestMapping("/login")
	public ModelAndView route1(){
		
		return new ModelAndView("login");
		
	}
	
	@RequestMapping("/register")
	public ModelAndView route2(){
		
		return new ModelAndView("register");
		
	}
	
	@RequestMapping("/products")
	public ModelAndView route3(){
		
		return new ModelAndView("products");
		
	}
	
}
