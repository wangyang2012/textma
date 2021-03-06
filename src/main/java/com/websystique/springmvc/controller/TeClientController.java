package com.websystique.springmvc.controller;

import com.websystique.springmvc.model.TeClient;
import com.websystique.springmvc.service.TeClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.List;


@Controller
@RequestMapping("/teClient")
@SessionAttributes("roles")
public class TeClientController {

	@Autowired
	TeClientService teClientService;

	@Autowired
	MessageSource messageSource;

	/**
	 * This method will list all existing users.
	 */
	@RequestMapping(value = { "/list" }, method = RequestMethod.GET)
	public String listTeClients(ModelMap model) {

		List<TeClient> clients = teClientService.findByName("");
		model.addAttribute("clients", clients);
		return "teClientList";
	}
}
