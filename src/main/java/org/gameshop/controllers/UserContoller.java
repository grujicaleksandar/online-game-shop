package org.gameshop.controllers;



import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.gameshop.formmodels.ShippingAddressForm;
import org.gameshop.formmodels.UserForm;
import org.gameshop.models.ShippingAddress;
import org.gameshop.models.User;
import org.gameshop.services.ShippingAddressService;
import org.gameshop.services.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserContoller {

	private UserService userService;
	
	private ShippingAddressService shippingAddressService;

	public UserContoller(UserService userService, ShippingAddressService shippingAddressService) {
		this.userService = userService;
		this.shippingAddressService = shippingAddressService;
	}

	@RequestMapping("signup")
	public String signUpPage(Model model) {

		UserForm user = new UserForm();

		model.addAttribute("user", user);

		return "sign-up";
	}

	@RequestMapping("/processSignUp")
	public String processSignUpPage(@Valid @ModelAttribute("user") UserForm user, BindingResult result, Model model) {

		if (result.hasErrors()) {

			System.out.println("Has errors!");
			return "sign-up";

		} else {

			System.out.println("No errors!");

			User theUser = new User(user.getFirstName(), user.getLastName(), user.getEmail(), user.getUsername(),
					user.getPassword());

			userService.saveOrUpdate(theUser);

			model.addAttribute("user", theUser);

			return "user-successful-sign-up";
		}
	}

	@RequestMapping("signin")
	public String signInPage(Model model) {

		User user = new User();

		model.addAttribute("user", user);

		return "sign-in";

	}

	@RequestMapping("/processSignIn")
	public String processSignInPage(@ModelAttribute("user") User user, Model model,HttpSession session) {

		User theUser = userService.findByUsername(user.getUsername());

		try {

			if (theUser.getUsername().equals(user.getUsername())
					&& (theUser.getPassword().equals(user.getPassword()))) {
				model.addAttribute("theuser", theUser);
				session.setAttribute("usersess", theUser.getUsername());
				return "redirect:/";

			} else {

				model.addAttribute("message", "Invalid Credentials!");
				return "sign-in";

			}
		} catch (Exception e) {
			model.addAttribute("message", "Invalid Credentials!");
			return "sign-in";
		}

	}
	@RequestMapping("/signout")
	public String signoutPage(HttpSession session){
		
		session.invalidate();
		
		return "redirect:/";
		
	}
	@RequestMapping("userinfo")
	public String UserInfoPage(HttpSession session,Model model){
		
		String username = (String) session.getAttribute("usersess");
		
		User user = userService.findByUsername(username);
		
		model.addAttribute("user",user);
		
		return "user-info";
		
	}
	@RequestMapping("/editAccount")
	public String editAccountPage(Model model,HttpSession session){
		
		String username = (String) session.getAttribute("usersess");
		
		User user = userService.findByUsername(username);
		
		model.addAttribute("user",user);
		
		return "edit-account";
		
	}
	@RequestMapping("/processEditForm")
	public String processEditFormPage(@Valid @ModelAttribute("user") User user,BindingResult result,Model model){
		
		if(result.hasErrors()){
			
			System.out.println("Has errors!");
			
			return "edit-account";
			
		}else{
		
		User theUser = new User(user.getFirstName(), user.getLastName(), user.getEmail(), user.getUsername(), user.getPassword());
		
		userService.saveOrUpdate(theUser);
		
		model.addAttribute("user",theUser);
		
		return "user-info";
		}
	}
	@RequestMapping("deleteAccount")
	public String deleteAccount(HttpSession session){
		
		String userName = (String) session.getAttribute("usersess");
		
		User user = userService.findByUsername(userName);
		
		userService.delete(user);
		
		session.invalidate();
		
		return "account-deleted";
		
		
	}
	@RequestMapping("/shipping_address")
	public String shippingAddressPage(Model model){
		
		ShippingAddressForm address = new ShippingAddressForm();
		
		model.addAttribute("address",address);
		
		
		
		return "shipping-address";
			
	}
}
