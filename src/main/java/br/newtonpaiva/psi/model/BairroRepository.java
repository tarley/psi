/**
 * 
 */
package br.newtonpaiva.psi.model;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;

/**
 * @authors Tarley Lana, Amanda Rosa, Gabriel Gabriel, Filipe Duarte, Mari Braga, Pri Romagnoli
 *
 */
@Repository
public class BairroRepository {
	@PersistenceContext
	private EntityManager manager;

	@SuppressWarnings("unchecked")
	public List<Bairro> listar() 
	{
		return manager.createQuery("select b from Bairro b").getResultList();
	}
	
	@SuppressWarnings("unchecked")
	public List<Bairro> listarBairrosDaRegiao(Long cod_regiao) 
	{
		return manager.createQuery("select distinct b from Bairro b where b.regiao.cod_regiao = :cod_regiao ")
				.setParameter("cod_regiao", cod_regiao).getResultList();
	}
	
	@SuppressWarnings("unchecked")
	public List<String> listarBairrosPorTrecho(String trecho) 
	{
		return manager.createQuery("select distinct b.des_bairro from Bairro b where "
				+ "b.des_bairro like '%" + trecho + "%' ").getResultList();
	}
}
