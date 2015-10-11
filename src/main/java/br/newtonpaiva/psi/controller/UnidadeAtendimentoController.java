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

import br.newtonpaiva.psi.model.Bairro;
import br.newtonpaiva.psi.model.BairroRepository;
import br.newtonpaiva.psi.model.Regiao;
import br.newtonpaiva.psi.model.RegiaoRepository;
import br.newtonpaiva.psi.model.Tarefa;
import br.newtonpaiva.psi.model.TipoAtendimento;
import br.newtonpaiva.psi.model.TipoAtendimentoRepository;
import br.newtonpaiva.psi.model.UnidadeAtendimento;
import br.newtonpaiva.psi.model.UnidadeAtendimentoRepository;

/**
 * @authors Tarley Lana, Amanda Rosa, Gabriel Gabriel, Filipe Duarte, Mari Braga, Pri Romagnoli
 *
 */
@Controller
@RequestMapping("unidadeAtendimento")
public class UnidadeAtendimentoController {
	
	//FALTA O EDITAR FUNCIONAR (VIR BAIRRO, REGIAO E TIPO ATENDIMENTO)
	//FALTA O EXCLUIR FUNCIONAR	
	
	@Autowired
	UnidadeAtendimentoRepository repository;
	@Autowired
	RegiaoRepository regiaoRepository;
	@Autowired
	BairroRepository bairroRepository;
	@Autowired
	TipoAtendimentoRepository tipoAtendimentoRepository;
	
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
	
	//Só deixa salvar o tipo atendimento PSICOLOGIA
	@RequestMapping("cadastrarUnidadeAtendimento")
	@Transactional
	public String cadastrar(Model model) {
		
		List<Regiao> listaRegioes = regiaoRepository.listar();
		List<Bairro> listaBairros = bairroRepository.listar();
		List<TipoAtendimento> listaTiposAtendimentos = tipoAtendimentoRepository.listar();
		
		model.addAttribute("listaRegioes", listaRegioes);
		model.addAttribute("listaBairros", listaBairros);
		model.addAttribute("listaTiposAtendimentos", listaTiposAtendimentos);
		
		return "unidade-atendimento/unidade-atendimento";
	}
	
	
	@RequestMapping("adicionarUnidadeAtendimento")
	@Transactional
	public String adicionar(@Valid UnidadeAtendimento unidade_antendimento, BindingResult result) {

		/*if (result.hasFieldErrors("desc_unidade_atendimento")) {
			return "unidade-atendimento/unidade-atendimento";
		}*/

		repository.adiciona(unidade_antendimento);
		
		return ("redirect:/unidadeAtendimento/"); 	
	}
	
	@RequestMapping("editarUnidadeAtendimento")
	@Transactional
	public String editar(Long id, Model model) 
	{
		List<Regiao> listaRegioes = regiaoRepository.listar();
		List<Bairro> listaBairros = bairroRepository.listar();
		List<TipoAtendimento> listaTiposAtendimentos = tipoAtendimentoRepository.listar();
		
		model.addAttribute("listaRegioes", listaRegioes);
		model.addAttribute("listaBairros", listaBairros);
		model.addAttribute("listaTiposAtendimentos", listaTiposAtendimentos);
		model.addAttribute("unidadeAtendimento", repository.buscaPorId(id));
		return "unidade-atendimento/editar-unidade-atendimento";
	}
	
	@RequestMapping("alterarUnidadeAtendimento")
	@Transactional
	public String altera(@Valid UnidadeAtendimento unidade_antendimento, BindingResult result) {

		if (result.hasFieldErrors("desc_unidade_atendimento")) {
			return "unidade-atendimento/unidade-atendimento";
		}

		repository.altera(unidade_antendimento);
		
		return "redirect:/unidadeAtendimento/";
	}
	
	@RequestMapping(value="/regiao/{regiao}")
	@Transactional
	public @ResponseBody ResponseEntity<Bairro> pesquisarBairroRegiao(@PathVariable("regiao") Long cod_regiao) 
	{
		List<Bairro> listarBairrosPorRegiao = repository.listarBairrosDaRegiao(cod_regiao);
		
		System.out.println(listarBairrosPorRegiao);
		
		return new ResponseEntity<Bairro>(listarBairrosPorRegiao.get(0), HttpStatus.OK);
	}
	
	@RequestMapping("removerUnidadeAtendimento")
	@Transactional
	public String remove(@Valid UnidadeAtendimento unidade_antendimento, BindingResult result) {

		repository.remover(unidade_antendimento);
		
		return "unidade-atendimento/sucesso";
	}
	
}
