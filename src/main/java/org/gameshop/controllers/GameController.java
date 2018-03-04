package org.gameshop.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.gameshop.models.Category;
import org.gameshop.models.Game;
import org.gameshop.repositories.GameRepository;
import org.gameshop.services.CategoryService;
import org.gameshop.services.GameService;
import org.springframework.boot.web.servlet.server.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller

public class GameController {

	private GameService gameService;
	private CategoryService categoryService;

	public GameController(GameService gameService, CategoryService categoryService) {
		this.gameService = gameService;
		this.categoryService = categoryService;
	}

	@RequestMapping("/")
	public String getAllGames(Model model) {

		model.addAttribute("games", gameService.getAll());

		return "index";
	}

	@RequestMapping("/show")
	public String getGame(@RequestParam("id") long theId, Model model) {

		Game game = gameService.findById(theId);

		model.addAttribute("game", game);

		return "show-game";

	}

	@RequestMapping("findGame")
	public String findGameByName(@RequestParam("gamename") String name, Model model) {

		Game game = gameService.findByName(name);

		if (game == null) {
			return "show-game-error";
		}

		model.addAttribute("game", game);

		return "show-game";

	}
	@RequestMapping("/aboutus")
	public String aboutUsPage(){
		
		
		return "aboutus";
	}
	@RequestMapping("/category")
	public String showCategories(Model model){
		
		Category category = categoryService.findById(1L);
		List<Game> games = gameService.findByCategory(category);
		model.addAttribute("games1",games);
		
		Category category2 = categoryService.findById(2L);
		List<Game> games2 = gameService.findByCategory(category2);
		model.addAttribute("games2",games2);
		
		Category category3 = categoryService.findById(3L);
		List<Game> games3 = gameService.findByCategory(category3);
		model.addAttribute("games3",games3);
		
		Category category4 = categoryService.findById(4L);
		List<Game> games4 = gameService.findByCategory(category4);
		model.addAttribute("games4",games4);
		
		return "games-by-category";
	}
}
