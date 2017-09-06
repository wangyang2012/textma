package com.websystique.springmvc.model;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name="client_group")
public class ClientGroup {

	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;

	@Column(name="name")
	private String name;

	@OneToMany(cascade=CascadeType.ALL, mappedBy="group")
	private Set<Client> clients;

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

	public Set<Client> getClients() {
		return clients;
	}

	public void setClients(Set<Client> clients) {
		this.clients = clients;
	}
}
