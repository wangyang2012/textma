package com.websystique.springmvc.service;

import com.websystique.springmvc.dao.ClientDao;
import com.websystique.springmvc.model.Client;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service("clientService")
@Transactional
public class ClientServiceImpl implements ClientService{

	@Autowired
	private ClientDao dao;


	public Client findById(int id) {
		return dao.findById(id);
	}

	public Client findByName(String name) {
		return dao.findByName(name);
	}

	public void save(Client client) {
		dao.save(client);
	}

	public List<Client> findAllClients() {
		return dao.findAllClients();
	}
}
