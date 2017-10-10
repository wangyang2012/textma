package com.websystique.springmvc.dao;

import com.websystique.springmvc.model.TeClient;

import java.util.List;


public interface TeClientDao {

	TeClient findById(int id);

	List<TeClient> findByName(String name);
}

