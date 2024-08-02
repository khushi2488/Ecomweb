package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.EUserBean;
import com.bean.ProductCartBean;
import com.dao.CartDao;
import com.service.EmailService;
import jakarta.servlet.http.HttpSession;

@Controller
public class PaymentController {
	@Autowired
	EmailService emailService;
	@Autowired
	CartDao cartDao;
	@GetMapping("/checkout")
	public String checkout(HttpSession session,Model model) {
		EUserBean userBean = (EUserBean) session.getAttribute("user");
		Integer userId = userBean.getUserId();
		List<ProductCartBean> products = cartDao.myCart(userId);
		model.addAttribute("products",products);
		return "Checkout";
	}
	@PostMapping("/payment")
    public String payment(@RequestParam("creditCardNum") String creditCardNum,
                                 @RequestParam("expiredDate") String expiredDate,
                                 @RequestParam("cvv") String cvv) {
        // Process payment logic here (for simplicity, this is omitted)

        // Redirect to the input email page
        return "redirect:/inputemail";
    }
	
	@GetMapping("/inputemail")
	public String inputEmail() {

		return "InputEmail";
	}

	@PostMapping("/sendmail")
	public String sendMail(@RequestParam("email") String email) {
		System.out.println(email);
		emailService.sendDemoMail(email, "Thank you for your payment. Your transaction has been successfully processed.");
		
		return "Success";
	}
}