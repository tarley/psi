/**
 * 
 */
package br.newtonpaiva.psi.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.support.HttpRequestHandlerServlet;
import org.springframework.web.servlet.ModelAndView;

import br.newtonpaiva.psi.model.IUnidadeAtendimentoRepository;
import br.newtonpaiva.psi.model.UnidadeAtendimento;

/**
 * @author Mari Braga
 *
 */
@Controller
@RequestMapping("unidadeAtendimento")
public class UnidadeAtendimentoController {
	
	@Autowired
	IUnidadeAtendimentoRepository repository;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView index() {
		//Recupera todos os unidades para exibir na lista
		List<String> unidades = repository.recuperaTodos();
//		List<UnidadeAtendimento> unidades = new ArrayList();
		
		//Cria o model
		ModelAndView model = new ModelAndView("unidade-atendimento/listar-unidade-atendimento");
		model.addObject("lists", unidades);
		
		//Chama a página inicial Unidade de Atendimento
		return model;
	}
	
	@RequestMapping("adicionarUnidadeAtendimento")
	@Transactional
	public String adicionar(@Valid UnidadeAtendimento unidade_antendimento, BindingResult result) {

		/*if (result.hasFieldErrors("desc_unidade_atendimento")) {
			return "unidade-atendimento/unidade-atendimento";
		}*/

		repository.adiciona(unidade_antendimento);
		
		return "unidade-atendimento/listar-unidade-atendimento";
	}
	
	@RequestMapping("cadastrarUnidadeAtendimento")
	@Transactional
	public String cadastrar() {
		return "unidade-atendimento/unidade-atendimento";
	}
	
	@RequestMapping("alterarUnidadeAtendimento")
	@Transactional
	public String altera(@Valid UnidadeAtendimento unidade_antendimento, BindingResult result) {

		if (result.hasFieldErrors("desc_unidade_atendimento")) {
			return "unidade-atendimento/unidade-atendimento";
		}

		repository.altera(unidade_antendimento);
		
		return "unidade-atendimento/sucesso";
	}
	
	@RequestMapping("removerUnidadeAtendimento")
	@Transactional
	public String remove(@Valid UnidadeAtendimento unidade_antendimento, BindingResult result) {

		repository.remove(unidade_antendimento);
		
		return "unidade-atendimento/sucesso";
	}

}
