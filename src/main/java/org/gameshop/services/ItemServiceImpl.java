package org.gameshop.services;



import java.util.List;

import org.gameshop.models.Item;
import org.gameshop.repositories.ItemRepository;
import org.springframework.stereotype.Service;

@Service
public class ItemServiceImpl implements ItemService{

	private ItemRepository itemRepository;
	
	public ItemServiceImpl(ItemRepository itemRepository) {
		
		this.itemRepository = itemRepository;
	}



	@Override
	public Item addItem(Item item) {
		
		itemRepository.save(item);
		
		return item;
	}



	@Override
	public List<Item> getAllItems() {
		
		List<Item> items = (List<Item>) itemRepository.findAll();
		
		return items;
	}
	
	
	
}
