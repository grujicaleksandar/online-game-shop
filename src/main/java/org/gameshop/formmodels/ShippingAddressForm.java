package org.gameshop.formmodels;


import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;

@Component
public class ShippingAddressForm {

	@NotNull
	@Size(min=2,max=20,message="required field!")
	private String stateName;
	@NotNull
	@Size(min=2,max=20,message="required field!")
	private String cityName;
	@NotNull
	@Size(min=2,max=20,message="required field!")
	private String streetName;
	@NotNull
	@Size(min=2,max=20,message="required field!")
	private int zipCode;

	
	public String getStateName() {
		return stateName;
	}

	public void setStateName(String stateName) {
		this.stateName = stateName;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public String getStreetName() {
		return streetName;
	}

	public void setStreetName(String streetName) {
		this.streetName = streetName;
	}

	public int getZipCode() {
		return zipCode;
	}

	
	public void setZipCode(int zipCode) {
		this.zipCode = zipCode;
	}

	
	
}
