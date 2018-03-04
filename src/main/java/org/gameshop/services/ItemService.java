package org.gameshop.services;

import java.util.List;

import org.gameshop.models.Item;

public interface ItemService {

	public Item addItem(Item item);
	List<Item> getAllItems();
	
}
