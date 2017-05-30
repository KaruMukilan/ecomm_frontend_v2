package com.niit.ecomm.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialException;

import org.apache.catalina.connector.Request;
import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ecomm_backend.model.Category;
import com.niit.ecomm_backend.model.Product;
import com.niit.ecomm_backend.service.CategoryService;
import com.niit.ecomm_backend.service.ProductService;
import com.niit.ecomm_backend.service.SupplierService;

@Controller
public class ProductController {
	@Autowired
    private CategoryService categoryService;
	@Autowired
	private SupplierService supplierService;
	@Autowired
	private ProductService productService;
/*	@Autowired
	SessionFactory sessionFactory;*/
/*	
	@RequestMapping("load_product")
	@ResponseBody
	public String createCategory(HttpServletRequest request, 
	        @RequestParam(value="inputCategoryId", required=true) int id, 
	        @RequestParam(value="inputCategoryName", required=true) String name){
	public String addCategory(HttpServletRequest request){
     	Category c=new Category();
     	c.setId(Integer.parseInt(request.getParameter("inputCategoryId")));
     	c.setName(request.getParameter("inputCategoryName"));
     	if(categoryService!=null)
     		categoryService.persist(c);
     		return "Service Initiated";
     	//	
		//return "The Data is : " + request.getParameter("inputCategoryId") + " " + request.getParameter("inputCategoryName") ;
	}*/
	@RequestMapping(value = "/product_update", method = RequestMethod.POST)
	public  String updateProduct(@RequestParam("inputProductImage") MultipartFile file, HttpServletRequest request, HttpSession session) {
	//Blob blob = Hibernate.createBlob(file.getInputStream());
		Product product=new Product();
		product.setId(Integer.parseInt(request.getParameter("inputProductId")));
		product.setName(request.getParameter("inputProductName"));				
		product.setCategory(categoryService.findById(Integer.parseInt(request.getParameter("inputProductCategory"))));
		product.setSupplier(supplierService.findById(Integer.parseInt(request.getParameter("inputProductSupplier"))));
		product.setPrice(Double.parseDouble(request.getParameter("inputProductPrice")));
		//product.setImageName(file.getOriginalFilename());
		
		String path=session.getServletContext().getRealPath("/"); 
        String filename="pro"+Math.random()+file.getOriginalFilename();  
        product.setImageName(filename);
        System.out.println(path+" "+filename);  

        byte barr[];
		try { 
			barr = file.getBytes();
	        BufferedOutputStream bout=new BufferedOutputStream(  
	                 new FileOutputStream(path+"/resources/uploads/products/"+filename));  
	        bout.write(barr);  
	        bout.flush();  
	        bout.close();  
		} catch (IOException e) {			
			e.printStackTrace();
		}  
		product.setImageType(file.getContentType());
		/*productService.persist(product);*/
		productService.update(product);		
		//return new ModelAndView("list_products");
		return "redirect:product_list";
	}
	@RequestMapping(value="/product_delete")
	public ModelAndView deleteProduct(HttpServletRequest request){
		productService.delete(productService.findById(Integer.parseInt(request.getParameter("id"))));
		return new ModelAndView("list_products");			
	}
	
	@RequestMapping(value="/product_edit")
	public ModelAndView editProducts(HttpServletRequest request){	
		int id=Integer.parseInt(request.getParameter("id"));
		ModelAndView mv=new ModelAndView("edit_product");
		mv.getModelMap().addAttribute("product", productService.findById(id));
		mv.getModelMap().addAttribute("categories", categoryService.findAll());
		mv.getModelMap().addAttribute("suppliers", supplierService.findAll());
		//System.out.println("Calling");
		return mv;
	}
	@RequestMapping(value="/product_list")
	public ModelAndView listProducts(){
		List<Product> list=(List<Product>) productService.findAll();
		ModelAndView mv=new ModelAndView("list_products");	
		mv.getModelMap().addAttribute("list", list);
		mv.getModelMap().addAttribute("clist", categoryService.findAll());
		mv.getModelMap().addAttribute("slist", supplierService.findAll());
		mv.getModelMap().addAttribute("productService", productService);
		return mv;
	}
//	public String addProduct(@ModelAttribute("product") Product product, @RequestParam("inputProductImage") MultipartFile file, HttpServletRequest request) {
	@RequestMapping(value = "/product_add", method = RequestMethod.POST)
	public  ModelAndView addProduct(@RequestParam("inputProductImage") MultipartFile file, HttpServletRequest request, HttpSession session) {
		
	 
		//Blob blob = Hibernate.createBlob(file.getInputStream());
		Product product=new Product();
		product.setId(Integer.parseInt(request.getParameter("inputProductId")));
		product.setName(request.getParameter("inputProductName"));				
		product.setCategory(categoryService.findById(Integer.parseInt(request.getParameter("inputProductCategory"))));
		product.setSupplier(supplierService.findById(Integer.parseInt(request.getParameter("inputProductSupplier"))));
		product.setPrice(Double.parseDouble(request.getParameter("inputProductPrice")));
		//product.setImageName(file.getOriginalFilename());
		
		String path=session.getServletContext().getRealPath("/"); 
        String filename="pro"+Math.random()+file.getOriginalFilename();  
        product.setImageName(filename);
        System.out.println(path+" "+filename);  

        byte barr[];
		try { 
			barr = file.getBytes();
	        BufferedOutputStream bout=new BufferedOutputStream(  
	                 new FileOutputStream(path+"/resources/uploads/products/"+filename));  
	        bout.write(barr);  
	        bout.flush();  
	        bout.close();  
		} catch (IOException e) {			
			e.printStackTrace();
		}  
		product.setImageType(file.getContentType());
		productService.persist(product);
		
		return new ModelAndView("list_products");	
}
}
	
