package br.newtonpaiva.psi.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.newtonpaiva.psi.model.Tarefa;
import br.newtonpaiva.psi.model.TarefaRepository;

@Controller
@RequestMapping("tarefa")
public class TarefaController {

	@Autowired
	private TarefaRepository repository;
	
	
	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "tarefa/lista";
	}

	@RequestMapping(value="/pesquisar", method = RequestMethod.GET)
	public String pesquisar(String descricao, Model model) {
		List<Tarefa> listaTarefas = repository.listarPorDescricao(descricao);
		model.addAttribute("listaTarefas", listaTarefas);
		
		return "tarefa/lista";
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
