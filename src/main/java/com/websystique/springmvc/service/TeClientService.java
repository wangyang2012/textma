package com.websystique.springmvc.service;

import com.websystique.springmvc.model.TeClient;

import java.util.List;


public interface TeClientService {


	TeClient findById(int id);

	List<TeClient> findByName(String name);

}