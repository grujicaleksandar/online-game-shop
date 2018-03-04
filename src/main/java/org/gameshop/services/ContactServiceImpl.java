package org.gameshop.services;

import java.util.List;

import org.gameshop.models.Contact;
import org.gameshop.repositories.ContactRepository;
import org.springframework.stereotype.Service;

@Service
public class ContactServiceImpl implements ContactService{

	
	private ContactRepository contactRepository;
	
	public ContactServiceImpl(ContactRepository contactRepository) {
		
		this.contactRepository = contactRepository;
	}



	@Override
	 public Contact addContact(Contact contact) {
		
		contactRepository.save(contact);
		
		return contact;
		
	}



	@Override
	public List<Contact> getAll() {
	
		List<Contact> contacts= (List<Contact>) contactRepository.findAll();
		
		return contacts;
	}



	@Override
	public void removeContact(Long id) {

		Contact contact = contactRepository.findById(id).orElse(null);
		
		contactRepository.delete(contact);
		
	}



	
}
