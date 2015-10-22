/**
 * 
 */
package br.newtonpaiva.psi.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

/**
 * @authors Tarley Lana, Amanda Rosa, Gabriel Gabriel, Filipe Duarte, Mari Braga, Pri Romagnoli
 *
 */
@Repository
public class UnidadeAtendimentoRepository {
	@PersistenceContext
	private EntityManager manager;

	@SuppressWarnings("unchecked")
	public List<UnidadeAtendimento> listar() {
		return manager.createQuery("select ua from UnidadeAtendimento ua").getResultList();
	}

	@SuppressWarnings("unchecked")
	public List<UnidadeAtendimento> listar(String columns) {
		return manager.createQuery("select " + columns + " from UnidadeAtendimento ua").getResultList();
	}

	@SuppressWarnings("unchecked")
	public List<UnidadeAtendimento> listarPorDescricao(String nom_uni_atendimento) {
		return manager
				.createQuery(
						"select ua from UnidadeAtendimento ua where ua.nom_uni_atendimento like :nom_uni_atendimento")
				.setParameter("nom_uni_atendimento", nom_uni_atendimento + "%").getResultList();
	}
	
	public  void remover(UnidadeAtendimento unidadeAtendimento) {
		manager.remove(unidadeAtendimento);
	}

	public void remover(Long cod_unidade_atendimento) {
		UnidadeAtendimento unidadeAtendimentoARemover = buscaPorId(cod_unidade_atendimento);
		remover(unidadeAtendimentoARemover);
	}

	public void adiciona(UnidadeAtendimento unidade_atendimento) {
		manager.persist(unidade_atendimento);
	}

	public void altera(UnidadeAtendimento unidade_atendimento,Long cod_unidade_atendimento) 
	{
		manager.find(UnidadeAtendimento.class, cod_unidade_atendimento);
		manager.merge(unidade_atendimento);
	}

	public UnidadeAtendimento buscaPorId(Long cod_unidade_atendimento) {
		return manager.find(UnidadeAtendimento.class, cod_unidade_atendimento);
	}

	@SuppressWarnings("unchecked")
	public List<UnidadeAtendimento> listarPorRegiao(String nom_uni_atendimento) {
		List<UnidadeAtendimento> unidades;
		StringBuilder hql = new StringBuilder("select distinct regiao.cod_regiao from Bairro b ");

		if (!StringUtils.isEmpty(nom_uni_atendimento)) {
			hql.append("where b.des_bairro like :des_bairro");
		}
		Query query = manager.createQuery(hql.toString());

		if (!StringUtils.isEmpty(nom_uni_atendimento)) {
			query.setParameter("des_bairro", nom_uni_atendimento);
		}

		List<Long> regioes = (ArrayList<Long>) query.getResultList();

		if (regioes.isEmpty()) {
			return null;
		} else {
			unidades = manager
					.createQuery("select ua from UnidadeAtendimento ua where ua.regiao.cod_regiao IN (:cod_regiao)")
					.setParameter("cod_regiao", regioes).getResultList();
		}

		return unidades;
	}

	/*
	 * public void remove(UnidadeAtendimento unidade_atendimento) {
	 * UnidadeAtendimento unidadeARemover =
	 * buscaPorId(unidade_atendimento.getCod_unidade_atendimento());
	 * manager.remove(unidadeARemover); }
	 */

	/*
	 * @SuppressWarnings("unchecked") public List<String> recuperaTodos() {
	 * 
	 * //List<UnidadeAtendimento> unidades = manager.createQuery(
	 * "SELECT e FROM TIPO_ATENDIMENTO e").getResultList(); TypedQuery<String>
	 * query = (TypedQuery<String>) manager.createQuery(
	 * "select e.nom_uni_atendimento from UnidadeAtendimento e"); return
	 * query.getResultList();
	 * 
	 * }
	 */

}
