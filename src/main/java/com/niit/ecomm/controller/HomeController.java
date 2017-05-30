package com.niit.ecomm.controller;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ecomm_backend.dao.CategoryDao;
import com.niit.ecomm_backend.dao.ProductDao;
import com.niit.ecomm_backend.service.CategoryService;
import com.niit.ecomm_backend.service.SupplierService;

 
@Controller
public class HomeController {
	@Autowired
    private CategoryService categoryService;
	@Autowired
	private SupplierService supplierService;
	
	/*public ModelAndView index(
			@RequestParam(value = "name", required = false, defaultValue = "World") String name) {
		System.out.println("in controller");*/

	@RequestMapping("/")
	public ModelAndView index(){ 
		ModelAndView mv = new ModelAndView("index");
		return mv;
	}
	@RequestMapping("/signin")
	public ModelAndView signin(){ 
		ModelAndView mv = new ModelAndView("signin");
		return mv;
	}
	@RequestMapping("/signup")
	public ModelAndView signup(){ 
		ModelAndView mv = new ModelAndView("signup");
		return mv;
	}
	@RequestMapping("/product")
	public ModelAndView product(){ 
		ModelAndView mv = new ModelAndView("product");
		return mv;
	}
	@RequestMapping("/inserts")
	public ModelAndView inserts(){
		ModelAndView mv=new ModelAndView("inserts");
		mv.addObject("categories",categoryService.findAll());
		mv.addObject("suppliers", supplierService.findAll());
		return mv;
	}
	@RequestMapping("/product_test")
	public ModelAndView productTest(){
		
		/*ProductDao cart=new ProductImpl();
		cart.addProduct(new Product(1, "Shirt", "Mens Wear", "Otto", 750.00, "Supplier One", "Comfort Casual Mens Wear", "image1.jpg", 100));
		cart.addProduct(new Product(2, "Shirt", "Mens Wear", "Louis Philippe", 1050.00, "Supplier Two", "Formal Mens Wear", "image2.jpg", 75));
		cart.addProduct(new Product(3, "Shirt", "Mens Wear", "Arrow", 450.00, "Supplier One", "Formal Mens Wear", "image3.jpg", 60));*/
		//request.setAttribute("products", cart.getAllProducts());
		//request.getRequestDispatcher("views/index.jsp").forward(request, response);
		ModelAndView mv=new ModelAndView("product_test");
		/*mv.addObject("cart",cart);*/
		return mv;
	}
	
} 