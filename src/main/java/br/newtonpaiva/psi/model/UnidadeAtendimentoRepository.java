/**
 * 
 */
package br.newtonpaiva.psi.model;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.management.Query;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

/**
 * @author Mari Braga
 *
 */
@Repository
public class UnidadeAtendimentoRepository implements IUnidadeAtendimentoRepository {
	@PersistenceContext
	private EntityManager manager;

	@Override
	public void adiciona(UnidadeAtendimento unidade_atendimento) {
		manager.persist(unidade_atendimento);
	}

	@Override
	public void altera(UnidadeAtendimento unidade_atendimento) {
		manager.merge(unidade_atendimento);
	}
	
	@Override
	public void remove(UnidadeAtendimento unidade_atendimento) {
		UnidadeAtendimento unidadeARemover = buscaPorId(unidade_atendimento.getCod_unidade_atendimento());
		manager.remove(unidadeARemover);
	}
	
	@Override
	public UnidadeAtendimento buscaPorId(Long id) {
		return manager.find(UnidadeAtendimento.class, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<String> recuperaTodos() {
		
		//List<UnidadeAtendimento> unidades = manager.createQuery("SELECT e FROM TIPO_ATENDIMENTO e").getResultList();
		 TypedQuery<String> query = (TypedQuery<String>) manager.createQuery("select e.nom_uni_atendimento from UnidadeAtendimento e");
	     return query.getResultList();
 
	}

}
