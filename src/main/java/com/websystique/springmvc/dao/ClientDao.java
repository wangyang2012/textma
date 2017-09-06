package com.websystique.springmvc.dao;

import com.websystique.springmvc.model.Client;

import java.util.List;


public interface ClientDao {

	Client findById(int id);

	Client findByName(String name);

	void save(Client client);
	
	List<Client> findAllClients();
}

