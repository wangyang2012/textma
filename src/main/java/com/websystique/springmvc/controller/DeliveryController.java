package com.websystique.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping("/delivery")
@SessionAttributes("roles")
public class DeliveryController {

	@RequestMapping(value = { "/calendar" }, method = RequestMethod.GET)
	public String calendar() {
		return "delivery/calendar";
	}
}
