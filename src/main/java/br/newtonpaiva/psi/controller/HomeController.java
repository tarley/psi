package br.newtonpaiva.psi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.newtonpaiva.psi.model.UnidadeAtendimento;
import br.newtonpaiva.psi.model.UnidadeAtendimentoRepository;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	UnidadeAtendimentoRepository repository;
	
	@RequestMapping(value = "/")
	public String home(Model model) {
		List<UnidadeAtendimento> listaUnidadeAtendimento = repository.listar();
		
		model.addAttribute("listaUnidadeAtendimento", listaUnidadeAtendimento);
		
		return "home";
	}
	
	@RequestMapping(value = "/admin")
	public String adminPanel() {
		return "admin";
	}
	
}
