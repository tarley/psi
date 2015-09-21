/**
 * 
 */
package br.newtonpaiva.psi.model;

import java.util.List;

/**
 * @author Mari Braga
 *
 */
public interface IUnidadeAtendimentoRepository {
	void adiciona(UnidadeAtendimento unidade_atendimento);
	
	void altera(UnidadeAtendimento unidade_atendimento);
	
	List<String> recuperaTodos ();

	void remove(UnidadeAtendimento unidade_atendimento);

	UnidadeAtendimento buscaPorId(Long id);
}
