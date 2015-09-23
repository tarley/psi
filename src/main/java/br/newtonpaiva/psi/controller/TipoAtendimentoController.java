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

import br.newtonpaiva.psi.model.ITipoAtendimentoRepository;
import br.newtonpaiva.psi.model.TipoAtendimento;

/**
 * @author Mari Braga
 *
 */
@Controller
@RequestMapping("tipoAtendimento")
public class TipoAtendimentoController {
	
	@Autowired
	ITipoAtendimentoRepository repository;
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView index() {
		//Recupera todos os tipos para exibir na lista
		List<String> tipos = repository.recuperaTodos();
		
		//Cria o model
		ModelAndView model = new ModelAndView("tipo-atendimento/listar-tipo-atendimento");
		model.addObject("lists", tipos);
		
		//Chama a página inicial Tipo de Atendimento
		return model;
	}
	
	@RequestMapping("adicionarTipoAtendimento")
	@Transactional
	public String adicionar(@Valid TipoAtendimento tipo_antendimento, BindingResult result) {

		/*if (result.hasFieldErrors("desc_tipo_atendimento")) {
			return "tipo-atendimento/tipo-atendimento";
		}*/

		repository.adiciona(tipo_antendimento);
		
		return "tipo-atendimento/listar-tipo-atendimento";
	}
	
	@RequestMapping("cadastrarTipoAtendimento")
	@Transactional
	public String cadastrar() {
		return "tipo-atendimento/tipo-atendimento";
	}
	
	@RequestMapping("alterarTipoAtendimento")
	@Transactional
	public String altera(@Valid TipoAtendimento tipo_antendimento, BindingResult result) {

		if (result.hasFieldErrors("desc_tipo_atendimento")) {
			return "tipo-atendimento/tipo-atendimento";
		}

		repository.altera(tipo_antendimento);
		
		return "tipo-atendimento/sucesso";
	}
	
	@RequestMapping("removerTipoAtendimento")
	@Transactional
	public String remove(@Valid TipoAtendimento tipo_antendimento, BindingResult result) {

		repository.remove(tipo_antendimento);
		
		return "tipo-atendimento/sucesso";
	}

}
