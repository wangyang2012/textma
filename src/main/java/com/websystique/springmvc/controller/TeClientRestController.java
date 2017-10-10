package com.websystique.springmvc.controller;

import com.websystique.springmvc.model.TeClient;
import com.websystique.springmvc.service.TeClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@RestController
@RequestMapping("/teClientRest")
public class TeClientRestController {

	@Autowired
	TeClientService teClientService;

	@Autowired
	MessageSource messageSource;

	/**
	 * This method will list all existing users.
	 */
	@RequestMapping(method = RequestMethod.GET, produces = "application/json",headers="Accept=application/json")
	@ResponseBody
	public void listTeClients(HttpServletResponse res) {
		List<TeClient> clients = teClientService.findByName("");
		try {
			res.getWriter().println(clients);
			res.getWriter().close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
