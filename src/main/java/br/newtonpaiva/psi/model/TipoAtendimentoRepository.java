/**
 * 
 */
package br.newtonpaiva.psi.model;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

/**
 * @authors Tarley Lana, Amanda Rosa, Gabriel Gabriel, Filipe Duarte, Mari Braga, Pri Romagnoli
 *
 */
@Repository
public class TipoAtendimentoRepository {
	@PersistenceContext
	private EntityManager manager;

	@SuppressWarnings("unchecked")
	public List<TipoAtendimento> listar() {
		return manager.createQuery("select ta from TipoAtendimento ta").getResultList();
	}
	
	public Map<Long, String> map() {
		List<TipoAtendimento> list = listar();
		Map<Long, String> retorno = new LinkedHashMap<>();
		
		for(TipoAtendimento t : list) {
			retorno.put(t.getCod_tipo_atendimento(), t.getDes_tipo_atendimento());
		}
		
		return retorno;
	}
	
	@SuppressWarnings("unchecked")
	public List<TipoAtendimento> listarPorDescricao(String des_tipo_atendimento) {
		return manager.createQuery("select ta from TipoAtendimento ta where ta.des_tipo_atendimento like :des_tipo_atendimento")
				.setParameter("des_tipo_atendimento", des_tipo_atendimento + "%").getResultList();
	}
	
	public void remover(TipoAtendimento tipoAtendimento) {
		manager.remove(tipoAtendimento);
	}
	
	public void remover(Long cod_tipo_atendimento) {
		TipoAtendimento tipoAtentimentoARemover = buscaPorId(cod_tipo_atendimento);
		remover(tipoAtentimentoARemover);
	}
	
	public void adiciona(TipoAtendimento tipo_atendimento) {
		manager.persist(tipo_atendimento);
	}

	public void altera(TipoAtendimento tipo_atendimento) {
		manager.merge(tipo_atendimento);
	}
	
	public TipoAtendimento buscaPorId(Long cod_tipo_atendimento) {
		return manager.find(TipoAtendimento.class, cod_tipo_atendimento);
	}
	
	
	/*public void remove(TipoAtendimento tipo_atendimento) {
		TipoAtendimento tipoARemover = buscaPorId(tipo_atendimento.getCod_tipo_atendimento());
		manager.remove(tipoARemover);
	}*/

	/*@SuppressWarnings("unchecked")
	public List<String> recuperaTodos() {
		
		//List<TipoAtendimento> tipos = manager.createQuery("SELECT e FROM TIPO_ATENDIMENTO e").getResultList();
		 TypedQuery<String> query = (TypedQuery<String>) manager.createQuery("select e.des_tipo_atendimento from TipoAtendimento e");
	     return query.getResultList();
 
	}*/

}
