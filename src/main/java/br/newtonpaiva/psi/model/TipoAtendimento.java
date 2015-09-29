/**
 * 
 */
package br.newtonpaiva.psi.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 * @authors Tarley Lana, Amanda Rosa, Gabriel Gabriel, Filipe Duarte, Mari Braga, Pri Romagnoli
 *
 */
@Entity
@Table(name="TIPO_ATENDIMENTO")
public class TipoAtendimento {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long cod_tipo_atendimento;
	
	@OneToMany(mappedBy = "tipoAtendimento")
    private List<UnidadeAtendimento> unidadeSaudeList;
	
	private String des_tipo_atendimento;

	public Long getCod_tipo_atendimento() {
		return cod_tipo_atendimento;
	}

	public void setCod_tipo_atendimento(Long cod_tipo_atendimento) {
		this.cod_tipo_atendimento = cod_tipo_atendimento;
	}

	public String getDes_tipo_atendimento() {
		return des_tipo_atendimento;
	}

	public void setDes_tipo_atendimento(String des_tipo_atendimento) {
		this.des_tipo_atendimento = des_tipo_atendimento;
	}

	
}
