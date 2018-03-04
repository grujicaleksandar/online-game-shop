package org.gameshop.repositories;


import org.gameshop.models.Item;
import org.springframework.data.repository.CrudRepository;

public interface ItemRepository extends CrudRepository<Item,Long>{

}
