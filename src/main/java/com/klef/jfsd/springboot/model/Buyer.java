package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="buyer_table")
public class Buyer {
    @Id
    @Column(name = "buyer_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "buyer_username",nullable =false,length = 100)
    private String username;
    @Column(name = "buyer_password",nullable = false,length = 20)
    private String password;
    @Column(name = "buyer_email",nullable = false,unique = true,length = 20)
    private String email;
    @Column(name = "buyer_location",nullable = false,length = 100)
    private String location;
    @Column(name = "buyer_contactno",nullable = false,unique = true,length = 10)
    private String contactno;
    
    
    
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}


}
