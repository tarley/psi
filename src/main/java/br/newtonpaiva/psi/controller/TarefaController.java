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

import br.newtonpaiva.psi.model.Tarefa;
import br.newtonpaiva.psi.model.TarefaRepository;

@Controller
@RequestMapping("tarefa")
public class TarefaController {

	@Autowired
	private TarefaRepository repository;
	
	
	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "tarefa/list";
	}

	@RequestMapping(value="/pesquisar", method = RequestMethod.GET)
	public String pesquisar(String descricao, Model model) {
		List<Tarefa> listaTarefas = repository.listarPorDescricao(descricao);
				
		model.addAttribute("filtro", descricao);
		model.addAttribute("listaTarefas", listaTarefas);
		
		return "tarefa/list";
	}
	
	@RequestMapping(value="/pesquisar/{descricao}", method = RequestMethod.GET)
	public  @ResponseBody ResponseEntity<Tarefa> pesquisarJson(@PathVariable("descricao") String descricao) {
		List<Tarefa> listaTarefas = repository.listarPorDescricao(descricao);
		
		return new ResponseEntity<Tarefa>(listaTarefas.get(0), HttpStatus.OK);
	}
	
	
	@RequestMapping(value="/remover/{id}")
	@Transactional
	public ResponseEntity<String> remover(@PathVariable("id") Long id) {
		repository.remover(id);
		return new ResponseEntity<String>("Tarefa removida com sucesso!", HttpStatus.OK); 
	}
	
	@RequestMapping("adicionarTarefa")
	@Transactional
	public String adicionar(@Valid Tarefa tarefa, BindingResult result) {

		if (result.hasFieldErrors("descricao")) {
			return "tarefa/nova";
		}

		repository.adiciona(tarefa);
		
		return "tarefa/sucesso";
	}
	
	public String listar(Model model) {
		
		return "tarefa/lista";
	}	
}
