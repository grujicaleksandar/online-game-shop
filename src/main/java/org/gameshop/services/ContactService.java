package org.gameshop.services;

import java.util.List;

import org.gameshop.models.Contact;

public interface ContactService {

	Contact addContact(Contact contact);
	
	List<Contact> getAll();
	
	void removeContact(Long id);
	
	
	
}
