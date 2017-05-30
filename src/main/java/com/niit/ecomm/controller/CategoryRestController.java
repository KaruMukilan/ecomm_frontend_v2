package com.niit.ecomm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.niit.ecomm_backend.model.Category;
import com.niit.ecomm_backend.service.CategoryService;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;


@RestController
public class CategoryRestController {
	
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping(value="/category", method=RequestMethod.GET)
	//public List<Category> getAllCategory(){	
	public @ResponseBody String getAllCategory(){
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		String json = gson.toJson(categoryService.findAll());
	
		return json;		
	}
    @RequestMapping(value = "/category/{id}", method = RequestMethod.GET)
	public @ResponseBody String getCategoryById(@PathVariable("id") int id){
    	//Gson gson = new GsonBuilder().setPrettyPrinting().create();    	
		return categoryService.findById(id).toString();
		
	}

}