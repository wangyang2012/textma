package com.websystique.springmvc.model;

import javax.persistence.*;

@Entity
@Table(name="client")
public class Client {

	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;

	@Column(name="name", nullable=false)
	private String name;

	@Column(name="telephone")
	private String telephone;

	@Column(name="email")
	private String email;

	@Column(name="address")
	private String address;

	@ManyToOne
	@JoinColumn(name="group", nullable=false)
	private ClientGroup group;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public ClientGroup getGroup() {
		return group;
	}

	public void setGroup(ClientGroup group) {
		this.group = group;
	}
}
