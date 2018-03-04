package org.gameshop.controllers;

import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpSession;

import org.gameshop.formmodels.ShippingAddressForm;
import org.gameshop.models.Game;
import org.gameshop.models.Item;
import org.gameshop.models.ShippingAddress;
import org.gameshop.models.User;
import org.gameshop.repositories.UserRepository;
import org.gameshop.services.GameService;
import org.gameshop.services.ItemService;
import org.gameshop.services.ShippingAddressService;
import org.gameshop.services.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CartController {

	private GameService gameService;
	
	private ItemService itemService;
	
	private UserService userService;
	
	private ShippingAddressService shippingAddressService;
	
	public CartController(GameService gameService, ItemService itemService, UserService userService,
			ShippingAddressService shippingAddressService) {
		this.gameService = gameService;
		this.itemService = itemService;
		this.userService = userService;
		this.shippingAddressService = shippingAddressService;
	}

	@RequestMapping("/cart")
	public String cart(@RequestParam("id") long theId, Model model, HttpSession session) {

		if(session.getAttribute("usersess")==null){
			
			return "must-login";
		}
		
		Game game = gameService.findById(theId);

		// Cart cart = new Cart();

		if (session.getAttribute("cart") == null) {

			Map<String, Integer> map = new HashMap<>();
			map.put(game.getName(), game.getPrice());
			session.setAttribute("cart", map);
			model.addAttribute("cartItems", map);
			Integer sum = 0;
			for (Integer val : map.values()) {
				sum += val;
			}
			model.addAttribute("sum",sum);

		} else {
			HashMap<String, Integer> map = (HashMap<String, Integer>) session.getAttribute("cart");
			map.put(game.getName(), game.getPrice());
			session.setAttribute("cart", map);
			model.addAttribute("cartItems", map);
			Integer sum = 0;
			for (Integer val : map.values()) {
				sum += val;
			}
			model.addAttribute("sum",sum);

		}
		
		
		return "game-cart";

	}

	@RequestMapping("/cartFromNav")
	public String cartFromNav(HttpSession session, Model model) {
		
		if(session.getAttribute("usersess")==null){
			
			return "must-login";
		}
		if(session.getAttribute("cart") ==null){
			return "game-cart-empty";
		}
		
		HashMap<String, Integer> map = (HashMap<String, Integer>) session.getAttribute("cart");
		model.addAttribute("cartItems", map);
		Integer sum = 0;
		for (Integer val : map.values()) {
			sum += val;
		}
		model.addAttribute("sum",sum);

		return "game-cart";
	}

	@RequestMapping("/deleteItem/{name}")
	public String deleteItemFromCart(@PathVariable("name") String name, Model model, HttpSession session) {

		HashMap<String, Integer> map = (HashMap<String, Integer>) session.getAttribute("cart");
		map.remove(name);
		session.setAttribute("cart", map);
		model.addAttribute("cartItems", map);
		Integer sum = 0;
		for (Integer val : map.values()) {
			sum += val;
		}
		model.addAttribute("sum",sum);
		return "redirect:/cartFromNav";
	}
	
	@RequestMapping("/checkout")
	public String checkOut(@ModelAttribute("address") ShippingAddressForm address,HttpSession session){

	String username = (String) session.getAttribute("usersess");
	User user = userService.findByUsername(username);
	
	ShippingAddress theAddress = new ShippingAddress();
	theAddress.setStateName(address.getStateName());
	theAddress.setCityName(address.getCityName());
	theAddress.setStreetName(address.getStreetName());
	theAddress.setZipCode(address.getZipCode());
	theAddress.setUser(user);
	
	shippingAddressService.addAddress(theAddress);
	
	HashMap<String, Integer> map = (HashMap<String, Integer>) session.getAttribute("cart");

	for (Entry<String, Integer> entry : map.entrySet())
		{
		
		Game game  = gameService.findByName(entry.getKey());
		
		Item item = new Item();
		
		item.setGameId(game.getId());
		item.setUserId(user.getId());
		
		itemService.addItem(item);
		
		
		}
		return "checkout";
		
	}
	@RequestMapping("/items")
	public String itemsFormCart(){
		
		
		
		
		return "bought-items";
		
	}
	

}
