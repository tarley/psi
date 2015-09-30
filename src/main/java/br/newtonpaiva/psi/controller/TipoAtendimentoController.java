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
import org.springframework.web.servlet.ModelAndView;

import br.newtonpaiva.psi.model.TipoAtendimento;
import br.newtonpaiva.psi.model.TipoAtendimentoRepository;

/**
 * @authors Tarley Lana, Amanda Rosa, Gabriel Gabriel, Filipe Duarte, Mari Braga, Pri Romagnoli
 *
 */
@Controller
@RequestMapping("tipoAtendimento")
public class TipoAtendimentoController {

	//FALTA O EXCLUIR FUNCIONAR
	
	
	@Autowired
	TipoAtendimentoRepository repository;
	
	@RequestMapping(method = RequestMethod.GET)
	public String index(Model model) {
		List<TipoAtendimento> listaTipoAtendimentos = repository.listar();
				
		model.addAttribute("listaTipoAtendimentos", listaTipoAtendimentos);
		
		return "tipo-atendimento/listar-tipo-atendimento";
	}
	
	@RequestMapping(value="/pesquisar", method = RequestMethod.GET)
	public String pesquisar(String des_tipo_atendimento, Model model) {
		List<TipoAtendimento> listaTipoAtendimentos = repository.listarPorDescricao(des_tipo_atendimento);
				
		model.addAttribute("filtro", des_tipo_atendimento);
		model.addAttribute("listaTipoAtendimentos", listaTipoAtendimentos);
		
		return "tipo-atendimento/listar-tipo-atendimento";
	}
	
	@RequestMapping(value="/pesquisar/{des_tipo_atendimento}", method = RequestMethod.GET)
	public  @ResponseBody ResponseEntity<TipoAtendimento> pesquisarJson(@PathVariable("des_tipo_atendimento") String des_tipo_atendimento) {
		List<TipoAtendimento> listaTipoAtendimentos = repository.listarPorDescricao(des_tipo_atendimento);
		
		return new ResponseEntity<TipoAtendimento>(listaTipoAtendimentos.get(0), HttpStatus.OK);
	}
	
	
	@RequestMapping(value="/remover/{cod_tipo_atendimento}")
	@Transactional
	public ResponseEntity<String> remover(@PathVariable("cod_tipo_atendimento") Long cod_tipo_atendimento) {
		repository.remover(cod_tipo_atendimento);
		return new ResponseEntity<String>("Tipo atendimento removido com sucesso!", HttpStatus.OK); 
	}
	
	@RequestMapping("cadastrarTipoAtendimento")
	@Transactional
	public String cadastrar() {
		return "tipo-atendimento/tipo-atendimento";
	}
	
	@RequestMapping("adicionarTipoAtendimento")
	@Transactional
	public String adicionar(@Valid TipoAtendimento tipo_antendimento, BindingResult result) {

		/*if (result.hasFieldErrors("des_tipo_atendimento")) {
			return "tipo-atendimento/tipo-atendimento";
		}*/

		repository.adiciona(tipo_antendimento);
		
		return "tipo-atendimento/listar-tipo-atendimento";
	}
	
	@RequestMapping("editarTipoAtendimento")
	@Transactional
	public String editar(Long id, Model model) {
		  model.addAttribute("tipoAtendimento", repository.buscaPorId(id));
		return "tipo-atendimento/editar-tipo-atendimento";
	}
	
	@RequestMapping("alterarTipoAtendimento")
	@Transactional
	public String altera(@Valid TipoAtendimento tipo_antendimento, BindingResult result) {

		//if (result.hasFieldErrors("des_tipo_atendimento")) {
			//return "tipo-atendimento/tipo-atendimento";
		//}

		repository.altera(tipo_antendimento);
		
		return "tipo-atendimento/listar-tipo-atendimento";
	}
	
	@RequestMapping("removerTipoAtendimento")
	@Transactional
	public String remove(@Valid TipoAtendimento tipo_antendimento, BindingResult result) {

		repository.remover(tipo_antendimento);
		
		return "tipo-atendimento/sucesso";
	}

}
