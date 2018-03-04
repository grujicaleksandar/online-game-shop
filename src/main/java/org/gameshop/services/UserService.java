package org.gameshop.services;

import org.gameshop.models.User;

public interface UserService{

	User saveOrUpdate(User user);
	
	User findByUsername(String username);
	
	void delete(User user);
	
	User findById(Long id);
	
}
