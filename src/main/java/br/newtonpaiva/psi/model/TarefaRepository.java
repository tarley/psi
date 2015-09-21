package br.newtonpaiva.psi.model;

import java.util.Calendar;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

@Repository
public class TarefaRepository {
	@PersistenceContext
	private EntityManager manager;

	@SuppressWarnings("unchecked")
	public List<Tarefa> listar() {
		return manager.createQuery("select t from Tarefa t").getResultList();
	}

	@SuppressWarnings("unchecked")
	public List<Tarefa> listarPorDescricao(String descricao) {
		return manager.createQuery("select t from Tarefa t where t.descricao like :descricao")
				.setParameter("descricao", descricao + "%").getResultList();
	}	
	
	public void remover(Tarefa tarefa) {
		manager.remove(tarefa);
	}
	
	public void remover(Long id) {
		Tarefa tarefaARemover = buscaPorId(id);
		remover(tarefaARemover);
	}
	
	public void adiciona(Tarefa tarefa) {
		manager.persist(tarefa);
	}

	public void altera(Tarefa tarefa) {
		manager.merge(tarefa);
	}

	
	
	public Tarefa buscaPorId(Long id) {
		return manager.find(Tarefa.class, id);
	}

	

	public void finaliza(Long id) {
		Tarefa tarefa = buscaPorId(id);
		tarefa.setFinalizado(true);
		tarefa.setDataFinalizacao(Calendar.getInstance());
		manager.merge(tarefa);
	}
}
