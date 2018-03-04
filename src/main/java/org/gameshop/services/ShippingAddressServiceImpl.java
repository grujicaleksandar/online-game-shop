package org.gameshop.services;

import org.gameshop.models.ShippingAddress;
import org.gameshop.repositories.ShippingAddressRepository;
import org.springframework.stereotype.Service;
@Service
public class ShippingAddressServiceImpl implements ShippingAddressService{

	
	private ShippingAddressRepository shippingAddressRepository;
	
	public ShippingAddressServiceImpl(ShippingAddressRepository shippingAddressRepository) {
		this.shippingAddressRepository = shippingAddressRepository;
	}

	
	public ShippingAddress addAddress(ShippingAddress address) {
		
		shippingAddressRepository.save(address);
		
		return address;
	}

}
