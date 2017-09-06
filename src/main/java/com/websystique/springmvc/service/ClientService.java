package com.websystique.springmvc.service;

import com.websystique.springmvc.model.Client;

import java.util.List;


public interface ClientService {


	Client findById(int id);

	Client findByName(String name);

	void save(Client client);

	List<Client> findAllClients();

}