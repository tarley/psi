package br.newtonpaiva.psi.model;

import java.util.Calendar;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

@Repository
public class TarefaRepository implements ITarefaRepository {
	@PersistenceContext
	private EntityManager manager;

	/* (non-Javadoc)
	 * @see br.newtonpaiva.psi.model.ITarefaRepository#adiciona(br.newtonpaiva.psi.model.Tarefa)
	 */
	@Override
	public void adiciona(Tarefa tarefa) {
		manager.persist(tarefa);
	}

	/* (non-Javadoc)
	 * @see br.newtonpaiva.psi.model.ITarefaRepository#altera(br.newtonpaiva.psi.model.Tarefa)
	 */
	@Override
	public void altera(Tarefa tarefa) {
		manager.merge(tarefa);
	}

	/* (non-Javadoc)
	 * @see br.newtonpaiva.psi.model.ITarefaRepository#lista()
	 */
	@Override
	public List<Tarefa> lista() {
		return manager.createQuery("select t from Tarefa t").getResultList();
	}

	/* (non-Javadoc)
	 * @see br.newtonpaiva.psi.model.ITarefaRepository#buscaPorId(java.lang.Long)
	 */
	@Override
	public Tarefa buscaPorId(Long id) {
		return manager.find(Tarefa.class, id);
	}

	/* (non-Javadoc)
	 * @see br.newtonpaiva.psi.model.ITarefaRepository#remove(br.newtonpaiva.psi.model.Tarefa)
	 */
	@Override
	public void remove(Tarefa tarefa) {
		Tarefa tarefaARemover = buscaPorId(tarefa.getId());
		manager.remove(tarefaARemover);
	}

	/* (non-Javadoc)
	 * @see br.newtonpaiva.psi.model.ITarefaRepository#finaliza(java.lang.Long)
	 */
	@Override
	public void finaliza(Long id) {
		Tarefa tarefa = buscaPorId(id);
		tarefa.setFinalizado(true);
		tarefa.setDataFinalizacao(Calendar.getInstance());
		manager.merge(tarefa);
	}
}
