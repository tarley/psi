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
public class TipoAtendimentoRepository implements ITipoAtendimentoRepository {
	@PersistenceContext
	private EntityManager manager;

	@Override
	public void adiciona(TipoAtendimento tipo_atendimento) {
		manager.persist(tipo_atendimento);
	}

	@Override
	public void altera(TipoAtendimento tipo_atendimento) {
		manager.merge(tipo_atendimento);
	}
	
	@Override
	public void remove(TipoAtendimento tipo_atendimento) {
		TipoAtendimento tipoARemover = buscaPorId(tipo_atendimento.getCod_tipo_atendimento());
		manager.remove(tipoARemover);
	}
	
	@Override
	public TipoAtendimento buscaPorId(Long id) {
		return manager.find(TipoAtendimento.class, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<String> recuperaTodos() {
		
		//List<TipoAtendimento> tipos = manager.createQuery("SELECT e FROM TIPO_ATENDIMENTO e").getResultList();
		 TypedQuery<String> query = (TypedQuery<String>) manager.createQuery("select e.desc_tipo_atendimento from TipoAtendimento e");
	     return query.getResultList();
 
	}

}
