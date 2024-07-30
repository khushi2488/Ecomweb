package com.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.service.FileUploadService;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

import com.bean.EProductBean;
import com.dao.EProductDao;
@Controller
public class EProductController {
	@Autowired
	FileUploadService FileUploadService; 
	
	@Autowired
	EProductDao productDao;
	@GetMapping("/newproduct") // url->browser
	public String newProduct() {// method name
		return "NewProduct";// jsp name
	}
	

	@PostMapping("/saveproduct")
	public String saveProduct(EProductBean productBean,@RequestParam("masterImage") MultipartFile masterImage) {
		
		FileUploadService.uploadProductImage(masterImage);
		productBean.setProductImagePath("/images/products/" + masterImage.getOriginalFilename());
		productDao.addProduct(productBean);
		return "redirect:/products";// X
	}

	@GetMapping("/products")
	public String listProducts(Model model) {
		List<EProductBean> products  = productDao.getAllProducts();//return type 

		model.addAttribute("products",products);

		return "EcomListProducts";
	}
	
	
	@GetMapping("/deleteproduct")
	public String deleteProducts(@RequestParam("productId") Integer productId) {
		
		productDao.deleteProduct(productId);
		
		System.out.println("deleteProduct() =>"+productId);
		
		return "redirect:/products";
	}
	@GetMapping("/viewproduct")
	public String viewProduct(@RequestParam("productId") Integer productId, Model model) {

		// id->details->table : products
		// select * from products where productId = ?
		EProductBean productBean = productDao.getProductById(productId);
		model.addAttribute("product", productBean);

		return "ViewProduct";
	}

     
	


}
