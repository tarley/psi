package br.newtonpaiva.psi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdministracaoController {
	@RequestMapping(value = "/admin")
	public String adminPanel() {
		return "admin";
	}
}
