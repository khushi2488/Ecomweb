package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.Userbean;

@Controller
public class SessionController {

	@GetMapping("/login")
	public String Login()
	{
		return "Login";
	}
	@GetMapping("/signup")
	public String SignUp()
	{
		return "SignUp";
	}
	@GetMapping("/fp")
	public String forgetPwd()
	{
		return "forgetPassword";
	}
	@PostMapping("/SaveUser")
	public String SaveUser(Userbean userbean,Model model)
	{
		System.out.println("Username: "+userbean.getUsername());
		System.out.println("Email: "+userbean.getEmail());
//		System.out.println("Password: "+userbean.getPwd());
		model.addAttribute("user",userbean);
		return "Home";
		
	}

	@GetMapping("/sum")
	public String sum()
	{
		return "Sum";
	}
	@PostMapping("/calculateSum")
	 public String calculateSum(@RequestParam("num1") int num1, @RequestParam("num2") int num2, Model model) {
	        int sum = num1 + num2;  // calculate the sum of the two numbers
	        model.addAttribute("num1", num1);  // add the first number to the model
	        model.addAttribute("num2", num2);  // add the second number to the model
	        model.addAttribute("sum", sum);  // add the sum to the model
	        return "result";  // returns the result.jsp page
	    }
	
}