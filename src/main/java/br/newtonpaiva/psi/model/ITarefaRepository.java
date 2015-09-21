package br.newtonpaiva.psi.model;

import java.util.List;

public interface ITarefaRepository {

	void adiciona(Tarefa tarefa);

	void altera(Tarefa tarefa);

	List<Tarefa> lista();

	Tarefa buscaPorId(Long id);

	void remove(Tarefa tarefa);

	void finaliza(Long id);
}