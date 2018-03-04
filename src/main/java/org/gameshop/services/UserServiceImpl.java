package org.gameshop.services;

import org.gameshop.models.User;
import org.gameshop.repositories.UserRepository;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

	private UserRepository userRepository;

	public UserServiceImpl(UserRepository userRepository) {

		this.userRepository = userRepository;
	}

	@Override
	public User saveOrUpdate(User user) {

		userRepository.save(user);
		
		return user;
	}

	@Override
	public User findByUsername(String username) {
		
		User user = userRepository.findByUsername(username);
		
		return user;
	}

	@Override
	public void delete(User user) {
		
		userRepository.delete(user);
	
	}

	@Override
	public User findById(Long id) {
		
		User user = userRepository.findById(id).orElse(null);
		
		return user;
		
	}

}
