/**
 * 
 */
package br.newtonpaiva.psi.model;

import java.util.List;

/**
 * @author Mari Braga
 *
 */
public interface ITipoAtendimentoRepository {
	void adiciona(TipoAtendimento tipo_atendimento);
	
	void altera(TipoAtendimento tipo_atendimento);
	
	List<String> recuperaTodos ();

	void remove(TipoAtendimento tipo_atendimento);

	TipoAtendimento buscaPorId(Long id);
}
