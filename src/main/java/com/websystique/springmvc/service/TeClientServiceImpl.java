package com.websystique.springmvc.service;

import com.websystique.springmvc.dao.TeClientDao;
import com.websystique.springmvc.model.TeClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service("teClientService")
@Transactional
public class TeClientServiceImpl implements TeClientService{

	@Autowired
	private TeClientDao dao;


	public TeClient findById(int id) {
		return dao.findById(id);
	}

	public List<TeClient> findByName(String name) {
		return dao.findByName(name);
	}

}
