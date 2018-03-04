package org.gameshop.repositories;

import java.util.List;

import org.gameshop.models.Category;
import org.gameshop.models.Game;
import org.springframework.data.repository.CrudRepository;

public interface GameRepository extends CrudRepository<Game, Long>{

	Game findByName(String name);
	
	List<Game> findByCategory(Category category);
	
	
}
