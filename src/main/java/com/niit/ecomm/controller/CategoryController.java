package com.niit.ecomm.controller;
 
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ecomm_backend.AppConfiguration;
import com.niit.ecomm_backend.dao.CategoryDao;
import com.niit.ecomm_backend.service.CategoryService;
import com.niit.ecomm_backend.model.Category;

 
@Controller
public class CategoryController {
	@Autowired
    private CategoryService categoryService;
	
	
	@RequestMapping("/load_category")
	public ModelAndView category(){ 
		ModelAndView mv = new ModelAndView("add_category");
		return mv;
	}
	@RequestMapping("/add_category")
	@ResponseBody
/*	public String createCategory(HttpServletRequest request, 
	        @RequestParam(value="inputCategoryId", required=true) int id, 
	        @RequestParam(value="inputCategoryName", required=true) String name){*/
	public String addCategory(HttpServletRequest request){
     	Category c=new Category();
     	c.setId(Integer.parseInt(request.getParameter("inputCategoryId")));
     	c.setName(request.getParameter("inputCategoryName"));
     	if(categoryService!=null)
     		categoryService.persist(c);
     		return "Service Initiated";
     	//	
		//return "The Data is : " + request.getParameter("inputCategoryId") + " " + request.getParameter("inputCategoryName") ;
	}
	@RequestMapping("/list_category")
	public ModelAndView listCategory(){
		ModelAndView mv=new ModelAndView("list_category");
		List<Category> categories=categoryService.findAll();
		mv.addObject("categories", categories);
		return mv;
	}


}