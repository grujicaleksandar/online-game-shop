package org.gameshop.services;

import org.gameshop.models.Category;
import org.gameshop.repositories.CategoryRepository;
import org.springframework.stereotype.Service;

@Service
public class CategoryServiceImpl implements CategoryService{

	
	private CategoryRepository categoryRepository;

	public CategoryServiceImpl(CategoryRepository categoryRepository) {
		this.categoryRepository = categoryRepository;
	}

	@Override
	public Category findById(Long id) {
		
		Category category = categoryRepository.findById(id).orElse(null);
		
		return category;
	}
	
	
	
	

}
