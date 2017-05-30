package com.niit.ecomm.controller;
 
import javax.servlet.http.HttpServletRequest;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ecomm_backend.AppConfiguration;
import com.niit.ecomm_backend.dao.SupplierDao;
import com.niit.ecomm_backend.service.SupplierService;
import com.niit.ecomm_backend.model.Supplier;

 
@Controller
public class SupplierController {
	@Autowired
    private SupplierService supplierService;
	
	
	@RequestMapping("/supplier")
	public ModelAndView supplier(){ 
		ModelAndView mv = new ModelAndView("add_supplier");
		return mv;
	}
	/*
	@RequestMapping("/supplier/add")
	public ModelAndView addSupplier(){ 
		ModelAndView mv = new ModelAndView("add_supplier");
		return mv;
	}
	*/
	@RequestMapping("/add_supplier")
	@ResponseBody
/*	public String createSupplier(HttpServletRequest request, 
	        @RequestParam(value="inputSupplierId", required=true) int id, 
	        @RequestParam(value="inputSupplierName", required=true) String name){*/
	public String createSupplier(HttpServletRequest request){
     	Supplier c=new Supplier();
     	c.setId(Integer.parseInt(request.getParameter("inputSupplierId")));
     	c.setName(request.getParameter("inputSupplierName"));
     	if(supplierService!=null)
     		supplierService.persist(c);
     	return "Service Initiated";
     	//	
		//return "The Data is : " + request.getParameter("inputSupplierId") + " " + request.getParameter("inputSupplierName") ;
	}
	

}