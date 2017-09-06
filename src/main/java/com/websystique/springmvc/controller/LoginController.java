package com.websystique.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping("/")
@SessionAttributes("roles")
public class LoginController {
//
//	@Autowired
//	UserService userService;
	
	/**
	 * This method will list all existing users.
	 */
	@RequestMapping(value = { "/login" }, method = RequestMethod.POST)
	public String login(@RequestParam String login, @RequestParam String mdp, Model model) {
		if ("admin".equals(login) && "admin".equals(mdp)) {
			return "accueil";
		}
		model.addAttribute("msgError", "Login ou mot de passe erroné!");
		return "login";
	}
}
