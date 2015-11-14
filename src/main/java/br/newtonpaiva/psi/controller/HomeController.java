package br.newtonpaiva.psi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.newtonpaiva.psi.model.BairroRepository;
import br.newtonpaiva.psi.model.UnidadeAtendimento;
import br.newtonpaiva.psi.model.UnidadeAtendimentoRepository;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	UnidadeAtendimentoRepository repository;
	@Autowired
	BairroRepository bairroRepository;
	
	@RequestMapping(value = "/")
	public String home(Model model) {
		List<UnidadeAtendimento> listaUnidadeAtendimento = repository.listar();
		
		model.addAttribute("listaUnidadeAtendimento", listaUnidadeAtendimento);
		
		return "home";
	}
	
	@RequestMapping(value = "/login")
	public String login(Model model) {
		
		System.out.print(model);
		return "login";
	}
	
	@RequestMapping(value = "/admin")
	public String adminPanel() {
		return "admin";
	}
	
	@RequestMapping(value="pesquisar", method = RequestMethod.GET)
	public String pesquisar(String descricao, Model model) {
		List<UnidadeAtendimento> listaRegioes = repository.listarPorRegiao(descricao.trim());
				
		model.addAttribute("filtro", descricao.trim());
		model.addAttribute("listaUnidadeAtendimento", listaRegioes);
		
		return "home";
	}
	
	@RequestMapping(value="fundadores", method = RequestMethod.GET)
	public String fundadores() {		
		return "fundadores/fundadores";
	}
	
	@RequestMapping(value="listarBairros", method = RequestMethod.GET)
	public List<String> listarBairrosPorTrecho(String query) {		
		List<String> bairros = bairroRepository.listarBairrosPorTrecho(query);
		
		return bairros;
	}
}
