package org.gameshop.formmodels;


import javax.validation.constraints.Email;
import javax.validation.constraints.Size;


public class UserForm {

	
	@Size(min = 2, max = 20, message = "Field is required!")
	private String firstName;
	
	@Size(min = 2, max = 20, message = "Field is required!")
	private String lastName;
	@Email
	@Size(min = 2, max = 20, message = "Field is required!")
	
	private String email;
	@Size(min = 2, max = 20, message = "Field is required!")
	
	private String username;
	@Size(min = 2, max = 20, message = "Field is required!")
	private String password;


	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	

}

