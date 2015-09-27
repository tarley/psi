/**
 * 
 */
package br.newtonpaiva.psi.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import br.newtonpaiva.psi.model.TipoAtendimento;
import br.newtonpaiva.psi.model.UnidadeAtendimento;
import br.newtonpaiva.psi.model.UnidadeAtendimentoRepository;

/**
 * @author Mari Braga
 *
 */
@Controller
@RequestMapping("unidadeAtendimento")
public class UnidadeAtendimentoController {
	
	//LISTAR TUDO NAO FUNCIONA (INNER-MAPEAMENTO)
	
	//FALTA O EDITAR FUNCIONAR
	//FALTA O CADASTRO FUNCIONAR
	//FALTA O EXCLUIR FUNCIONAR
	
	//FALTA APARECER O NOME DOS CODIGOS FKS
	//FALTA APARECER O NOME DOS CODIGOS FKS NO MOMENTO DE CADASTRO
	
	
	@Autowired
	UnidadeAtendimentoRepository repository;
	
	/*@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView index() {
		//Recupera todos os unidades para exibir na lista
		List<String> unidades = repository.recuperaTodos();
		
		//Cria o model
		ModelAndView model = new ModelAndView("unidade-atendimento/listar-unidade-atendimento");
		model.addObject("lists", unidades);
		
		//Chama a página inicial Unidade de Atendimento
		return model;
	}*/
	
	@RequestMapping(method = RequestMethod.GET)
	public String index(Model model) {
		List<UnidadeAtendimento> listaUnidadesAtendimento = repository.listar();
				
		model.addAttribute("listaUnidadesAtendimento", listaUnidadesAtendimento);
		
		return "unidade-atendimento/listar-unidade-atendimento";
	}

	@RequestMapping(value="/pesquisar", method = RequestMethod.GET)
	public String pesquisar(String desc_unidade_atendimento, Model model) {
		List<UnidadeAtendimento> listaUnidadesDeAtendimento = repository.listarPorDescricao(desc_unidade_atendimento);
				
		model.addAttribute("filtro", desc_unidade_atendimento);
		model.addAttribute("listaUnidadesDeAtendimento", listaUnidadesDeAtendimento);
		
		return "unidade-atendimento/listar-unidade-atendimento";
	}
	
	@RequestMapping(value="/pesquisar/{desc_unidade_atendimento}", method = RequestMethod.GET)
	public  @ResponseBody ResponseEntity<UnidadeAtendimento> pesquisarJson(@PathVariable("desc_unidade_atendimento") String desc_unidade_atendimento) {
		List<UnidadeAtendimento> listaUnidadesDeAtendimento = repository.listarPorDescricao(desc_unidade_atendimento);
		
		return new ResponseEntity<UnidadeAtendimento>(listaUnidadesDeAtendimento.get(0), HttpStatus.OK);
	}
	
	@RequestMapping(value="/remover/{cod_unidade_atendimento}")
	@Transactional
	public ResponseEntity<String> remover(@PathVariable("cod_unidade_atendimento") Long cod_unidade_atendimento) {
		repository.remover(cod_unidade_atendimento);
		return new ResponseEntity<String>("Unidade de atendimento removida com sucesso!", HttpStatus.OK); 
	}
	
	@RequestMapping("cadastrarUnidadeAtendimento")
	@Transactional
	public String cadastrar() {
		return "unidade-atendimento/unidade-atendimento";
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

		repository.remover(unidade_antendimento);
		
		return "unidade-atendimento/sucesso";
	}

}
