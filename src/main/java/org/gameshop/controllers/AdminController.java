package org.gameshop.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.gameshop.models.Category;
import org.gameshop.models.Contact;
import org.gameshop.models.Game;
import org.gameshop.models.Item;
import org.gameshop.models.User;
import org.gameshop.repositories.ItemRepository;
import org.gameshop.services.CategoryService;
import org.gameshop.services.ContactService;
import org.gameshop.services.GameService;
import org.gameshop.services.ItemService;
import org.gameshop.services.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdminController {

	
	private ItemService itemService;
	
	private GameService gameService;
	
	private UserService userService;
	
	private CategoryService categoryService;
	
	private ContactService contactService;
	
	public AdminController(ItemService itemService, GameService gameService, UserService userService,
			CategoryService categoryService, ContactService contactService) {
		this.itemService = itemService;
		this.gameService = gameService;
		this.userService = userService;
		this.categoryService = categoryService;
		this.contactService = contactService;
	}
	
	@RequestMapping("/admin")
	public String adminSignInPage(){
		
		return "admin-signin";
		
	}
	@RequestMapping("/processAdminInfo")
	public String processAdminInfo(@RequestParam("username") String username,@RequestParam("password") String password,Model model,HttpSession session){
		
		session.setAttribute("adminsess", username);
		
		if(username.equals("admin") && password.equals("admin123")){
			
			return "welcome";
			
		}else{
			model.addAttribute("message","Invalid Credentials!");
			return "admin-signin";
		}
		
		
	}
	
	@RequestMapping("/showFormForGame")
	public String showFormForGame(Model model,HttpSession session){
		
		Game game = new Game();
		
		model.addAttribute("game",game);
		
		if(session.getAttribute("adminsess") ==null){
			return "redirect:/";
		}
		
		return "add-game";
		
	}
	@RequestMapping("/addingGame")
	public String addingGame(@ModelAttribute("game") Game game,@RequestParam("category") int categoty_id,Model model,HttpSession session){
		
		Game theGame = new Game();
		
		theGame.setName(game.getName());
		theGame.setPrice(game.getPrice());
		theGame.setImage_url(game.getImage_url());
		theGame.setDescription(game.getDescription());
		
		Category category = categoryService.findById((long) categoty_id);
		
		theGame.setCategory(category);

		gameService.addGame(theGame);
		
		model.addAttribute("game",theGame);
		
		if(session.getAttribute("adminsess") ==null){
			return "redirect:/";
		}
		return "game-added";
	}
	
	@RequestMapping("/messages")
	public String viewMessages(Model model,HttpSession session){
		
	List<Contact> messages = contactService.getAll();
		
		model.addAttribute("messages",messages);
		
		if(session.getAttribute("adminsess") ==null){
			return "redirect:/";
		}
		
		return "show-messages";
	}
	
	@RequestMapping("/deleteMessage/{id}")
	public String deleteMessage(@PathVariable("id") Long id,HttpSession session){
		
		if(session.getAttribute("adminsess") ==null){
			return "redirect:/";
		}else{
		
		contactService.removeContact(id);
		
		return "redirect:/messages";
		}
	}
	
	@RequestMapping("/adminpage")
	public String adminPage(HttpSession session){
		
		if(session.getAttribute("adminsess") ==null){
			return "redirect:/";
		}
		
		return "admin-page";
	}
	
	@RequestMapping("/admin-logout")
	public String adminLogout(HttpSession session){
		
		session.invalidate();
		
		return "redirect:/";
	}
	
	
}
