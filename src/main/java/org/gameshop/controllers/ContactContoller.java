package org.gameshop.controllers;

import javax.validation.Valid;

import org.gameshop.models.Contact;
import org.gameshop.services.ContactService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ContactContoller {

	private ContactService contactService;

	public ContactContoller(ContactService contactService) {
		
		this.contactService = contactService;
	}
	
	@RequestMapping("/contact")
	public String contactUsPage(Model model){
		
		Contact contact = new Contact();
		
		model.addAttribute("cont",contact);
		
		return "contactus";
	}
	@RequestMapping("/processForm")
	public String processForm(@Valid @ModelAttribute("cont") Contact contact,BindingResult result,Model model){
		
		if(result.hasErrors()){
			
			System.out.println("Has errors!");
			return "contactus";
			
			
		}else{
			System.out.println("No errors!");
			Contact con = new Contact();
			con.setUserName(contact.getUserEmail());
			con.setUserEmail(contact.getUserEmail());
			con.setMessage(contact.getMessage());
			contactService.addContact(con);
			
			return "contact-successful";
		}
		
	
		
	}
	
	
}
