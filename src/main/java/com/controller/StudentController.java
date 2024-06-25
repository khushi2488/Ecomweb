package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.bean.StudentBoxCricketbean;


@Controller
public class StudentController {
   @GetMapping("/boxcricketregistration")
   public String boxRegistration() {
	   return "BoxCricketReg";
   }
   
   @PostMapping("/savereg")
   public String saveRegistration(StudentBoxCricketbean studentBox ,Model model) {
	   System.out.println(studentBox.getStudentName());
	   System.out.println(studentBox.getPlayerType());
	   System.out.println(studentBox.getFoodPreference());
	   System.out.println(studentBox.getDrink());
	   boolean isError=false;
	   String alphaRegEx="[a-zA-z+";
	   if(studentBox.getStudentName()==null || studentBox.getStudentName().trim().length()==0) {
		   isError=true;
		   model.addAttribute("studentNameError","Please Enter Student Name");
		   
	   }else if(studentBox.getStudentName().matches(alphaRegEx)==false) {
		   model.addAttribute("studentNameError","Please Enter Valid Student Name");
	   }else {
		   model.addAttribute("studentNameValue",studentBox.getStudentName());
	   }
	   if(studentBox.getPlayerType()==null) {
		   isError=true;
		   model.addAttribute("playerTypeError","Please Select PlayerType");
	   }
	   else {
			model.addAttribute("playerTypeValue", studentBox.getPlayerType());
		}
	   if(studentBox.getFoodPreference() == null || studentBox.getFoodPreference().equals("-1")) {
           isError = true;
           model.addAttribute("foodPreferenceError", "Please Select Food Preference");
       }
	   else {
			model.addAttribute("foodPreferenceValue", studentBox.getFoodPreference());// regular
		}
	   if(studentBox.getDrink()==null) {
		   isError=true;
		   model.addAttribute("DrinkError","Please Select Drinktype!");
	   }
	   else {
			model.addAttribute("drinkValue", studentBox.getDrink());
		}
	   model.addAttribute("reg", studentBox);
	   if(isError==true) {
		   return "BoxCricketReg";
	   }else {
		   model.addAttribute("reg",studentBox);
		   return "RegDetail";
	   }
   
       
     
   }
   
}
