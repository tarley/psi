/**
 * 
 */
package br.newtonpaiva.psi.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 * @author Mari Braga
 *
 */
@Entity
@Table(name="UNIDADE_ATENDIMENTO")
public class UnidadeAtendimento {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long cod_unidade_atendimento;
	
//	@NotNull
//	@Size(min = 1, message="O Nome do Unidade de Atendimento deve ser preenchido.")
	private String nom_uni_atendimento;

	public Long getCod_unidade_atendimento() {
		return cod_unidade_atendimento;
	}

	public void setCod_unidade_atendimento(Long cod_unidade_atendimento) {
		this.cod_unidade_atendimento = cod_unidade_atendimento;
	}

	public String getNom_uni_atendimento() {
		return nom_uni_atendimento;
	}

	public void setNom_uni_atendimento(String nom_uni_atendimento) {
		this.nom_uni_atendimento = nom_uni_atendimento;
	}

	
}
