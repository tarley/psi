package br.newtonpaiva.psi.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import br.newtonpaiva.psi.model.ITarefaRepository;
import br.newtonpaiva.psi.model.Tarefa;

@Controller
public class OlaMundoController {
	
	@Autowired
	private ITarefaRepository repository;
	
	@RequestMapping("/olaMundoSpring")
	public String execute() {
		System.out.println("Executando a lógica com Spring MVC");
		return "tarefa/nova";
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
}
