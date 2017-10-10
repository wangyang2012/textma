package com.websystique.springmvc.controller;

import com.websystique.springmvc.model.Client;
import com.websystique.springmvc.service.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.List;


@Controller
@RequestMapping("/client")
@SessionAttributes("roles")
public class ClientController {

	@Autowired
	ClientService clientService;

	@Autowired
	MessageSource messageSource;

	/**
	 * This method will list all existing users.
	 */
	@RequestMapping(value = { "/list" }, method = RequestMethod.GET)
	public String listClients(ModelMap model) {

		List<Client> clients = clientService.findAllClients();
		model.addAttribute("clients", clients);
		return "teClientList";
	}
}
