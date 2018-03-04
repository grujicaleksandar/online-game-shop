package org.gameshop.services;

import java.util.List;

import javax.transaction.Transactional;

import org.gameshop.models.Category;
import org.gameshop.models.Game;
import org.gameshop.repositories.GameRepository;
import org.hibernate.Session;
import org.springframework.stereotype.Service;

@Service
public class GameServiceImpl implements GameService {

	private GameRepository gameRepository;

	public GameServiceImpl(GameRepository gameRepository) {
		this.gameRepository = gameRepository;
	}

	@Override
	public List<Game> getAll() {
		
		return (List<Game>) gameRepository.findAll();
	}

	@Override
	public Game findById(Long id) {
		
		Game game = gameRepository.findById(id).orElse(null);
		
		return game;
	}

	@Override
	public Game findByName(String name) {
		
		Game game  = gameRepository.findByName(name);
		
		return game;
	}

	@Override
	public List<Game> findByCategory(Category category) {
		
		List<Game> games = gameRepository.findByCategory(category);
		
		return games;
	}

	@Override
	public Game addGame(Game game) {
		
	return gameRepository.save(game);
		
	}


}
