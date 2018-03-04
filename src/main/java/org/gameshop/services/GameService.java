package org.gameshop.services;

import java.util.List;

import org.gameshop.models.Category;
import org.gameshop.models.Game;

public interface GameService {

	List<Game> getAll();
	
	Game findById(Long id);
	
	Game findByName(String name);

	List<Game> findByCategory(Category category);
	
	Game addGame(Game game);
}
